package org.apache.http.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class EofSensorInputStream extends InputStream implements ConnectionReleaseTrigger {
    private final EofSensorWatcher eofWatcher;
    private boolean selfClosed;
    protected InputStream wrappedStream;

    public EofSensorInputStream(InputStream inputStream, EofSensorWatcher eofSensorWatcher) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Wrapped stream may not be null.");
        }
        this.wrappedStream = inputStream;
        this.selfClosed = false;
        this.eofWatcher = eofSensorWatcher;
    }

    public void abortConnection() {
        this.selfClosed = true;
        checkAbort();
    }

    public int available() {
        if (!isReadAllowed()) {
            return 0;
        }
        try {
            return this.wrappedStream.available();
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    /* Access modifiers changed, original: protected */
    public void checkAbort() {
        if (this.wrappedStream != null) {
            boolean z = true;
            try {
                if (this.eofWatcher != null) {
                    z = this.eofWatcher.streamAbort(this.wrappedStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
                this.wrappedStream = null;
            } catch (Throwable th) {
                this.wrappedStream = null;
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void checkClose() {
        if (this.wrappedStream != null) {
            boolean z = true;
            try {
                if (this.eofWatcher != null) {
                    z = this.eofWatcher.streamClosed(this.wrappedStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
                this.wrappedStream = null;
            } catch (Throwable th) {
                this.wrappedStream = null;
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void checkEOF(int i) {
        if (this.wrappedStream != null && i < 0) {
            boolean z = true;
            try {
                if (this.eofWatcher != null) {
                    z = this.eofWatcher.eofDetected(this.wrappedStream);
                }
                if (z) {
                    this.wrappedStream.close();
                }
                this.wrappedStream = null;
            } catch (Throwable th) {
                this.wrappedStream = null;
            }
        }
    }

    public void close() {
        this.selfClosed = true;
        checkClose();
    }

    /* Access modifiers changed, original: protected */
    public boolean isReadAllowed() {
        if (!this.selfClosed) {
            return this.wrappedStream != null;
        } else {
            throw new IOException("Attempted read on closed stream.");
        }
    }

    public int read() {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read();
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    public int read(byte[] bArr) {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read(bArr);
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    public int read(byte[] bArr, int i, int i2) {
        if (!isReadAllowed()) {
            return -1;
        }
        try {
            int read = this.wrappedStream.read(bArr, i, i2);
            checkEOF(read);
            return read;
        } catch (IOException e) {
            checkAbort();
            throw e;
        }
    }

    public void releaseConnection() {
        close();
    }
}
