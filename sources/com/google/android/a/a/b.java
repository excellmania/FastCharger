package com.google.android.a.a;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.a.h.x;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import org.apache.http.HttpStatus;

public final class b {
    public static boolean a = false;
    public static boolean b = false;
    private int A;
    private int B;
    private long C;
    private long D;
    private long E;
    private float F;
    private byte[] G;
    private int H;
    private int I;
    private ByteBuffer J;
    private boolean K;
    private final a c;
    private final int d;
    private final ConditionVariable e;
    private final long[] f;
    private final a g;
    private AudioTrack h;
    private AudioTrack i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private int o;
    private int p;
    private long q;
    private int r;
    private int s;
    private long t;
    private long u;
    private boolean v;
    private long w;
    private Method x;
    private long y;
    private long z;

    private static class a {
        protected AudioTrack a;
        private boolean b;
        private int c;
        private long d;
        private long e;
        private long f;
        private long g;
        private long h;
        private long i;

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a() {
            if (this.g == -1) {
                this.a.pause();
            }
        }

        public void a(long j) {
            this.h = b();
            this.g = SystemClock.elapsedRealtime() * 1000;
            this.i = j;
            this.a.stop();
        }

        public void a(AudioTrack audioTrack, boolean z) {
            this.a = audioTrack;
            this.b = z;
            this.g = -1;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            if (audioTrack != null) {
                this.c = audioTrack.getSampleRate();
            }
        }

        public void a(PlaybackParams playbackParams) {
            throw new UnsupportedOperationException();
        }

        public long b() {
            if (this.g != -1) {
                return Math.min(this.i, ((((SystemClock.elapsedRealtime() * 1000) - this.g) * ((long) this.c)) / 1000000) + this.h);
            }
            int playState = this.a.getPlayState();
            if (playState == 1) {
                return 0;
            }
            long playbackHeadPosition = 4294967295L & ((long) this.a.getPlaybackHeadPosition());
            if (this.b) {
                if (playState == 2 && playbackHeadPosition == 0) {
                    this.f = this.d;
                }
                playbackHeadPosition += this.f;
            }
            if (this.d > playbackHeadPosition) {
                this.e++;
            }
            this.d = playbackHeadPosition;
            return playbackHeadPosition + (this.e << 32);
        }

        public long c() {
            return (b() * 1000000) / ((long) this.c);
        }

        public boolean d() {
            return false;
        }

        public long e() {
            throw new UnsupportedOperationException();
        }

        public long f() {
            throw new UnsupportedOperationException();
        }

        public float g() {
            return 1.0f;
        }
    }

    @TargetApi(19)
    private static class b extends a {
        private final AudioTimestamp b = new AudioTimestamp();
        private long c;
        private long d;
        private long e;

        public b() {
            super();
        }

        public void a(AudioTrack audioTrack, boolean z) {
            super.a(audioTrack, z);
            this.c = 0;
            this.d = 0;
            this.e = 0;
        }

        public boolean d() {
            boolean timestamp = this.a.getTimestamp(this.b);
            if (timestamp) {
                long j = this.b.framePosition;
                if (this.d > j) {
                    this.c++;
                }
                this.d = j;
                this.e = j + (this.c << 32);
            }
            return timestamp;
        }

        public long e() {
            return this.b.nanoTime;
        }

        public long f() {
            return this.e;
        }
    }

    @TargetApi(23)
    private static class c extends b {
        private PlaybackParams b;
        private float c = 1.0f;

        private void h() {
            if (this.a != null && this.b != null) {
                this.a.setPlaybackParams(this.b);
            }
        }

        public void a(AudioTrack audioTrack, boolean z) {
            super.a(audioTrack, z);
            h();
        }

        public void a(PlaybackParams playbackParams) {
            if (playbackParams == null) {
                playbackParams = new PlaybackParams();
            }
            PlaybackParams allowDefaults = playbackParams.allowDefaults();
            this.b = allowDefaults;
            this.c = allowDefaults.getSpeed();
            h();
        }

        public float g() {
            return this.c;
        }
    }

    public static final class d extends Exception {
        public final int a;

        public d(int i, int i2, int i3, int i4) {
            super("AudioTrack init failed: " + i + ", Config(" + i2 + ", " + i3 + ", " + i4 + ")");
            this.a = i;
        }
    }

    public static final class e extends RuntimeException {
        public e(String str) {
            super(str);
        }
    }

    public static final class f extends Exception {
        public final int a;

        public f(int i) {
            super("AudioTrack write failed: " + i);
            this.a = i;
        }
    }

    public b() {
        this(null, 3);
    }

