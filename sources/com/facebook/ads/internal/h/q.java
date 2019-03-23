package com.facebook.ads.internal.h;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.e.c;
import com.facebook.ads.internal.h.c.a.a;
import com.facebook.ads.internal.h.c.a.d;
import com.facebook.ads.internal.util.o;

public class q implements j {
    private final InterstitialAdActivity a;
    private final m b;
    @NonNull
    private final c<d> c = new c<d>() {
        public Class<d> a() {
            return d.class;
        }

        /* renamed from: a */
        public void b(d dVar) {
            q.this.e.a(q.this.b.getCurrentPosition());
        }
    };
    private final c<a> d = new c<a>() {
        public Class<a> a() {
            return a.class;
        }

        /* renamed from: a */
        public void b(a aVar) {
            q.this.e.b(q.this.b.getCurrentPosition());
        }
    };
    private o e;

    public q(InterstitialAdActivity interstitialAdActivity, j.a aVar) {
        this.a = interstitialAdActivity;
        this.b = new m(interstitialAdActivity);
        this.b.setIsFullScreen(true);
        this.b.setVolume(1.0f);
        this.b.getEventBus().a(this.c);
        this.b.getEventBus().a(this.d);
        LayoutParams layoutParams = new LayoutParams(-1, -2);
        layoutParams.addRule(15);
        this.b.setLayoutParams(layoutParams);
        aVar.a(this.b);
    }

    public void a() {
        this.b.d();
    }

    public void a(Intent intent, Bundle bundle) {
        boolean booleanExtra = intent.getBooleanExtra(InterstitialAdActivity.AUTOPLAY, false);
        String stringExtra = intent.getStringExtra(InterstitialAdActivity.VIDEO_URL);
        String stringExtra2 = intent.getStringExtra(InterstitialAdActivity.VIDEO_MPD);
        String stringExtra3 = intent.getStringExtra(InterstitialAdActivity.VIDEO_PLAY_REPORT_URL);
        String stringExtra4 = intent.getStringExtra(InterstitialAdActivity.VIDEO_TIME_REPORT_URL);
        int intExtra = intent.getIntExtra(InterstitialAdActivity.VIDEO_SEEK_TIME, 0);
        this.b.setAutoplay(booleanExtra);
        this.e = new o(this.a, this.b, stringExtra4, stringExtra3);
        this.b.setVideoMPD(stringExtra2);
        this.b.setVideoURI(stringExtra);
        if (intExtra > 0) {
            this.b.a(intExtra);
        }
        this.b.e();
    }

    public void a(Bundle bundle) {
    }

    public void a(View view) {
        this.b.setControlsAnchorView(view);
    }

    public void b() {
        this.b.e();
    }

    public void c() {
        this.b.f();
    }

    public int d() {
        return this.b.getCurrentPosition();
    }
}
