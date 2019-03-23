package com.facebook.ads.internal.h;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.facebook.ads.internal.h.c.a.b;
import com.facebook.ads.internal.h.c.a.c;
import com.facebook.ads.internal.h.c.a.d;
import com.facebook.ads.internal.h.c.c.e;
import com.facebook.ads.internal.h.c.c.f;
import com.facebook.ads.internal.h.c.c.g;
import com.facebook.ads.internal.h.c.c.h;
import com.facebook.ads.internal.util.w.a;
import java.util.ArrayList;
import java.util.List;

public class m extends FrameLayout implements f, h, a {
    private static final c g = new c();
    private static final b h = new b();
    private static final com.facebook.ads.internal.h.c.a.a i = new com.facebook.ads.internal.h.c.a.a();
    private static final d j = new d();
    @NonNull
    private final e a;
    @NonNull
    private final com.facebook.ads.internal.e.b<com.facebook.ads.internal.e.c, com.facebook.ads.internal.e.a> b;
    @NonNull
    private final List<com.facebook.ads.internal.h.c.b.a> c;
    private boolean d;
    private boolean e;
    private boolean f;
    private final Handler k;

    public m(@Nullable Context context) {
        this(context, null);
    }

    public m(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public m(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new ArrayList();
        this.d = false;
        this.e = false;
        this.f = false;
        if (com.facebook.ads.internal.h.d(getContext())) {
            this.a = new com.facebook.ads.internal.h.c.c.b(getContext());
        } else {
            this.a = new com.facebook.ads.internal.h.c.c.d(getContext());
        }
        this.a.setRequestedVolume(1.0f);
        this.a.setVideoStateChangeListener(this);
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView((View) this.a, layoutParams);
        this.k = new Handler();
        this.b = new com.facebook.ads.internal.e.b();
    }

    public void a(int i) {
        this.a.seekTo(i);
    }

    public void a(g gVar) {
        if (gVar == g.PREPARED) {
            this.b.a(g);
            if (this.e && !this.d) {
                e();
            }
        } else if (gVar == g.ERROR) {
            this.d = true;
            this.b.a(h);
        } else if (gVar == g.PLAYBACK_COMPLETED) {
            this.d = true;
            this.b.a(i);
        }
    }

    public boolean a() {
        return this.e;
    }

    public boolean b() {
        return com.facebook.ads.internal.h.d(getContext());
    }

    public boolean c() {
        return this.f;
    }

    public void d() {
        this.a.pause();
    }

    public void e() {
        this.a.start();
        this.k.postDelayed(new Runnable() {
            public void run() {
                m.this.b.a(m.j);
                if (!m.this.d) {
                    m.this.k.postDelayed(this, 250);
                }
            }
        }, 250);
    }

    public void f() {
        this.a.a();
    }

    public int getCurrentPosition() {
        return this.a.getCurrentPosition();
    }

    public int getDuration() {
        return this.a.getDuration();
    }

    @NonNull
    public com.facebook.ads.internal.e.b<com.facebook.ads.internal.e.c, com.facebook.ads.internal.e.a> getEventBus() {
        return this.b;
    }

    public long getInitialBufferTime() {
        return this.a.getInitialBufferTime();
    }

    public g getState() {
        return this.a.getState();
    }

    public TextureView getTextureView() {
        return (TextureView) this.a;
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.k.removeCallbacksAndMessages(null);
        this.a.a();
    }

    public void setAutoplay(boolean z) {
        this.e = z;
    }

    public void setControlsAnchorView(View view) {
        if (this.a != null) {
            this.a.setControlsAnchorView(view);
        }
    }

    public void setIsFullScreen(boolean z) {
        this.f = z;
        this.a.setFullScreen(z);
    }

    public void setVideoMPD(String str) {
        this.a.setVideoMPD(str);
    }

    public void setVideoURI(@NonNull Uri uri) {
        for (com.facebook.ads.internal.h.c.b.a aVar : this.c) {
            addView(aVar);
            aVar.b(this);
        }
        this.a.setup(uri);
    }

    public void setVideoURI(@NonNull String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVolume(float f) {
        this.a.setRequestedVolume(f);
    }
}