    public b(a aVar, int i) {
        this.c = aVar;
        this.d = i;
        this.e = new ConditionVariable(true);
        if (x.a >= 18) {
            try {
                this.x = AudioTrack.class.getMethod("getLatency", (Class[]) null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (x.a >= 23) {
            this.g = new c();
        } else if (x.a >= 19) {
            this.g = new b();
        } else {
            this.g = new a();
        }
        this.f = new long[10];
        this.F = 1.0f;
        this.B = 0;
    }

    private static int a(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return com.google.android.a.h.e.a(byteBuffer);
        }
        if (i == 5) {
            return com.google.android.a.h.a.a();
        }
        if (i == 6) {
            return com.google.android.a.h.a.a(byteBuffer);
        }
        throw new IllegalStateException("Unexpected audio encoding: " + i);
    }

    @TargetApi(21)
    private static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    private long a(long j) {
        return j / ((long) this.o);
    }

    private static java.nio.ByteBuffer a(java.nio.ByteBuffer r3, int r4, int r5, int r6, java.nio.ByteBuffer r7) {
        /*
        r2 = 0;
        switch(r6) {
            case -2147483648: goto L_0x0029;
            case 3: goto L_0x000a;
            case 1073741824: goto L_0x002e;
            default: goto L_0x0004;
        };
    L_0x0004:
        r0 = new java.lang.IllegalStateException;
        r0.<init>();
        throw r0;
    L_0x000a:
        r0 = r5 * 2;
    L_0x000c:
        if (r7 == 0) goto L_0x0014;
    L_0x000e:
        r1 = r7.capacity();
        if (r1 >= r0) goto L_0x0018;
    L_0x0014:
        r7 = java.nio.ByteBuffer.allocateDirect(r0);
    L_0x0018:
        r7.position(r2);
        r7.limit(r0);
        r0 = r4 + r5;
        switch(r6) {
            case -2147483648: goto L_0x0045;
            case 3: goto L_0x0031;
            case 1073741824: goto L_0x005c;
            default: goto L_0x0023;
        };
    L_0x0023:
        r0 = new java.lang.IllegalStateException;
        r0.<init>();
        throw r0;
    L_0x0029:
        r0 = r5 / 3;
        r0 = r0 * 2;
        goto L_0x000c;
    L_0x002e:
        r0 = r5 / 2;
        goto L_0x000c;
    L_0x0031:
        if (r4 >= r0) goto L_0x0073;
    L_0x0033:
        r7.put(r2);
        r1 = r3.get(r4);
        r1 = r1 & 255;
        r1 = r1 + -128;
        r1 = (byte) r1;
        r7.put(r1);
        r4 = r4 + 1;
        goto L_0x0031;
    L_0x0045:
        if (r4 >= r0) goto L_0x0073;
    L_0x0047:
        r1 = r4 + 1;
        r1 = r3.get(r1);
        r7.put(r1);
        r1 = r4 + 2;
        r1 = r3.get(r1);
        r7.put(r1);
        r4 = r4 + 3;
        goto L_0x0045;
    L_0x005c:
        if (r4 >= r0) goto L_0x0073;
    L_0x005e:
        r1 = r4 + 2;
        r1 = r3.get(r1);
        r7.put(r1);
        r1 = r4 + 3;
        r1 = r3.get(r1);
        r7.put(r1);
        r4 = r4 + 4;
        goto L_0x005c;
    L_0x0073:
        r7.position(r2);
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.a.a.b.a(java.nio.ByteBuffer, int, int, int, java.nio.ByteBuffer):java.nio.ByteBuffer");
    }

    @TargetApi(21)
    private static void a(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    private static int b(String str) {
        int i = -1;
        switch (str.hashCode()) {
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    i = 2;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    i = 0;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    i = 1;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    i = 3;
                    break;
                }
                break;
        }
        switch (i) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 7;
            case 3:
                return 8;
            default:
                return 0;
        }
    }

    private long b(long j) {
        return (1000000 * j) / ((long) this.j);
    }

    private static void b(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private long c(long j) {
        return (((long) this.j) * j) / 1000000;
    }

    private void l() {
        if (!a()) {
            return;
        }
        if (x.a >= 21) {
            a(this.i, this.F);
        } else {
            b(this.i, this.F);
        }
    }

    private void m() {
        if (this.h != null) {
            final AudioTrack audioTrack = this.h;
            this.h = null;
            new Thread() {
                public void run() {
                    audioTrack.release();
                }
            }.start();
        }
    }

    private boolean n() {
        return a() && this.B != 0;
    }

    private void o() {
        long c = this.g.c();
        if (c != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.u >= 30000) {
                this.f[this.r] = c - nanoTime;
                this.r = (this.r + 1) % 10;
                if (this.s < 10) {
                    this.s++;
                }
                this.u = nanoTime;
                this.t = 0;
                for (int i = 0; i < this.s; i++) {
                    this.t += this.f[i] / ((long) this.s);
                }
            }
            if (!s() && nanoTime - this.w >= 500000) {
                this.v = this.g.d();
                if (this.v) {
                    long e = this.g.e() / 1000;
                    long f = this.g.f();
                    String str;
                    if (e < this.D) {
                        this.v = false;
                    } else if (Math.abs(e - nanoTime) > 5000000) {
                        str = "Spurious audio timestamp (system clock mismatch): " + f + ", " + e + ", " + nanoTime + ", " + c;
                        if (b) {
                            throw new e(str);
                        }
                        Log.w("AudioTrack", str);
                        this.v = false;
                    } else if (Math.abs(b(f) - c) > 5000000) {
                        str = "Spurious audio timestamp (frame position mismatch): " + f + ", " + e + ", " + nanoTime + ", " + c;
                        if (b) {
                            throw new e(str);
                        }
                        Log.w("AudioTrack", str);
                        this.v = false;
                    }
                }
                if (!(this.x == null || this.n)) {
                    try {
                        this.E = (((long) ((Integer) this.x.invoke(this.i, (Object[]) null)).intValue()) * 1000) - this.q;
                        this.E = Math.max(this.E, 0);
                        if (this.E > 5000000) {
                            Log.w("AudioTrack", "Ignoring impossibly large audio latency: " + this.E);
                            this.E = 0;
                        }
                    } catch (Exception e2) {
                        this.x = null;
                    }
                }
                this.w = nanoTime;
            }
        }
    }

    private void p() {
        int state = this.i.getState();
        if (state != 1) {
            try {
                this.i.release();
            } catch (Exception e) {
            } finally {
                this.i = null;
            }
            throw new d(state, this.j, this.k, this.p);
        }
    }

    private long q() {
        return this.n ? this.z : a(this.y);
    }

    private void r() {
        this.t = 0;
        this.s = 0;
        this.r = 0;
        this.u = 0;
        this.v = false;
        this.w = 0;
    }

    private boolean s() {
        return x.a < 23 && (this.m == 5 || this.m == 6);
    }

    private boolean t() {
        return s() && this.i.getPlayState() == 2 && this.i.getPlaybackHeadPosition() == 0;
    }

    public int a(int i) {
        this.e.block();
        if (i == 0) {
            this.i = new AudioTrack(this.d, this.j, this.k, this.m, this.p, 1);
        } else {
            this.i = new AudioTrack(this.d, this.j, this.k, this.m, this.p, 1, i);
        }
        p();
        int audioSessionId = this.i.getAudioSessionId();
        if (a && x.a < 21) {
            if (!(this.h == null || audioSessionId == this.h.getAudioSessionId())) {
                m();
            }
            if (this.h == null) {
                this.h = new AudioTrack(this.d, 4000, 4, 2, 2, 0, audioSessionId);
            }
        }
        this.g.a(this.i, s());
        l();
        return audioSessionId;
    }

    public int a(ByteBuffer byteBuffer, int i, int i2, long j) {
        if (i2 == 0) {
            return 2;
        }
        int i3;
        if (s()) {
            if (this.i.getPlayState() == 2) {
                return 0;
            }
            if (this.i.getPlayState() == 1 && this.g.b() != 0) {
                return 0;
            }
        }
        if (this.I == 0) {
            this.K = this.m != this.l;
            if (this.K) {
                com.google.android.a.h.b.b(this.m == 2);
                this.J = a(byteBuffer, i, i2, this.l, this.J);
                byteBuffer = this.J;
                i = this.J.position();
                i2 = this.J.limit();
            }
            this.I = i2;
            byteBuffer.position(i);
            if (this.n && this.A == 0) {
                this.A = a(this.m, byteBuffer);
            }
            if (this.B == 0) {
                this.C = Math.max(0, j);
                this.B = 1;
                i3 = 0;
            } else {
                long b = this.C + b(q());
                if (this.B == 1 && Math.abs(b - j) > 200000) {
                    Log.e("AudioTrack", "Discontinuity detected [expected " + b + ", got " + j + "]");
                    this.B = 2;
                }
                if (this.B == 2) {
                    this.C += j - b;
                    this.B = 1;
                    i3 = 1;
                } else {
                    i3 = 0;
                }
            }
            if (x.a < 21) {
                if (this.G == null || this.G.length < i2) {
                    this.G = new byte[i2];
                }
                byteBuffer.get(this.G, 0, i2);
                this.H = 0;
            }
        } else {
            i3 = 0;
        }
        int i4 = 0;
        if (x.a < 21) {
            int b2 = this.p - ((int) (this.y - (this.g.b() * ((long) this.o))));
            if (b2 > 0) {
                i4 = this.i.write(this.G, this.H, Math.min(this.I, b2));
                if (i4 >= 0) {
                    this.H += i4;
                }
            }
        } else {
            if (this.K) {
                byteBuffer = this.J;
            }
            i4 = a(this.i, byteBuffer, this.I);
        }
        if (i4 < 0) {
            throw new f(i4);
        }
        this.I -= i4;
        if (!this.n) {
            this.y += (long) i4;
        }
        if (this.I != 0) {
            return i3;
        }
        if (this.n) {
            this.z += (long) this.A;
        }
        return i3 | 2;
    }

    public long a(boolean z) {
        if (!n()) {
            return Long.MIN_VALUE;
        }
        if (this.i.getPlayState() == 3) {
            o();
        }
        long nanoTime = System.nanoTime() / 1000;
        if (this.v) {
            return b(c((long) (((float) (nanoTime - (this.g.e() / 1000))) * this.g.g())) + this.g.f()) + this.C;
        }
        nanoTime = this.s == 0 ? this.g.c() + this.C : (nanoTime + this.t) + this.C;
        return !z ? nanoTime - this.E : nanoTime;
    }

    public void a(float f) {
        if (this.F != f) {
            this.F = f;
            l();
        }
    }

    public void a(PlaybackParams playbackParams) {
        this.g.a(playbackParams);
    }

    public void a(String str, int i, int i2, int i3) {
        a(str, i, i2, i3, 0);
    }

    public void a(String str, int i, int i2, int i3, int i4) {
        int i5;
        switch (i) {
            case 1:
                i5 = 4;
                break;
            case 2:
                i5 = 12;
                break;
            case 3:
                i5 = 28;
                break;
            case 4:
                i5 = HttpStatus.SC_NO_CONTENT;
                break;
            case 5:
                i5 = 220;
                break;
            case 6:
                i5 = 252;
                break;
            case 7:
                i5 = 1276;
                break;
            case 8:
                i5 = com.google.android.a.b.a;
                break;
            default:
                throw new IllegalArgumentException("Unsupported channel count: " + i);
        }
        boolean z = !"audio/raw".equals(str);
        if (z) {
            i3 = b(str);
        } else if (!(i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824)) {
            throw new IllegalArgumentException("Unsupported PCM encoding: " + i3);
        }
        if (!a() || this.l != i3 || this.j != i2 || this.k != i5) {
            j();
            this.l = i3;
            this.n = z;
            this.j = i2;
            this.k = i5;
            if (!z) {
                i3 = 2;
            }
            this.m = i3;
            this.o = i * 2;
            if (i4 != 0) {
                this.p = i4;
            } else if (!z) {
                int minBufferSize = AudioTrack.getMinBufferSize(i2, i5, this.m);
                com.google.android.a.h.b.b(minBufferSize != -2);
                int i6 = minBufferSize * 4;
                i5 = ((int) c(250000)) * this.o;
                minBufferSize = (int) Math.max((long) minBufferSize, c(750000) * ((long) this.o));
                if (i6 >= i5) {
                    i5 = i6 > minBufferSize ? minBufferSize : i6;
                }
                this.p = i5;
            } else if (this.m == 5 || this.m == 6) {
                this.p = 20480;
            } else {
                this.p = 49152;
            }
            this.q = z ? -1 : b(a((long) this.p));
        }
    }

    public boolean a() {
        return this.i != null;
    }

    public boolean a(String str) {
        return this.c != null && this.c.a(b(str));
    }

    public int b() {
        return a(0);
    }

    public int c() {
        return this.p;
    }

    public long d() {
        return this.q;
    }

    public void e() {
        if (a()) {
            this.D = System.nanoTime() / 1000;
            this.i.play();
        }
    }

    public void f() {
        if (this.B == 1) {
            this.B = 2;
        }
    }

    public void g() {
        if (a()) {
            this.g.a(q());
        }
    }

    public boolean h() {
        return a() && (q() > this.g.b() || t());
    }

    public void i() {
        if (a()) {
            r();
            this.g.a();
        }
    }

    public void j() {
        if (a()) {
            this.y = 0;
            this.z = 0;
            this.A = 0;
            this.I = 0;
            this.B = 0;
            this.E = 0;
            r();
            if (this.i.getPlayState() == 3) {
                this.i.pause();
            }
            final AudioTrack audioTrack = this.i;
            this.i = null;
            this.g.a(null, false);
            this.e.close();
            new Thread() {
                public void run() {
                    try {
                        audioTrack.flush();
                        audioTrack.release();
                    } finally {
                        b.this.e.open();
                    }
                }
            }.start();
        }
    }

    public void k() {
        j();
        m();
    }
}
