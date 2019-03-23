package com.google.android.a;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.CodecException;
import android.media.MediaCodec.CryptoException;
import android.media.MediaCodec.CryptoInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.a.h.m;
import com.google.android.a.h.v;
import com.google.android.a.h.x;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
public abstract class o extends w {
    private boolean A;
    private int B;
    private int C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    public final c a;
    protected final Handler b;
    private final n c;
    private final com.google.android.a.d.b d;
    private final boolean e;
    private final u f;
    private final s g;
    private final List<Long> h;
    private final BufferInfo i;
    private final b j;
    private final boolean k;
    private r l;
    private com.google.android.a.d.a m;
    private MediaCodec n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private ByteBuffer[] u;
    private ByteBuffer[] v;
    private long w;
    private int x;
    private int y;
    private boolean z;

    public interface b {
        void onCryptoError(CryptoException cryptoException);

        void onDecoderInitializationError(a aVar);

        void onDecoderInitialized(String str, long j, long j2);
    }

    public static class a extends Exception {
        public final String a;
        public final boolean b;
        public final String c;
        public final String d;

        public a(r rVar, Throwable th, boolean z, int i) {
            super("Decoder init failed: [" + i + "], " + rVar, th);
            this.a = rVar.b;
            this.b = z;
            this.c = null;
            this.d = a(i);
        }

        public a(r rVar, Throwable th, boolean z, String str) {
            super("Decoder init failed: " + str + ", " + rVar, th);
            this.a = rVar.b;
            this.b = z;
            this.c = str;
            this.d = x.a >= 21 ? a(th) : null;
        }

        private static String a(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }

        @TargetApi(21)
        private static String a(Throwable th) {
            return th instanceof CodecException ? ((CodecException) th).getDiagnosticInfo() : null;
        }
    }

    public o(v vVar, n nVar, com.google.android.a.d.b bVar, boolean z, Handler handler, b bVar2) {
        this(new v[]{vVar}, nVar, bVar, z, handler, bVar2);
    }

    public o(v[] vVarArr, n nVar, com.google.android.a.d.b bVar, boolean z, Handler handler, b bVar2) {
        super(vVarArr);
        com.google.android.a.h.b.b(x.a >= 16);
        this.c = (n) com.google.android.a.h.b.a((Object) nVar);
        this.d = bVar;
        this.e = z;
        this.b = handler;
        this.j = bVar2;
        this.k = B();
        this.a = new c();
        this.f = new u(0);
        this.g = new s();
        this.h = new ArrayList();
        this.i = new BufferInfo();
        this.B = 0;
        this.C = 0;
    }

    private void A() {
        if (this.C == 2) {
            m();
            j();
            return;
        }
        this.H = true;
        h();
    }

    private static boolean B() {
        return x.a <= 22 && "foster".equals(x.b) && "NVIDIA".equals(x.c);
    }

    private static CryptoInfo a(u uVar, int i) {
        CryptoInfo a = uVar.a.a();
        if (i != 0) {
            if (a.numBytesOfClearData == null) {
                a.numBytesOfClearData = new int[1];
            }
            int[] iArr = a.numBytesOfClearData;
            iArr[0] = iArr[0] + i;
        }
        return a;
    }

    private void a() {
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.J = true;
        this.I = false;
        this.h.clear();
        if (this.q || (this.s && this.E)) {
            m();
            j();
        } else if (this.C != 0) {
            m();
            j();
        } else {
            this.n.flush();
            this.D = false;
        }
        if (this.A && this.l != null) {
            this.B = 1;
        }
    }

    private void a(final CryptoException cryptoException) {
        if (this.b != null && this.j != null) {
            this.b.post(new Runnable() {
                public void run() {
                    o.this.j.onCryptoError(cryptoException);
                }
            });
        }
    }

    private void a(a aVar) {
        b(aVar);
        throw new g((Throwable) aVar);
    }

    private void a(String str, long j, long j2) {
        if (this.b != null && this.j != null) {
            final String str2 = str;
            final long j3 = j;
            final long j4 = j2;
            this.b.post(new Runnable() {
                public void run() {
                    o.this.j.onDecoderInitialized(str2, j3, j4);
                }
            });
        }
    }

