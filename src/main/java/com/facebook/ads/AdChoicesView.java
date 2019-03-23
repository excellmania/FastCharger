package com.facebook.ads;

import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.internal.util.h;

public class AdChoicesView extends RelativeLayout {
    private final Context a;
    private final NativeAd b;
    private final DisplayMetrics c;
    private boolean d;
    private TextView e;
    private String f;

    public AdChoicesView(Context context, NativeAd nativeAd) {
        this(context, nativeAd, false);
    }

    public AdChoicesView(Context context, NativeAd nativeAd, boolean z) {
        super(context);
        this.d = false;
        this.a = context;
        this.b = nativeAd;
        this.c = this.a.getResources().getDisplayMetrics();
        if (!this.b.isAdLoaded() || this.b.a().g()) {
            this.f = this.b.b();
            if (TextUtils.isEmpty(this.f)) {
                this.f = "AdChoices";
            }
            Image adChoicesIcon = this.b.getAdChoicesIcon();
            LayoutParams layoutParams = new LayoutParams(-2, -2);
            setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    if (!AdChoicesView.this.d) {
                        AdChoicesView.this.a();
                    } else if (!TextUtils.isEmpty(AdChoicesView.this.b.getAdChoicesLinkUrl())) {
                        h.a(AdChoicesView.this.a, Uri.parse(AdChoicesView.this.b.getAdChoicesLinkUrl()));
                    }
                    return true;
                }
            });
            this.e = new TextView(this.a);
            addView(this.e);
            LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            if (!z || adChoicesIcon == null) {
                this.d = true;
            } else {
                layoutParams2.addRule(11, a(adChoicesIcon).getId());
                layoutParams2.width = 0;
                layoutParams.width = Math.round(((float) (adChoicesIcon.getWidth() + 4)) * this.c.density);
                layoutParams.height = Math.round(((float) (adChoicesIcon.getHeight() + 2)) * this.c.density);
                this.d = false;
            }
            setLayoutParams(layoutParams);
            layoutParams2.addRule(15, -1);
            this.e.setLayoutParams(layoutParams2);
            this.e.setSingleLine();
            this.e.setText(this.f);
            this.e.setTextSize(10.0f);
            this.e.setTextColor(-4341303);
            return;
        }
        setVisibility(8);
    }

    private ImageView a(Image image) {
        ImageView imageView = new ImageView(this.a);
        addView(imageView);
        LayoutParams layoutParams = new LayoutParams(Math.round(((float) image.getWidth()) * this.c.density), Math.round(((float) image.getHeight()) * this.c.density));
        layoutParams.addRule(9);
        layoutParams.addRule(15, -1);
        layoutParams.setMargins(Math.round(4.0f * this.c.density), Math.round(this.c.density * 2.0f), Math.round(this.c.density * 2.0f), Math.round(this.c.density * 2.0f));
        imageView.setLayoutParams(layoutParams);
        NativeAd.downloadAndDisplayImage(image, imageView);
        return imageView;
    }

    private void a() {
        Paint paint = new Paint();
        paint.setTextSize(this.e.getTextSize());
        int round = Math.round(paint.measureText(this.f) + (4.0f * this.c.density));
        final int width = getWidth();
        round += width;
        this.d = true;
        AnonymousClass2 anonymousClass2 = new Animation() {
            /* Access modifiers changed, original: protected */
            public void applyTransformation(float f, Transformation transformation) {
                int i = (int) (((float) width) + (((float) (round - width)) * f));
                AdChoicesView.this.getLayoutParams().width = i;
                AdChoicesView.this.requestLayout();
                AdChoicesView.this.e.getLayoutParams().width = i - width;
                AdChoicesView.this.e.requestLayout();
            }

            public boolean willChangeBounds() {
                return true;
            }
        };
        anonymousClass2.setAnimationListener(new AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        if (AdChoicesView.this.d) {
                            AdChoicesView.this.d = false;
                            AnonymousClass1 anonymousClass1 = new Animation() {
                                /* Access modifiers changed, original: protected */
                                public void applyTransformation(float f, Transformation transformation) {
                                    int i = (int) (((float) round) + (((float) (width - round)) * f));
                                    AdChoicesView.this.getLayoutParams().width = i;
                                    AdChoicesView.this.requestLayout();
                                    AdChoicesView.this.e.getLayoutParams().width = i - width;
                                    AdChoicesView.this.e.requestLayout();
                                }

                                public boolean willChangeBounds() {
                                    return true;
                                }
                            };
                            anonymousClass1.setDuration(300);
                            anonymousClass1.setFillAfter(true);
                            AdChoicesView.this.startAnimation(anonymousClass1);
                        }
                    }
                }, 3000);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
        anonymousClass2.setDuration(300);
        anonymousClass2.setFillAfter(true);
        startAnimation(anonymousClass2);
    }
}
