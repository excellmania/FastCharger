package com.google.android.a.g;

import com.google.android.a.h.b;
import java.io.InputStream;

public final class g extends InputStream {
    private final f a;
    private final h b;
    private final byte[] c;
    private boolean d = false;
    private boolean e = false;

    public g(f fVar, h hVar) {
        this.a = fVar;
        this.b = hVar;
        this.c = new byte[1];
    }

    private void b() {
        if (!this.d) {
            this.a.a(this.b);
            this.d = true;
        }
    }

    public void a() {
        b();
    }

    public void close() {
        if (!this.e) {
            this.a.b();
            this.e = true;
        }
    }

    public int read() {
        return read(this.c) == -1 ? -1 : this.c[0] & 255;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        b.b(!this.e);
        b();
        return this.a.a(bArr, i, i2);
    }

    public long skip(long j) {
        b.b(!this.e);
        b();
        return super.skip(j);
    }
}
