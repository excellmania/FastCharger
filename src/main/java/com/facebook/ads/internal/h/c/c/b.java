package com.facebook.ads.internal.h.c.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec.CryptoException;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.widget.MediaController;
import com.facebook.ads.AdSettings;
import com.google.android.a.g;
import com.google.android.a.h;
import com.google.android.a.h.x;
import com.google.android.a.m;
import com.google.android.a.q;
import com.google.android.a.z;
import java.io.IOException;

@TargetApi(14)
public class b extends TextureView implements SurfaceTextureListener, e, com.google.android.a.e.h.a, com.google.android.a.g.d.a, com.google.android.a.h.c, com.google.android.a.q.a {
    private static final String a = b.class.getSimpleName();
    private Uri b;
    private String c;
    private h d;
    private Handler e = new Handler();
    private Surface f;
    private z g;
    private z h;
    private c i = new c() {
        public void a(q qVar, m mVar) {
            b.this.g = qVar;
            b.this.h = mVar;
            b.this.j = com.google.android.a.h.b.a(2);
            b.this.j.a(b.this);
            b.this.k = new a();
            b.this.j.a(b.this.g, b.this.h);
            if (b.this.r) {
                b.this.l = new MediaController(b.this.getContext());
                b.this.l.setAnchorView(b.this.o == null ? b.this : b.this.o);
                b.this.l.setMediaPlayer(b.this.k);
                b.this.l.setEnabled(true);
            }
            b.this.j.a(b.this.h, 1, Float.valueOf(b.this.x));
            if (b.this.isAvailable()) {
                b.this.setPlayerSurfaceTexture(b.this.getSurfaceTexture());
            }
        }

        public void a(Exception exception) {
            if (b.this.c != null && b.this.c.length() > 0) {
                b.this.c = null;
                b.this.setup(b.this.b);
            }
        }
    };
    @Nullable
    private h j;
    @Nullable
    private a k;
    private MediaController l;
    private g m = g.IDLE;
    private g n = g.IDLE;
    private View o;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private long s;
    private long t;
    private long u;
    private int v;
    private int w;
    private float x = 1.0f;

    public interface b {
        void a(c cVar);
    }

    public interface c {
        void a(q qVar, m mVar);

        void a(Exception exception);
    }

    private class a extends com.google.android.a.h.q {
        public a() {
            super(b.this.j);
        }

        public void pause() {
            super.pause();
            b.this.n = g.PAUSED;
        }

        public void seekTo(int i) {
            super.seekTo(i);
            b.this.u = (long) i;
        }

        public void start() {
            super.start();
            b.this.n = g.STARTED;
        }
    }

    public b(Context context) {
        super(context);
    }

    private void b() {
        b cVar = (this.c == null || this.c.length() <= 0 || AdSettings.isTestMode(getContext())) ? new c(65536, 256, this.e, this.b, x.a(getContext(), "ads"), this) : new a(65536, this.e, this.b, this.c, x.a(getContext(), "ads"), this);
        cVar.a(this.i);
    }

    private void c() {
        this.j.b();
        this.j = null;
        this.l = null;
        this.q = false;
        setVideoState(g.IDLE);
    }

    private void setPlayerSurfaceTexture(SurfaceTexture surfaceTexture) {
        this.f = new Surface(surfaceTexture);
        if (this.j != null) {
            this.j.a(this.g, 1, this.f);
        }
    }

    private void setVideoState(g gVar) {
        if (gVar != this.m) {
            this.m = gVar;
            if (this.m == g.STARTED) {
                this.q = true;
            }
            if (this.d != null) {
                this.d.a(gVar);
            }
        }
    }

    public void a() {
        setVideoState(g.IDLE);
        if (this.j != null) {
            this.j.a(false);
            this.u = this.j.d();
            this.j.b(this);
            c();
        }
    }

    public int getCurrentPosition() {
        return this.k != null ? this.k.getCurrentPosition() : 0;
    }

    public int getDuration() {
        return this.j == null ? 0 : (int) this.j.c();
    }

    public long getInitialBufferTime() {
        return this.t;
    }

    public g getState() {
        return this.m;
    }

    public g getTargetState() {
        return this.n;
    }

    public void onBandwidthSample(int i, long j, long j2) {
    }

