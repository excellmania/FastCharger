package com.google.android.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.a.h.k;
import com.google.android.a.h.v;
import com.google.android.a.h.x;
import com.google.android.a.o.b;
import java.nio.ByteBuffer;

@TargetApi(16)
public class q extends o {
    private final aa c;
    private final a d;
    private final long e;
    private final int f;
    private final int g;
    private Surface h;
    private boolean i;
    private boolean j;
    private long k;
    private long l;
    private int m;
    private int n;
    private int o;
    private float p;
    private int q;
    private int r;
    private int s;
    private float t;
    private int u;
    private int v;
    private int w;
    private float x;

    public interface a extends b {
        void onDrawnToSurface(Surface surface);

        void onDroppedFrames(int i, long j);

        void onVideoSizeChanged(int i, int i2, int i3, float f);
    }

    public q(Context context, v vVar, n nVar, int i, long j, Handler handler, a aVar, int i2) {
        this(context, vVar, nVar, i, j, null, false, handler, aVar, i2);
    }

    public q(Context context, v vVar, n nVar, int i, long j, com.google.android.a.d.b bVar, boolean z, Handler handler, a aVar, int i2) {
        super(vVar, nVar, bVar, z, handler, (b) aVar);
        this.c = new aa(context);
        this.f = i;
        this.e = 1000 * j;
        this.d = aVar;
        this.g = i2;
        this.k = -1;
        this.q = -1;
        this.r = -1;
        this.t = -1.0f;
        this.p = -1.0f;
        this.u = -1;
        this.v = -1;
        this.x = -1.0f;
    }

    private void a() {
        if (this.b != null && this.d != null) {
            if (this.u != this.q || this.v != this.r || this.w != this.s || this.x != this.t) {
                final int i = this.q;
                final int i2 = this.r;
                final int i3 = this.s;
                final float f = this.t;
                this.b.post(new Runnable() {
                    public void run() {
                        q.this.d.onVideoSizeChanged(i, i2, i3, f);
                    }
                });
                this.u = i;
                this.v = i2;
                this.w = i3;
                this.x = f;
            }
        }
    }

    @SuppressLint({"InlinedApi"})
    private void a(MediaFormat mediaFormat, boolean z) {
        if (!mediaFormat.containsKey("max-input-size")) {
            int integer = mediaFormat.getInteger("height");
            if (z && mediaFormat.containsKey("max-height")) {
                integer = Math.max(integer, mediaFormat.getInteger("max-height"));
            }
            int integer2 = mediaFormat.getInteger("width");
            if (z && mediaFormat.containsKey("max-width")) {
                integer2 = Math.max(integer, mediaFormat.getInteger("max-width"));
            }
            String string = mediaFormat.getString("mime");
            Object obj = -1;
            int obj2;
            switch (string.hashCode()) {
                case -1664118616:
                    if (string.equals("video/3gpp")) {
                        obj2 = null;
                        break;
                    }
                    break;
                case -1662541442:
                    if (string.equals("video/hevc")) {
                        obj2 = 4;
                        break;
                    }
                    break;
                case 1187890754:
                    if (string.equals("video/mp4v-es")) {
                        obj2 = 1;
                        break;
                    }
                    break;
                case 1331836730:
                    if (string.equals("video/avc")) {
                        obj2 = 2;
                        break;
                    }
                    break;
                case 1599127256:
                    if (string.equals("video/x-vnd.on2.vp8")) {
                        obj2 = 3;
                        break;
                    }
                    break;
                case 1599127257:
                    if (string.equals("video/x-vnd.on2.vp9")) {
                        obj2 = 5;
                        break;
                    }
                    break;
            }
            switch (obj2) {
                case null:
                case 1:
                    integer2 = integer * integer2;
                    integer = 2;
                    break;
                case 2:
                    if (!"BRAVIA 4K 2015".equals(x.d)) {
                        integer2 = ((((integer + 15) / 16) * ((integer2 + 15) / 16)) * 16) * 16;
                        integer = 2;
                        break;
                    }
                    return;
                case 3:
                    integer2 = integer * integer2;
                    integer = 2;
                    break;
                case 4:
                case 5:
                    integer2 = integer * integer2;
                    integer = 4;
                    break;
                default:
                    return;
            }
            mediaFormat.setInteger("max-input-size", (integer2 * 3) / (integer * 2));
        }
    }

    private void a(Surface surface) {
        if (this.h != surface) {
            this.h = surface;
            this.i = false;
            int u = u();
            if (u == 2 || u == 3) {
                m();
                j();
            }
        }
    }

    private void i() {
        if (this.b != null && this.d != null && !this.i) {
            final Surface surface = this.h;
            this.b.post(new Runnable() {
                public void run() {
                    q.this.d.onDrawnToSurface(surface);
                }
            });
            this.i = true;
        }
    }

