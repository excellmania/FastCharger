package com.google.android.gms.c;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.n.b;
import com.google.android.gms.common.internal.n.c;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class bf {

    static class a implements b, c {
        protected bg a;
        private final String b;
        private final String c;
        private final LinkedBlockingQueue<com.google.android.gms.c.aw.a> d;
        private final HandlerThread e = new HandlerThread("GassClient");

        public a(Context context, String str, String str2) {
            this.b = str;
            this.c = str2;
            this.e.start();
            this.a = new bg(context, this.e.getLooper(), this, this);
            this.d = new LinkedBlockingQueue();
            c();
        }

        public com.google.android.gms.c.aw.a a() {
            return b(AdError.SERVER_ERROR_CODE);
        }

        public void a(int i) {
            try {
                this.d.put(new com.google.android.gms.c.aw.a());
            } catch (InterruptedException e) {
            }
        }

        public void a(Bundle bundle) {
            bl b = b();
            if (b != null) {
                try {
                    this.d.put(b.a(new bh(this.b, this.c)).b());
                } catch (Throwable th) {
                } finally {
                    d();
                    this.e.quit();
                }
            }
        }

        public void a(com.google.android.gms.common.a aVar) {
            try {
                this.d.put(new com.google.android.gms.c.aw.a());
            } catch (InterruptedException e) {
            }
        }

        public com.google.android.gms.c.aw.a b(int i) {
            com.google.android.gms.c.aw.a aVar;
            try {
                aVar = (com.google.android.gms.c.aw.a) this.d.poll((long) i, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                aVar = null;
            }
            return aVar == null ? new com.google.android.gms.c.aw.a() : aVar;
        }

        /* Access modifiers changed, original: protected */
        public bl b() {
            try {
                return this.a.k();
            } catch (DeadObjectException | IllegalStateException e) {
                return null;
            }
        }

        /* Access modifiers changed, original: protected */
        public void c() {
            this.a.n();
        }

        public void d() {
            if (this.a == null) {
                return;
            }
            if (this.a.b() || this.a.c()) {
                this.a.a();
            }
        }
    }

    public static com.google.android.gms.c.aw.a a(Context context, String str, String str2) {
        return new a(context, str, str2).a();
    }
}
