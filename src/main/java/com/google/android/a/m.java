package com.google.android.a;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.a.a.b;
import com.google.android.a.a.b.d;
import com.google.android.a.a.b.f;
import com.google.android.a.h.k;
import java.nio.ByteBuffer;

@TargetApi(16)
public class m extends o implements l {
    private final a c;
    private final b d;
    private boolean e;
    private MediaFormat f;
    private int g;
    private int h;
    private long i;
    private boolean j;
    private boolean k;
    private long l;

    public interface a extends o.b {
        void a(int i, long j, long j2);

        void a(d dVar);

        void a(f fVar);
    }

    public m(v vVar, n nVar) {
        this(vVar, nVar, null, true);
    }

    public m(v vVar, n nVar, com.google.android.a.d.b bVar, boolean z) {
        this(vVar, nVar, bVar, z, null, null);
    }

    public m(v vVar, n nVar, com.google.android.a.d.b bVar, boolean z, Handler handler, a aVar) {
        this(vVar, nVar, bVar, z, handler, aVar, null, 3);
    }

    public m(v vVar, n nVar, com.google.android.a.d.b bVar, boolean z, Handler handler, a aVar, com.google.android.a.a.a aVar2, int i) {
        this(new v[]{vVar}, nVar, bVar, z, handler, aVar, aVar2, i);
    }

    public m(v[] vVarArr, n nVar, com.google.android.a.d.b bVar, boolean z, Handler handler, a aVar, com.google.android.a.a.a aVar2, int i) {
        super(vVarArr, nVar, bVar, z, handler, (o.b) aVar);
        this.c = aVar;
        this.h = 0;
        this.d = new b(aVar2, i);
    }

    private void a(int i, long j, long j2) {
        if (this.b != null && this.c != null) {
            final int i2 = i;
            final long j3 = j;
            final long j4 = j2;
            this.b.post(new Runnable() {
                public void run() {
                    m.this.c.a(i2, j3, j4);
                }
            });
        }
    }

    private void a(final d dVar) {
        if (this.b != null && this.c != null) {
            this.b.post(new Runnable() {
                public void run() {
                    m.this.c.a(dVar);
                }
            });
        }
    }

    private void a(final f fVar) {
        if (this.b != null && this.c != null) {
            this.b.post(new Runnable() {
                public void run() {
                    m.this.c.a(fVar);
                }
            });
        }
    }

    public long a() {
        long a = this.d.a(e());
        if (a != Long.MIN_VALUE) {
            if (!this.j) {
                a = Math.max(this.i, a);
            }
            this.i = a;
            this.j = false;
        }
        return this.i;
    }

    /* Access modifiers changed, original: protected */
    public e a(n nVar, String str, boolean z) {
        if (a(str)) {
            String a = nVar.a();
            if (a != null) {
                this.e = true;
                return new e(a, null);
            }
        }
        this.e = false;
        return super.a(nVar, str, z);
    }

    /* Access modifiers changed, original: protected */
    public void a(int i) {
    }

    public void a(int i, Object obj) {
        switch (i) {
            case 1:
                this.d.a(((Float) obj).floatValue());
                return;
            case 2:
                this.d.a((PlaybackParams) obj);
                return;
            default:
                super.a(i, obj);
                return;
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(long j) {
        super.a(j);
        this.d.j();
        this.i = j;
        this.j = true;
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        Object obj = this.f != null ? 1 : null;
        String string = obj != null ? this.f.getString("mime") : "audio/raw";
        if (obj != null) {
            mediaFormat = this.f;
        }
        this.d.a(string, mediaFormat.getInteger("channel-count"), mediaFormat.getInteger("sample-rate"), this.g);
    }

    /* Access modifiers changed, original: protected */
    public void a(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        String string = mediaFormat.getString("mime");
        if (this.e) {
            mediaFormat.setString("mime", "audio/raw");
            mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
            mediaFormat.setString("mime", string);
            this.f = mediaFormat;
            return;
        }
        mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
        this.f = null;
    }

    /* Access modifiers changed, original: protected */
    public void a(s sVar) {
        super.a(sVar);
        this.g = "audio/raw".equals(sVar.a.b) ? sVar.a.p : 2;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z) {
        c cVar;
        if (this.e && (bufferInfo.flags & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            cVar = this.a;
            cVar.g++;
            this.d.f();
            return true;
        } else {
            if (this.d.a()) {
                boolean z2 = this.k;
                this.k = this.d.h();
                if (z2 && !this.k && u() == 3) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - this.l;
                    long d = this.d.d();
                    a(this.d.c(), d == -1 ? -1 : d / 1000, elapsedRealtime);
                }
            } else {
                try {
                    if (this.h != 0) {
                        this.d.a(this.h);
                    } else {
                        this.h = this.d.b();
                        a(this.h);
                    }
                    this.k = false;
                    if (u() == 3) {
                        this.d.e();
                    }
                } catch (d e) {
                    a((d) e);
                    throw new g(e);
                }
            }
            try {
                int a = this.d.a(byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
                this.l = SystemClock.elapsedRealtime();
                if ((a & 1) != 0) {
                    i();
                    this.j = true;
                }
                if ((a & 2) == 0) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                cVar = this.a;
                cVar.f++;
                return true;
            } catch (f e2) {
                a((f) e2);
                throw new g(e2);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean a(n nVar, r rVar) {
        String str = rVar.b;
        return k.a(str) ? "audio/x-unknown".equals(str) || ((a(str) && nVar.a() != null) || nVar.a(str, false) != null) : false;
    }

    /* Access modifiers changed, original: protected */
    public boolean a(String str) {
        return this.d.a(str);
    }

    /* Access modifiers changed, original: protected */
    public l b() {
        return this;
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        super.c();
        this.d.e();
    }

    /* Access modifiers changed, original: protected */
    public void d() {
        this.d.i();
        super.d();
    }

    /* Access modifiers changed, original: protected */
    public boolean e() {
        return super.e() && !this.d.h();
    }

    /* Access modifiers changed, original: protected */
    public boolean f() {
        return this.d.h() || super.f();
    }

    /* Access modifiers changed, original: protected */
    public void g() {
        this.h = 0;
        try {
            this.d.k();
        } finally {
            super.g();
        }
    }

    /* Access modifiers changed, original: protected */
    public void h() {
        this.d.g();
    }

    /* Access modifiers changed, original: protected */
    public void i() {
    }
}
