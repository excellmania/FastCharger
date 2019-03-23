package com.google.android.a.g;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class c implements r {
    private final AssetManager a;
    private final q b;
    private String c;
    private InputStream d;
    private long e;
    private boolean f;

    public static final class a extends IOException {
        public a(IOException iOException) {
            super(iOException);
        }
    }

    public c(Context context, q qVar) {
        this.a = context.getAssets();
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
            int read = this.d.read(bArr, i, i2);
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
            this.c = hVar.a.toString();
            String path = hVar.a.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            this.c = hVar.a.toString();
            this.d = this.a.open(path, 1);
            if (this.d.skip(hVar.d) < hVar.d) {
                throw new EOFException();
            }
            if (hVar.e != -1) {
                this.e = hVar.e;
            } else {
                this.e = (long) this.d.available();
                if (this.e == 2147483647L) {
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
        return this.c;
    }

    public void b() {
        this.c = null;
        if (this.d != null) {
            try {
                this.d.close();
                this.d = null;
                if (this.f) {
                    this.f = false;
                    if (this.b != null) {
                        this.b.c();
                    }
                }
            } catch (IOException e) {
                throw new a(e);
            } catch (Throwable th) {
                this.d = null;
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
