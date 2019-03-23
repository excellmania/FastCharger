package com.google.android.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import android.view.WindowManager;

@TargetApi(16)
public final class aa {
    private final a a;
    private final boolean b;
    private final long c;
    private final long d;
    private long e;
    private long f;
    private long g;
    private boolean h;
    private long i;
    private long j;
    private long k;

    private static final class a implements Callback, FrameCallback {
        private static final a b = new a();
        public volatile long a;
        private final Handler c;
        private final HandlerThread d = new HandlerThread("ChoreographerOwner:Handler");
        private Choreographer e;
        private int f;

        private a() {
            this.d.start();
            this.c = new Handler(this.d.getLooper(), this);
            this.c.sendEmptyMessage(0);
        }

        public static a a() {
            return b;
        }

        private void d() {
            this.e = Choreographer.getInstance();
        }

        private void e() {
            this.f++;
            if (this.f == 1) {
                this.e.postFrameCallback(this);
            }
        }

        private void f() {
            this.f--;
            if (this.f == 0) {
                this.e.removeFrameCallback(this);
                this.a = 0;
            }
        }

        public void b() {
            this.c.sendEmptyMessage(1);
        }

        public void c() {
            this.c.sendEmptyMessage(2);
        }

        public void doFrame(long j) {
            this.a = j;
            this.e.postFrameCallbackDelayed(this, 500);
        }

        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    d();
                    return true;
                case 1:
                    e();
                    return true;
                case 2:
                    f();
                    return true;
                default:
                    return false;
            }
        }
    }

    public aa() {
        this(-1.0f, false);
    }

    private aa(float f, boolean z) {
        this.b = z;
        if (z) {
            this.a = a.a();
            this.c = (long) (1.0E9d / ((double) f));
            this.d = (this.c * 80) / 100;
            return;
        }
        this.a = null;
        this.c = -1;
        this.d = -1;
    }

    public aa(Context context) {
        this(a(context), true);
    }

    private static float a(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }

    private static long a(long j, long j2, long j3) {
        long j4;
        long j5 = (((j - j2) / j3) * j3) + j2;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private boolean b(long j, long j2) {
        return Math.abs((j2 - this.i) - (j - this.j)) > 20000000;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003c  */
    public long a(long r12, long r14) {
        /*
        r11 = this;
        r8 = 0;
        r6 = 0;
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r4 = r12 * r0;
        r0 = r11.h;
        if (r0 == 0) goto L_0x0068;
    L_0x000b:
        r0 = r11.e;
        r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1));
        if (r0 == 0) goto L_0x001c;
    L_0x0011:
        r0 = r11.k;
        r2 = 1;
        r0 = r0 + r2;
        r11.k = r0;
        r0 = r11.g;
        r11.f = r0;
    L_0x001c:
        r0 = r11.k;
        r2 = 6;
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 < 0) goto L_0x0060;
    L_0x0024:
        r0 = r11.j;
        r0 = r4 - r0;
        r2 = r11.k;
        r0 = r0 / r2;
        r2 = r11.f;
        r2 = r2 + r0;
        r0 = r11.b(r2, r14);
        if (r0 == 0) goto L_0x0059;
    L_0x0034:
        r11.h = r6;
        r0 = r14;
        r2 = r4;
    L_0x0038:
        r6 = r11.h;
        if (r6 != 0) goto L_0x0048;
    L_0x003c:
        r11.j = r4;
        r11.i = r14;
        r11.k = r8;
        r4 = 1;
        r11.h = r4;
        r11.c();
    L_0x0048:
        r11.e = r12;
        r11.g = r2;
        r2 = r11.a;
        if (r2 == 0) goto L_0x0058;
    L_0x0050:
        r2 = r11.a;
        r2 = r2.a;
        r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r2 != 0) goto L_0x006b;
    L_0x0058:
        return r0;
    L_0x0059:
        r0 = r11.i;
        r0 = r0 + r2;
        r6 = r11.j;
        r0 = r0 - r6;
        goto L_0x0038;
    L_0x0060:
        r0 = r11.b(r4, r14);
        if (r0 == 0) goto L_0x0068;
    L_0x0066:
        r11.h = r6;
    L_0x0068:
        r0 = r14;
        r2 = r4;
        goto L_0x0038;
    L_0x006b:
        r2 = r11.a;
        r2 = r2.a;
        r4 = r11.c;
        r0 = a(r0, r2, r4);
        r2 = r11.d;
        r0 = r0 - r2;
        goto L_0x0058;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.aa.a(long, long):long");
    }

    public void a() {
        this.h = false;
        if (this.b) {
            this.a.b();
        }
    }

    public void b() {
        if (this.b) {
            this.a.c();
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
    }
}
