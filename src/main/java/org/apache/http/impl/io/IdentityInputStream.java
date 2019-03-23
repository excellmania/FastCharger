package org.apache.http.impl.io;

import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;

public class IdentityInputStream extends InputStream {
    private boolean closed = false;
    private final SessionInputBuffer in;

    public IdentityInputStream(SessionInputBuffer sessionInputBuffer) {
        if (sessionInputBuffer == null) {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        this.in = sessionInputBuffer;
    }

    public int available() {
        return this.in instanceof BufferInfo ? ((BufferInfo) this.in).length() : 0;
    }

    public void close() {
        this.closed = true;
    }

    public int read() {
        return this.closed ? -1 : this.in.read();
    }

    public int read(byte[] bArr, int i, int i2) {
        return this.closed ? -1 : this.in.read(bArr, i, i2);
    }
}
