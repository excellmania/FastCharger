package com.onesignal;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import com.onesignal.t.d;

class a {
    static boolean a;
    static Activity b;
    static c c = new c();
    private static a d;

    interface a {
        void a(Activity activity);
    }

    private static class b implements Runnable {
        private boolean a;
        private boolean b;

        private b() {
        }

        public void run() {
            if (a.b == null) {
                this.a = true;
                t.a(false);
                this.b = true;
            }
        }
    }

    static class c extends HandlerThread {
        Handler a = null;
        private b b;

        c() {
            super("FocusHandlerThread");
            start();
            this.a = new Handler(getLooper());
        }

        /* Access modifiers changed, original: 0000 */
        public void a() {
            if (this.b != null) {
                this.b.a = false;
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void a(b bVar) {
            if (this.b == null || !this.b.a || this.b.b) {
                this.b = bVar;
                this.a.removeCallbacksAndMessages(null);
                this.a.postDelayed(bVar, 2000);
            }
        }

        /* Access modifiers changed, original: 0000 */
        public void b() {
            this.a.removeCallbacksAndMessages(null);
        }

        /* Access modifiers changed, original: 0000 */
        public boolean c() {
            return this.b != null && this.b.a;
        }
    }

    private static void a() {
        t.a(d.DEBUG, "curActivity is NOW: " + (b != null ? "" + b.getClass().getName() + ":" + b : "null"));
    }

    static void a(Activity activity) {
    }

    static void a(a aVar) {
        if (b != null) {
            aVar.a(b);
            d = aVar;
            return;
        }
        d = aVar;
    }

    private static void b() {
        c.a(new b());
    }

    static void b(Activity activity) {
    }

    public static void b(a aVar) {
        d = null;
    }

    private static void c() {
        if (c.c() || a) {
            a = false;
            c.a();
            t.a();
            return;
        }
        c.b();
    }

    static void c(Activity activity) {
        g(activity);
        a();
        c();
    }

    static void d(Activity activity) {
        if (activity == b) {
            b = null;
            b();
        }
        a();
    }

    static void e(Activity activity) {
        t.a(d.DEBUG, "onActivityStopped: " + activity.getClass().getName());
        if (activity == b) {
            b = null;
            b();
        }
        a();
    }

    static void f(Activity activity) {
        t.a(d.DEBUG, "onActivityDestroyed: " + activity.getClass().getName());
        if (activity == b) {
            b = null;
            b();
        }
        a();
    }

    private static void g(Activity activity) {
        b = activity;
        if (d != null) {
            d.a(b);
        }
    }
}