    private boolean a(long j, boolean z) {
        if (this.G || this.C == 2) {
            return false;
        }
        if (this.x < 0) {
            this.x = this.n.dequeueInputBuffer(0);
            if (this.x < 0) {
                return false;
            }
            this.f.b = this.u[this.x];
            this.f.d();
        }
        if (this.C == 1) {
            if (!this.r) {
                this.E = true;
                this.n.queueInputBuffer(this.x, 0, 0, 0, 4);
                this.x = -1;
            }
            this.C = 2;
            return false;
        }
        int i;
        if (this.I) {
            i = -3;
        } else {
            if (this.B == 1) {
                i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this.l.f.size()) {
                        break;
                    }
                    this.f.b.put((byte[]) this.l.f.get(i2));
                    i = i2 + 1;
                }
                this.B = 2;
            }
            i = a(j, this.g, this.f);
            if (z && this.F == 1 && i == -2) {
                this.F = 2;
            }
        }
        if (i == -2) {
            return false;
        }
        if (i == -4) {
            if (this.B == 2) {
                this.f.d();
                this.B = 1;
            }
            a(this.g);
            return true;
        } else if (i == -1) {
            if (this.B == 2) {
                this.f.d();
                this.B = 1;
            }
            this.G = true;
            if (this.D) {
                try {
                    if (!this.r) {
                        this.E = true;
                        this.n.queueInputBuffer(this.x, 0, 0, 0, 4);
                        this.x = -1;
                    }
                    return false;
                } catch (CryptoException e) {
                    a((CryptoException) e);
                    throw new g(e);
                }
            }
            A();
            return false;
        } else {
            if (this.J) {
                if (this.f.c()) {
                    this.J = false;
                } else {
                    this.f.d();
                    if (this.B == 2) {
                        this.B = 1;
                    }
                    return true;
                }
            }
            boolean a = this.f.a();
            this.I = a(a);
            if (this.I) {
                return false;
            }
            if (this.p && !a) {
                m.a(this.f.b);
                if (this.f.b.position() == 0) {
                    return true;
                }
                this.p = false;
            }
            try {
                int position = this.f.b.position();
                i = position - this.f.c;
                long j2 = this.f.e;
                if (this.f.b()) {
                    this.h.add(Long.valueOf(j2));
                }
                a(j2, this.f.b, position, a);
                if (a) {
                    this.n.queueSecureInputBuffer(this.x, 0, a(this.f, i), j2, 0);
                } else {
                    this.n.queueInputBuffer(this.x, 0, position, j2, 0);
                }
                this.x = -1;
                this.D = true;
                this.B = 0;
                c cVar = this.a;
                cVar.c++;
                return true;
            } catch (CryptoException e2) {
                a((CryptoException) e2);
                throw new g(e2);
            }
        }
    }

    private static boolean a(String str) {
        return x.a < 18 || ((x.a == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (x.a == 19 && x.d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str))));
    }

    private static boolean a(String str, r rVar) {
        return x.a < 21 && rVar.f.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private boolean a(boolean z) {
        if (!this.z) {
            return false;
        }
        int b = this.d.b();
        if (b != 0) {
            return b != 4 ? z || !this.e : false;
        } else {
            throw new g(this.d.d());
        }
    }

    private MediaFormat b(r rVar) {
        MediaFormat b = rVar.b();
        if (this.k) {
            b.setInteger("auto-frc", 0);
        }
        return b;
    }

    private void b(final a aVar) {
        if (this.b != null && this.j != null) {
            this.b.post(new Runnable() {
                public void run() {
                    o.this.j.onDecoderInitializationError(aVar);
                }
            });
        }
    }

    private boolean b(long j, long j2) {
        if (this.H) {
            return false;
        }
        if (this.y < 0) {
            this.y = this.n.dequeueOutputBuffer(this.i, o());
        }
        if (this.y == -2) {
            z();
            return true;
        } else if (this.y == -3) {
            this.v = this.n.getOutputBuffers();
            c cVar = this.a;
            cVar.e++;
            return true;
        } else if (this.y < 0) {
            if (!this.r || (!this.G && this.C != 2)) {
                return false;
            }
            A();
            return true;
        } else if ((this.i.flags & 4) != 0) {
            A();
            return false;
        } else {
            int h = h(this.i.presentationTimeUs);
            if (!a(j, j2, this.n, this.v[this.y], this.i, this.y, h != -1)) {
                return false;
            }
            b(this.i.presentationTimeUs);
            if (h != -1) {
                this.h.remove(h);
            }
            this.y = -1;
            return true;
        }
    }

    private static boolean b(String str) {
        return x.a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
    }

    private static boolean b(String str, r rVar) {
        return x.a <= 18 && rVar.n == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private static boolean c(String str) {
        return x.a <= 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private void g(long j) {
        if (a(j, this.g, null) == -4) {
            a(this.g);
        }
    }

    private int h(long j) {
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            if (((Long) this.h.get(i)).longValue() == j) {
                return i;
            }
        }
        return -1;
    }

    private boolean i() {
        return SystemClock.elapsedRealtime() < this.w + 1000;
    }

    private void z() {
        MediaFormat outputFormat = this.n.getOutputFormat();
        if (this.t) {
            outputFormat.setInteger("channel-count", 1);
        }
        a(this.n, outputFormat);
        c cVar = this.a;
        cVar.d++;
    }

    /* Access modifiers changed, original: protected */
    public e a(n nVar, String str, boolean z) {
        return nVar.a(str, z);
    }

    /* Access modifiers changed, original: protected */
    public void a(long j) {
        this.F = 0;
        this.G = false;
        this.H = false;
        if (this.n != null) {
            a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(long j, long j2, boolean z) {
        int i = z ? this.F == 0 ? 1 : this.F : 0;
        this.F = i;
        if (this.l == null) {
            g(j);
        }
        j();
        if (this.n != null) {
            v.a("drainAndFeed");
            do {
            } while (b(j, j2));
            if (a(j, true)) {
                do {
                } while (a(j, false));
            }
            v.a();
        }
        this.a.a();
    }

    /* Access modifiers changed, original: protected */
    public void a(long j, ByteBuffer byteBuffer, int i, boolean z) {
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
    }

    public abstract void a(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto);

    /* Access modifiers changed, original: protected */
    public void a(s sVar) {
        r rVar = this.l;
        this.l = sVar.a;
        this.m = sVar.b;
        if (this.n != null && a(this.n, this.o, rVar, this.l)) {
            this.A = true;
            this.B = 1;
        } else if (this.D) {
            this.C = 1;
        } else {
            m();
            j();
        }
    }

    public abstract boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z);

    /* Access modifiers changed, original: protected */
    public boolean a(MediaCodec mediaCodec, boolean z, r rVar, r rVar2) {
        return false;
    }

    public abstract boolean a(n nVar, r rVar);

    /* Access modifiers changed, original: protected|final */
    public final boolean a(r rVar) {
        return a(this.c, rVar);
    }

    /* Access modifiers changed, original: protected */
    public void b(long j) {
    }

    /* Access modifiers changed, original: protected */
    public void c() {
    }

    /* Access modifiers changed, original: protected */
    public void d() {
    }

    /* Access modifiers changed, original: protected */
    public boolean e() {
        return this.H;
    }

    /* Access modifiers changed, original: protected */
    public boolean f() {
        return (this.l == null || this.I || (this.F == 0 && this.y < 0 && !i())) ? false : true;
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        this.l = null;
        this.m = null;
        try {
            m();
            try {
                if (this.z) {
                    this.d.a();
                    this.z = false;
                }
                super.g();
            } catch (Throwable th) {
                super.g();
            }
        } catch (Throwable th2) {
            super.g();
        }
    }

    /* Access modifiers changed, original: protected */
    public void h() {
    }

    /* Access modifiers changed, original: protected|final */
    public final void j() {
        if (k()) {
            boolean z;
            MediaCrypto mediaCrypto;
            e a;
            String str = this.l.b;
            if (this.m == null) {
                z = false;
                mediaCrypto = null;
            } else if (this.d == null) {
                throw new g("Media requires a DrmSessionManager");
            } else {
                if (!this.z) {
                    this.d.a(this.m);
                    this.z = true;
                }
                int b = this.d.b();
                if (b == 0) {
                    throw new g(this.d.d());
                } else if (b == 3 || b == 4) {
                    MediaCrypto c = this.d.c();
                    z = this.d.a(str);
                    mediaCrypto = c;
                } else {
                    return;
                }
            }
            try {
                a = a(this.c, str, z);
            } catch (com.google.android.a.p.b e) {
                a(new a(this.l, e, z, -49998));
                a = null;
            }
            if (a == null) {
                a(new a(this.l, null, z, -49999));
            }
            String str2 = a.a;
            this.o = a.c;
            this.p = a(str2, this.l);
            this.q = a(str2);
            this.r = b(str2);
            this.s = c(str2);
            this.t = b(str2, this.l);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                v.a("createByCodecName(" + str2 + ")");
                this.n = MediaCodec.createByCodecName(str2);
                v.a();
                v.a("configureCodec");
                a(this.n, a.c, b(this.l), mediaCrypto);
                v.a();
                v.a("codec.start()");
                this.n.start();
                v.a();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                a(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.u = this.n.getInputBuffers();
                this.v = this.n.getOutputBuffers();
            } catch (Exception e2) {
                a(new a(this.l, e2, z, str2));
            }
            this.w = u() == 3 ? SystemClock.elapsedRealtime() : -1;
            this.x = -1;
            this.y = -1;
            this.J = true;
            c cVar = this.a;
            cVar.a++;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean k() {
        return this.n == null && this.l != null;
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean l() {
        return this.n != null;
    }

    /* Access modifiers changed, original: protected */
    public void m() {
        if (this.n != null) {
            this.w = -1;
            this.x = -1;
            this.y = -1;
            this.I = false;
            this.h.clear();
            this.u = null;
            this.v = null;
            this.A = false;
            this.D = false;
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = false;
            this.s = false;
            this.t = false;
            this.E = false;
            this.B = 0;
            this.C = 0;
            c cVar = this.a;
            cVar.b++;
            try {
                this.n.stop();
                try {
                    this.n.release();
                } finally {
                    this.n = null;
                }
            } catch (Throwable th) {
                this.n.release();
            } finally {
                this.n = null;
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final int n() {
        return this.F;
    }

    /* Access modifiers changed, original: protected */
    public long o() {
        return 0;
    }
}
