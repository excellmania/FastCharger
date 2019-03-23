package com.facebook.ads.internal.h;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.InterstitialAdActivity.Type;
import com.facebook.ads.internal.adapters.t;
import com.facebook.ads.internal.h.c.c.d;
import com.facebook.ads.internal.h.c.c.e;
import com.facebook.ads.internal.h.c.c.f;
import com.facebook.ads.internal.h.c.c.g;
import com.facebook.ads.internal.h.c.c.h;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.o;
import com.facebook.ads.internal.util.q;
import com.facebook.ads.internal.util.w;

@TargetApi(14)
public class c extends FrameLayout implements f, h, com.facebook.ads.internal.util.w.a {
    private e a;
    private ImageView b;
    private ProgressBar c;
    private a d;
    private w e;
    private t f;
    private com.facebook.ads.internal.i.a g;
    private String h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private boolean m;
    private boolean n = false;
    private boolean o = false;
    private Handler p;

    class a extends Button {
        private Paint b;
        private Path c;
        private Path d;
        private Path e;
        private int f;
        private boolean g = true;

        public a(Context context) {
            super(context);
            a();
        }

        private void a() {
            this.f = 60;
            this.c = new Path();
            this.d = new Path();
            this.e = new Path();
            this.b = new Paint() {
                {
                    setStyle(Style.FILL_AND_STROKE);
                    setStrokeCap(Cap.ROUND);
                    setStrokeWidth(3.0f);
                    setAntiAlias(true);
                    setColor(-1);
                }
            };
            b();
            setClickable(true);
            setBackgroundColor(0);
        }

        private void a(boolean z) {
            this.g = z;
            refreshDrawableState();
            invalidate();
        }

        private void b() {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            LayoutParams layoutParams = new LayoutParams((int) (((float) this.f) * displayMetrics.density), (int) (displayMetrics.density * ((float) this.f)));
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            setLayoutParams(layoutParams);
        }

        private boolean c() {
            return this.g;
        }

        /* Access modifiers changed, original: protected */
        public void onDraw(@NonNull Canvas canvas) {
            if (canvas.isHardwareAccelerated() && VERSION.SDK_INT < 17) {
                setLayerType(1, null);
            }
            float max = ((float) Math.max(canvas.getWidth(), canvas.getHeight())) / 100.0f;
            if (c()) {
                this.e.rewind();
                this.e.moveTo(26.5f * max, 15.5f * max);
                this.e.lineTo(26.5f * max, 84.5f * max);
                this.e.lineTo(82.5f * max, 50.5f * max);
                this.e.lineTo(26.5f * max, max * 15.5f);
                this.e.close();
                canvas.drawPath(this.e, this.b);
            } else {
                this.c.rewind();
                this.c.moveTo(29.0f * max, 21.0f * max);
                this.c.lineTo(29.0f * max, 79.0f * max);
                this.c.lineTo(45.0f * max, 79.0f * max);
                this.c.lineTo(45.0f * max, 21.0f * max);
                this.c.lineTo(29.0f * max, 21.0f * max);
                this.c.close();
                this.d.rewind();
                this.d.moveTo(55.0f * max, 21.0f * max);
                this.d.lineTo(55.0f * max, 79.0f * max);
                this.d.lineTo(71.0f * max, 79.0f * max);
                this.d.lineTo(71.0f * max, 21.0f * max);
                this.d.lineTo(55.0f * max, max * 21.0f);
                this.d.close();
                canvas.drawPath(this.c, this.b);
                canvas.drawPath(this.d, this.b);
            }
            super.onDraw(canvas);
        }
    }

    public c(Context context) {
        super(context);
        g();
    }

    private void a(Context context, Intent intent) {
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        intent.putExtra("useNativeCloseButton", true);
        intent.putExtra(InterstitialAdActivity.VIEW_TYPE, Type.VIDEO);
        intent.putExtra(InterstitialAdActivity.VIDEO_URL, this.h);
        intent.putExtra(InterstitialAdActivity.VIDEO_MPD, this.i);
        intent.putExtra(InterstitialAdActivity.VIDEO_PLAY_REPORT_URL, getVideoPlayReportURI());
        intent.putExtra(InterstitialAdActivity.VIDEO_TIME_REPORT_URL, getVideoTimeReportURI());
        intent.putExtra(InterstitialAdActivity.PREDEFINED_ORIENTATION_KEY, 13);
        intent.putExtra(InterstitialAdActivity.AUTOPLAY, getAutoplay());
        intent.putExtra(InterstitialAdActivity.VIDEO_SEEK_TIME, this.a.getCurrentPosition());
        intent.addFlags(268435456);
    }

    private boolean a(Class<?> cls) {
        try {
            Context context = getContext();
            Intent intent = new Intent(context, cls);
            a(context, intent);
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            com.facebook.ads.internal.util.c.a(b.a(e, "Error occurred while loading fullscreen video activity."));
            return false;
        }
    }