    public void onCryptoError(CryptoException cryptoException) {
        setVideoState(g.ERROR);
        cryptoException.printStackTrace();
        com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(cryptoException, "[ExoPlayer] Error during decoder operation"));
    }

    public void onDecoderInitializationError(com.google.android.a.o.a aVar) {
        setVideoState(g.ERROR);
        aVar.printStackTrace();
        com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(aVar, "[ExoPlayer] Error while instantiating the decoder for mime type " + aVar.a));
    }

    public void onDecoderInitialized(String str, long j, long j2) {
    }

    public void onDrawnToSurface(Surface surface) {
    }

    public void onDroppedFrames(int i, long j) {
    }

    public void onLoadError(int i, IOException iOException) {
        setVideoState(g.ERROR);
        iOException.printStackTrace();
        com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(iOException, "[ExoPlayer] Error loading media data from sourceID " + i));
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.v, i);
        int defaultSize2 = getDefaultSize(this.w, i2);
        if (this.v > 0 && this.w > 0) {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            int mode2 = MeasureSpec.getMode(i2);
            defaultSize2 = MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.v * defaultSize2 < this.w * size) {
                    defaultSize = (this.v * defaultSize2) / this.w;
                } else if (this.v * defaultSize2 > this.w * size) {
                    defaultSize2 = (this.w * size) / this.v;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                defaultSize = (this.w * size) / this.v;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.v * defaultSize2) / this.w;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i3 = this.v;
                defaultSize = this.w;
                if (mode2 != Integer.MIN_VALUE || defaultSize <= defaultSize2) {
                    defaultSize2 = defaultSize;
                    defaultSize = i3;
                } else {
                    defaultSize = (this.v * defaultSize2) / this.w;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.w * size) / this.v;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void onPlayWhenReadyCommitted() {
    }

    public void onPlayerError(g gVar) {
        setVideoState(g.ERROR);
        gVar.printStackTrace();
        com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(gVar, "[ExoPlayer] Error during playback of ExoPlayer"));
    }

    public void onPlayerStateChanged(boolean z, int i) {
        switch (i) {
            case 1:
                setVideoState(g.IDLE);
                return;
            case 2:
                this.s = System.currentTimeMillis();
                setVideoState(g.PREPARING);
                return;
            case 3:
                setVideoState(g.BUFFERING);
                return;
            case 4:
                if (this.s != 0) {
                    this.t = System.currentTimeMillis() - this.s;
                }
                setRequestedVolume(this.x);
                if (this.u > 0 && this.u < this.j.c()) {
                    this.j.a(this.u);
                    this.u = 0;
                }
                if (this.j.d() == 0 || z || !this.q) {
                    setVideoState(z ? g.STARTED : g.PREPARED);
                    return;
                } else {
                    setVideoState(g.PAUSED);
                    return;
                }
            case 5:
                setVideoState(g.PLAYBACK_COMPLETED);
                this.k.seekTo(0);
                this.j.a(false);
                this.q = false;
                return;
            default:
                return;
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.p && this.j == null) {
            setup(this.b);
            this.p = false;
        }
        setPlayerSurfaceTexture(surfaceTexture);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.n = this.m;
        this.p = true;
        boolean z = this.q;
        a();
        this.q = z;
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.v = i;
        this.w = i2;
        requestLayout();
    }

    public void pause() {
        if (this.k != null) {
            this.k.pause();
        }
    }

    public void seekTo(int i) {
        if (this.k != null) {
            this.k.seekTo(i);
        } else {
            this.u = (long) i;
        }
    }

    public void setControlsAnchorView(View view) {
        this.o = view;
        view.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (b.this.l != null && motionEvent.getAction() == 1) {
                    if (b.this.l.isShowing()) {
                        b.this.l.hide();
                    } else {
                        b.this.l.show();
                    }
                }
                return true;
            }
        });
    }

    public void setFullScreen(boolean z) {
        this.r = z;
        if (z) {
            setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (b.this.l != null && motionEvent.getAction() == 1) {
                        if (b.this.l.isShowing()) {
                            b.this.l.hide();
                        } else {
                            b.this.l.show();
                        }
                    }
                    return true;
                }
            });
        }
    }

    public void setRequestedVolume(float f) {
        this.x = f;
        if (this.j != null && this.m != g.PREPARING && this.m != g.IDLE) {
            this.j.a(this.h, 1, Float.valueOf(f));
        }
    }

    public void setVideoMPD(String str) {
        this.c = str;
    }

    public void setVideoStateChangeListener(h hVar) {
        this.d = hVar;
    }

    public void setup(Uri uri) {
        if (!(this.j == null || this.m == g.PLAYBACK_COMPLETED)) {
            c();
        }
        this.b = uri;
        setSurfaceTextureListener(this);
        b();
    }

    public void start() {
        if (this.k == null) {
            setup(this.b);
            this.n = g.STARTED;
            return;
        }
        this.k.start();
    }
}