    private void z() {
        if (this.b != null && this.d != null && this.m != 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final int i = this.m;
            final long j = elapsedRealtime - this.l;
            this.b.post(new Runnable() {
                public void run() {
                    q.this.d.onDroppedFrames(i, j);
                }
            });
            this.m = 0;
            this.l = elapsedRealtime;
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(int i, long j, boolean z) {
        super.a(i, j, z);
        if (z && this.e > 0) {
            this.k = (SystemClock.elapsedRealtime() * 1000) + this.e;
        }
        this.c.a();
    }

    public void a(int i, Object obj) {
        if (i == 1) {
            a((Surface) obj);
        } else {
            super.a(i, obj);
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(long j) {
        super.a(j);
        this.j = false;
        this.n = 0;
        this.k = -1;
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, int i) {
        v.a("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        v.a();
        c cVar = this.a;
        cVar.g++;
    }

    /* Access modifiers changed, original: protected */
    @TargetApi(21)
    public void a(MediaCodec mediaCodec, int i, long j) {
        a();
        v.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        v.a();
        c cVar = this.a;
        cVar.f++;
        this.j = true;
        i();
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        Object obj = (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) ? 1 : null;
        this.q = obj != null ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        this.r = obj != null ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.t = this.p;
        if (x.a < 21) {
            this.s = this.o;
        } else if (this.o == 90 || this.o == 270) {
            int i = this.q;
            this.q = this.r;
            this.r = i;
            this.t = 1.0f / this.t;
        }
        mediaCodec.setVideoScalingMode(this.f);
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        a(mediaFormat, z);
        mediaCodec.configure(mediaFormat, this.h, mediaCrypto, 0);
    }

    /* Access modifiers changed, original: protected */
    public void a(s sVar) {
        super.a(sVar);
        this.p = sVar.a.m == -1.0f ? 1.0f : sVar.a.m;
        this.o = sVar.a.l == -1 ? 0 : sVar.a.l;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z) {
        if (z) {
            a(mediaCodec, i);
            this.n = 0;
            return true;
        } else if (!this.j) {
            if (x.a >= 21) {
                a(mediaCodec, i, System.nanoTime());
            } else {
                c(mediaCodec, i);
            }
            this.n = 0;
            return true;
        } else if (u() != 3) {
            return false;
        } else {
            long elapsedRealtime = (bufferInfo.presentationTimeUs - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
            long nanoTime = System.nanoTime();
            elapsedRealtime = this.c.a(bufferInfo.presentationTimeUs, (elapsedRealtime * 1000) + nanoTime);
            nanoTime = (elapsedRealtime - nanoTime) / 1000;
            if (nanoTime < -30000) {
                b(mediaCodec, i);
                return true;
            }
            if (x.a >= 21) {
                if (nanoTime < 50000) {
                    a(mediaCodec, i, elapsedRealtime);
                    this.n = 0;
                    return true;
                }
            } else if (nanoTime < 30000) {
                if (nanoTime > 11000) {
                    try {
                        Thread.sleep((nanoTime - 10000) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                c(mediaCodec, i);
                this.n = 0;
                return true;
            }
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(MediaCodec mediaCodec, boolean z, r rVar, r rVar2) {
        return rVar2.b.equals(rVar.b) && (z || (rVar.h == rVar2.h && rVar.i == rVar2.i));
    }

    /* Access modifiers changed, original: protected */
    public boolean a(n nVar, r rVar) {
        String str = rVar.b;
        return k.b(str) ? "video/x-unknown".equals(str) || nVar.a(str, false) != null : false;
    }

    /* Access modifiers changed, original: protected */
    public void b(MediaCodec mediaCodec, int i) {
        v.a("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        v.a();
        c cVar = this.a;
        cVar.h++;
        this.m++;
        this.n++;
        this.a.i = Math.max(this.n, this.a.i);
        if (this.m == this.g) {
            z();
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        super.c();
        this.m = 0;
        this.l = SystemClock.elapsedRealtime();
    }

    /* Access modifiers changed, original: protected */
    public void c(MediaCodec mediaCodec, int i) {
        a();
        v.a("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        v.a();
        c cVar = this.a;
        cVar.f++;
        this.j = true;
        i();
    }

    /* Access modifiers changed, original: protected */
    public void d() {
        this.k = -1;
        z();
        super.d();
    }

    /* Access modifiers changed, original: protected */
    public boolean f() {
        if (super.f() && (this.j || !l() || n() == 2)) {
            this.k = -1;
            return true;
        } else if (this.k == -1) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() * 1000 < this.k) {
                return true;
            }
            this.k = -1;
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        this.q = -1;
        this.r = -1;
        this.t = -1.0f;
        this.p = -1.0f;
        this.u = -1;
        this.v = -1;
        this.x = -1.0f;
        this.c.b();
        super.g();
    }

    /* Access modifiers changed, original: protected */
    public boolean k() {
        return super.k() && this.h != null && this.h.isValid();
    }
}