    private void g() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (com.facebook.ads.internal.h.d(getContext())) {
            this.a = new com.facebook.ads.internal.h.c.c.b(getContext());
        } else {
            this.a = new d(getContext());
        }
        this.a.setRequestedVolume(1.0f);
        this.a.setVideoStateChangeListener(this);
        addView((View) this.a, layoutParams);
        this.p = new Handler();
        d();
        this.b = new ImageView(getContext());
        this.b.setScaleType(ScaleType.CENTER_CROP);
        this.b.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        addView(this.b, layoutParams);
        int applyDimension = (int) TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
        this.c = new ProgressBar(getContext());
        this.c.setIndeterminate(true);
        this.c.getIndeterminateDrawable().setColorFilter(-1, Mode.SRC_IN);
        this.c.setVisibility(8);
        layoutParams = new FrameLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams.gravity = 17;
        addView(this.c, layoutParams);
        this.g = new com.facebook.ads.internal.i.a(this, 50, true, new com.facebook.ads.internal.i.a.a() {
            public void a() {
                if ((c.this.i() || c.this.a.getTargetState() == g.STARTED) && c.this.a.getTargetState() != g.PAUSED) {
                    c.this.e();
                }
            }

            public void b() {
                c.this.f();
            }
        });
        this.g.a(0);
        this.g.b((int) Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        this.g.a();
        setOnTouchListenerInternal(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1 || c.this.h == null) {
                    return false;
                }
                c.this.h();
                return true;
            }
        });
        setOnClickListenerInternal(new OnClickListener() {
            public void onClick(View view) {
                if (c.this.h != null) {
                    c.this.h();
                }
            }
        });
        this.d = new a(getContext());
        this.d.setLayoutParams(new FrameLayout.LayoutParams(100, 100, 80));
        this.d.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                if (c.this.d.c()) {
                    c.this.e();
                    return true;
                }
                c.this.f();
                return true;
            }
        });
        this.d.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (c.this.d.c()) {
                    c.this.e();
                } else {
                    c.this.f();
                }
            }
        });
        addView(this.d);
        this.f = new t(this, getContext());
        this.f.a();
    }

    private void h() {
        a(InterstitialAdActivity.class);
    }

    private boolean i() {
        return this.l && (!this.m || q.a(getContext()) == com.facebook.ads.internal.util.q.a.MOBILE_INTERNET);
    }

    private void setOnClickListenerInternal(OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
    }

    private void setOnTouchListenerInternal(OnTouchListener onTouchListener) {
        super.setOnTouchListener(onTouchListener);
    }

    public void a(int i) {
        this.a.seekTo(i);
    }

    public void a(g gVar) {
        boolean z = true;
        int i = 0;
        if (gVar == g.PREPARED) {
            this.e.a(this.a.getCurrentPosition());
            this.b.setVisibility(0);
            this.d.a(true);
        } else if (gVar == g.STARTED || gVar == g.PAUSED) {
            this.b.setVisibility(8);
            a aVar = this.d;
            if (gVar != g.PAUSED) {
                z = false;
            }
            aVar.a(z);
        } else if (gVar == g.PLAYBACK_COMPLETED || gVar == g.ERROR) {
            this.n = true;
            this.d.a(true);
            this.e.b(this.a.getCurrentPosition());
            d();
            this.b.setVisibility(0);
        }
        ProgressBar progressBar = this.c;
        if (!(gVar == g.PREPARING || gVar == g.BUFFERING)) {
            i = 8;
        }
        progressBar.setVisibility(i);
    }

    public boolean a() {
        return this.l;
    }

    public boolean b() {
        return com.facebook.ads.internal.h.d(getContext());
    }

    public boolean c() {
        return this.o;
    }

    public void d() {
        this.e = new o(getContext(), this, this.k, this.j);
    }

    public void e() {
        this.d.a(false);
        this.a.start();
        this.p.postDelayed(new Runnable() {
            public void run() {
                c.this.e.a(c.this.a.getCurrentPosition());
                if (!c.this.n) {
                    c.this.p.postDelayed(this, 250);
                }
            }
        }, 250);
    }

    public void f() {
        this.d.a(true);
        this.a.pause();
    }

    public boolean getAutoplay() {
        return this.l;
    }

    public long getInitialBufferTime() {
        return this.a.getInitialBufferTime();
    }

    public ImageView getPlaceholderView() {
        return this.b;
    }

    public String getVideoPlayReportURI() {
        return this.j;
    }

    public String getVideoTimeReportURI() {
        return this.k;
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.g.a();
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.p.removeCallbacksAndMessages(null);
        this.g.b();
    }

    public void setAutoplay(boolean z) {
        this.l = z;
    }

    public void setAutoplayOnMobile(boolean z) {
        this.m = z;
    }

    public void setControlsAnchorView(View view) {
    }

    public void setIsFullScreen(boolean z) {
        this.o = z;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
    }

    public void setVideoMPD(String str) {
        this.i = str;
        this.a.setVideoMPD(str);
    }

    public void setVideoPlayReportURI(String str) {
        this.j = str;
    }

    public void setVideoTimeReportURI(String str) {
        this.k = str;
    }

    public void setVideoURI(@Nullable String str) {
        this.h = str;
        if (str != null) {
            this.a.setup(Uri.parse(str));
            if (i()) {
                e();
            }
        }
    }

    public void setVolume(float f) {
        this.a.setRequestedVolume(f);
    }
}
