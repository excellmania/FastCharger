package com.google.android.a.g;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class m implements r {
    private final q a;
    private RandomAccessFile b;
    private String c;
    private long d;
    private boolean e;

    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public m() {
        this(null);
    }

    public m(q qVar) {
        this.a = qVar;
    }

    public int a(byte[] bArr, int i, int i2) {
        if (this.d == 0) {
            return -1;
        }
        try {
            int read = this.b.read(bArr, i, (int) Math.min(this.d, (long) i2));
            if (read <= 0) {
                return read;
            }
            this.d -= (long) read;
            if (this.a == null) {
                return read;
            }
            this.a.a(read);
            return read;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    public long a(h hVar) {
        try {
            this.c = hVar.a.toString();
            this.b = new RandomAccessFile(hVar.a.getPath(), "r");
            this.b.seek(hVar.d);
            this.d = hVar.e == -1 ? this.b.length() - hVar.d : hVar.e;
            if (this.d < 0) {
                throw new EOFException();
            }
            this.e = true;
            if (this.a != null) {
                this.a.b();
            }
            return this.d;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    public String a() {
        return this.c;
    }

    public void b() {
        this.c = null;
        if (this.b != null) {
            try {
                this.b.close();
                this.b = null;
                if (this.e) {
                    this.e = false;
                    if (this.a != null) {
                        this.a.c();
                    }
                }
            } catch (IOException e) {
                throw new a(e);
            } catch (Throwable th) {
                this.b = null;
                if (this.e) {
                    this.e = false;
                    if (this.a != null) {
                        this.a.c();
                    }
                }
            }
        }
    }
}
