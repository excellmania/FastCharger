package com.google.android.a.g;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.a.h.v;
import com.google.android.a.h.x;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class o {
    private final ExecutorService a;
    private b b;
    private boolean c;

    public interface c {
        void f();

        boolean g();

        void h();
    }

    public interface a {
        void a(c cVar);

        void a(c cVar, IOException iOException);

        void b(c cVar);
    }

    @SuppressLint({"HandlerLeak"})
    private final class b extends Handler implements Runnable {
        private final c b;
        private final a c;
        private volatile Thread d;

        public b(Looper looper, c cVar, a aVar) {
            super(looper);
            this.b = cVar;
            this.c = aVar;
        }

        private void b() {
            o.this.c = false;
            o.this.b = null;
        }

        public void a() {
            this.b.f();
            if (this.d != null) {
                this.d.interrupt();
            }
        }

        public void handleMessage(Message message) {
            if (message.what == 2) {
                throw ((Error) message.obj);
            }
            b();
            if (this.b.g()) {
                this.c.b(this.b);
                return;
            }
            switch (message.what) {
                case 0:
                    this.c.a(this.b);
                    return;
                case 1:
                    this.c.a(this.b, (IOException) message.obj);
                    return;
                default:
                    return;
            }
        }

        public void run() {
            try {
                this.d = Thread.currentThread();
                if (!this.b.g()) {
                    v.a(this.b.getClass().getSimpleName() + ".load()");
                    this.b.h();
                    v.a();
                }
                sendEmptyMessage(0);
            } catch (IOException e) {
                obtainMessage(1, e).sendToTarget();
            } catch (InterruptedException e2) {
                com.google.android.a.h.b.b(this.b.g());
                sendEmptyMessage(0);
            } catch (Exception e3) {
                Log.e("LoadTask", "Unexpected exception loading stream", e3);
                obtainMessage(1, new d(e3)).sendToTarget();
            } catch (Error e4) {
                Log.e("LoadTask", "Unexpected error loading stream", e4);
                obtainMessage(2, e4).sendToTarget();
                throw e4;
            }
        }
    }

    public static final class d extends IOException {
        public d(Exception exception) {
            super("Unexpected " + exception.getClass().getSimpleName() + ": " + exception.getMessage(), exception);
        }
    }

    public o(String str) {
        this.a = x.a(str);
    }

    public void a(Looper looper, c cVar, a aVar) {
        com.google.android.a.h.b.b(!this.c);
        this.c = true;
        this.b = new b(looper, cVar, aVar);
        this.a.submit(this.b);
    }

    public void a(c cVar, a aVar) {
        Looper myLooper = Looper.myLooper();
        com.google.android.a.h.b.b(myLooper != null);
        a(myLooper, cVar, aVar);
    }

    public boolean a() {
        return this.c;
    }

    public void b() {
        com.google.android.a.h.b.b(this.c);
        this.b.a();
    }

    public void c() {
        if (this.c) {
            b();
        }
        this.a.shutdown();
    }
}
