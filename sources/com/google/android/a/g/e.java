package com.google.android.a.g;

import android.content.ContentResolver;
import android.content.Context;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e implements r {
    private final ContentResolver a;
    private final q b;
    private InputStream c;
    private String d;
    private long e;
    private boolean f;

    public static class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public e(Context context, q qVar) {
        this.a = context.getContentResolver();
        this.b = qVar;
    }

    public int a(byte[] bArr, int i, int i2) {
        if (this.e == 0) {
            return -1;
        }
        try {
            if (this.e != -1) {
                i2 = (int) Math.min(this.e, (long) i2);
            }
            int read = this.c.read(bArr, i, i2);
            if (read <= 0) {
                return read;
            }
            if (this.e != -1) {
                this.e -= (long) read;
            }
            if (this.b == null) {
                return read;
            }
            this.b.a(read);
            return read;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    public long a(h hVar) {
        try {
            this.d = hVar.a.toString();
            this.c = new FileInputStream(this.a.openAssetFileDescriptor(hVar.a, "r").getFileDescriptor());
            if (this.c.skip(hVar.d) < hVar.d) {
                throw new EOFException();
            }
            if (hVar.e != -1) {
                this.e = hVar.e;
            } else {
                this.e = (long) this.c.available();
                if (this.e == 0) {
                    this.e = -1;
                }
            }
            this.f = true;
            if (this.b != null) {
                this.b.b();
            }
            return this.e;
        } catch (IOException e) {
            throw new a(e);
        }
    }

    public String a() {
        return this.d;
    }

    public void b() {
        this.d = null;
        if (this.c != null) {
            try {
                this.c.close();
                this.c = null;
                if (this.f) {
                    this.f = false;
                    if (this.b != null) {
                        this.b.c();
                    }
                }
            } catch (IOException e) {
                throw new a(e);
            } catch (Throwable th) {
                this.c = null;
                if (this.f) {
                    this.f = false;
                    if (this.b != null) {
                        this.b.c();
                    }
                }
            }
        }
    }
}
