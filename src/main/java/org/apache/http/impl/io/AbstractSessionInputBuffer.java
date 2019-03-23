package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

public abstract class AbstractSessionInputBuffer implements BufferInfo, SessionInputBuffer {
    private boolean ascii = true;
    private byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private String charset = "US-ASCII";
    private InputStream instream;
    private ByteArrayBuffer linebuffer = null;
    private int maxLineLen = -1;
    private HttpTransportMetricsImpl metrics;
    private int minChunkLimit = 512;

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
                this.linebuffer.setLength(length);
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                this.linebuffer.setLength(length - 1);
            }
        }
        length = this.linebuffer.length();
        if (this.ascii) {
            charArrayBuffer.append(this.linebuffer, 0, length);
        } else {
            String str = new String(this.linebuffer.buffer(), 0, length, this.charset);
            length = str.length();
            charArrayBuffer.append(str);
        }
        this.linebuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i) {
        int i2 = this.bufferpos;
        this.bufferpos = i + 1;
        if (i > 0 && this.buffer[i - 1] == (byte) 13) {
            i--;
        }
        int i3 = i - i2;
        if (this.ascii) {
            charArrayBuffer.append(this.buffer, i2, i3);
            return i3;
        }
        String str = new String(this.buffer, i2, i3, this.charset);
        charArrayBuffer.append(str);
        return str.length();
    }

    private int locateLF() {
        for (int i = this.bufferpos; i < this.bufferlen; i++) {
            if (this.buffer[i] == (byte) 10) {
                return i;
            }
        }
        return -1;
    }

    public int available() {
        return capacity() - length();
    }

    public int capacity() {
        return this.buffer.length;
    }

    /* Access modifiers changed, original: protected */
    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    /* Access modifiers changed, original: protected */
    public int fillBuffer() {
        int i;
        if (this.bufferpos > 0) {
            i = this.bufferlen - this.bufferpos;
            if (i > 0) {
                System.arraycopy(this.buffer, this.bufferpos, this.buffer, 0, i);
            }
            this.bufferpos = 0;
            this.bufferlen = i;
        }
        int i2 = this.bufferlen;
        i = this.instream.read(this.buffer, i2, this.buffer.length - i2);
        if (i == -1) {
            return -1;
        }
        this.bufferlen = i2 + i;
        this.metrics.incrementBytesTransferred((long) i);
        return i;
    }

    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    /* Access modifiers changed, original: protected */
    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    /* Access modifiers changed, original: protected */
    public void init(InputStream inputStream, int i, HttpParams httpParams) {
        boolean z = false;
        if (inputStream == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        } else if (i <= 0) {
            throw new IllegalArgumentException("Buffer size may not be negative or zero");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else {
            this.instream = inputStream;
            this.buffer = new byte[i];
            this.bufferpos = 0;
            this.bufferlen = 0;
            this.linebuffer = new ByteArrayBuffer(i);
            this.charset = HttpProtocolParams.getHttpElementCharset(httpParams);
            if (this.charset.equalsIgnoreCase("US-ASCII") || this.charset.equalsIgnoreCase(HTTP.ASCII)) {
                z = true;
            }
            this.ascii = z;
            this.maxLineLen = httpParams.getIntParameter(CoreConnectionPNames.MAX_LINE_LENGTH, -1);
            this.minChunkLimit = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, 512);
            this.metrics = createTransportMetrics();
        }
    }

    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    public int read() {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i = this.bufferpos;
        this.bufferpos = i + 1;
        return bArr[i] & 255;
    }

    public int read(byte[] bArr) {
        return bArr == null ? 0 : read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 0;
        }
        int min;
        if (hasBufferedData()) {
            min = Math.min(i2, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i, min);
            this.bufferpos += min;
            return min;
        } else if (i2 > this.minChunkLimit) {
            min = this.instream.read(bArr, i, i2);
            if (min <= 0) {
                return min;
            }
            this.metrics.incrementBytesTransferred((long) min);
            return min;
        } else {
            while (!hasBufferedData()) {
                if (fillBuffer() == -1) {
                    return -1;
                }
            }
            min = Math.min(i2, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i, min);
            this.bufferpos += min;
            return min;
        }
    }

    public int readLine(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        Object obj = 1;
        int i = 0;
        while (obj != null) {
            int locateLF = locateLF();
            if (locateLF == -1) {
                if (hasBufferedData()) {
                    this.linebuffer.append(this.buffer, this.bufferpos, this.bufferlen - this.bufferpos);
                    this.bufferpos = this.bufferlen;
                }
                i = fillBuffer();
                if (i == -1) {
                    obj = null;
                }
            } else if (this.linebuffer.isEmpty()) {
                return lineFromReadBuffer(charArrayBuffer, locateLF);
            } else {
                this.linebuffer.append(this.buffer, this.bufferpos, (locateLF + 1) - this.bufferpos);
                this.bufferpos = locateLF + 1;
                obj = null;
            }
            if (this.maxLineLen > 0 && this.linebuffer.length() >= this.maxLineLen) {
                throw new IOException("Maximum line length limit exceeded");
            }
        }
        return (i == -1 && this.linebuffer.isEmpty()) ? -1 : lineFromLineBuffer(charArrayBuffer);
    }

    public String readLine() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        return readLine(charArrayBuffer) != -1 ? charArrayBuffer.toString() : null;
    }
}
