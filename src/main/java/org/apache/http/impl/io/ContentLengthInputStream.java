package org.apache.http.impl.io;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;

public class ContentLengthInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private boolean closed = false;
    private long contentLength;
    private SessionInputBuffer in = null;
    private long pos = 0;

    public ContentLengthInputStream(SessionInputBuffer sessionInputBuffer, long j) {
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        } else if (j < 0) {
            throw new IllegalArgumentException("Content length may not be negative");
        } else {
            this.in = sessionInputBuffer;
            this.contentLength = j;
        }
    }

    public int available() {
        return this.in instanceof BufferInfo ? Math.min(((BufferInfo) this.in).length(), (int) (this.contentLength - this.pos)) : 0;
    }

    public void close() {
        if (!this.closed) {
            try {
                if (this.pos < this.contentLength) {
                    do {
                    } while (read(new byte[2048]) >= 0);
                }
                this.closed = true;
            } catch (Throwable th) {
                this.closed = true;
            }
        }
    }

    public int read() {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.pos >= this.contentLength) {
            return -1;
        } else {
            int read = this.in.read();
            if (read != -1) {
                this.pos++;
            } else if (this.pos < this.contentLength) {
                throw new ConnectionClosedException(new StringBuffer().append("Premature end of Content-Length delimited message body (expected: ").append(this.contentLength).append("; received: ").append(this.pos).toString());
            }
            return read;
        }
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.pos >= this.contentLength) {
            return -1;
        } else {
            if (this.pos + ((long) i2) > this.contentLength) {
                i2 = (int) (this.contentLength - this.pos);
            }
            int read = this.in.read(bArr, i, i2);
            if (read != -1 || this.pos >= this.contentLength) {
                if (read > 0) {
                    this.pos += (long) read;
                }
                return read;
            }
            throw new ConnectionClosedException(new StringBuffer().append("Premature end of Content-Length delimited message body (expected: ").append(this.contentLength).append("; received: ").append(this.pos).toString());
        }
    }

    public long skip(long j) {
        if (j <= 0) {
            return 0;
        }
        byte[] bArr = new byte[2048];
        long min = Math.min(j, this.contentLength - this.pos);
        long j2 = 0;
        while (min > 0) {
            int read = read(bArr, 0, (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, min));
            if (read == -1) {
                break;
            }
            j2 += (long) read;
            min -= (long) read;
        }
        return j2;
    }
}
