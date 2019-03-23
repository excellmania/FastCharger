package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.internal.g;
import com.facebook.ads.internal.h.f;
import com.facebook.ads.internal.h.i;
import com.facebook.ads.internal.h.j;
import com.facebook.ads.internal.h.j.a;
import com.facebook.ads.internal.h.q;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.c;

public class InterstitialAdActivity extends Activity {
    public static final String AUTOPLAY = "autoplay";
    public static final String PREDEFINED_ORIENTATION_KEY = "predefinedOrientationKey";
    public static final String SKIP_DELAY_SECONDS_KEY = "skipAfterSeconds";
    public static final String VIDEO_MPD = "videoMPD";
    public static final String VIDEO_PLAY_REPORT_MS = "videoPlayReportMS";
    public static final String VIDEO_PLAY_REPORT_URL = "videoPlayReportURL";
    public static final String VIDEO_SEEK_TIME = "videoSeekTime";
    public static final String VIDEO_TIME_REPORT_URL = "videoTimeReportURL";
    public static final String VIDEO_URL = "videoURL";
    public static final String VIEW_TYPE = "viewType";
    private RelativeLayout a;
    private g b;
    private int c = -1;
    private String d;
    private Type e;
    private long f;
    private long g;
    private int h;
    private j i;

    public enum Type {
        DISPLAY,
        VIDEO,
        BROWSER
    }

    private void a(Intent intent, Bundle bundle) {
        if (bundle != null) {
            this.c = bundle.getInt(PREDEFINED_ORIENTATION_KEY, -1);
            this.d = bundle.getString("adInterstitialUniqueId");
            this.e = (Type) bundle.getSerializable(VIEW_TYPE);
            return;
        }
        this.c = intent.getIntExtra(PREDEFINED_ORIENTATION_KEY, -1);
        this.d = intent.getStringExtra("adInterstitialUniqueId");
        this.e = (Type) intent.getSerializableExtra(VIEW_TYPE);
        this.h = intent.getIntExtra(SKIP_DELAY_SECONDS_KEY, 0) * 1000;
    }

    private void a(String str) {
        LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(str + ":" + this.d));
    }

    private void a(String str, int i) {
        Intent intent = new Intent(str);
        intent.putExtra(VIDEO_SEEK_TIME, i);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public void finish() {
        if (this.i != null) {
            if (this.e == Type.VIDEO) {
                a("videoInterstitialDismissed", ((q) this.i).d());
            }
            this.i.c();
            this.i = null;
        }
        this.a.removeAllViews();
        a("com.facebook.ads.interstitial.dismissed");
        super.finish();
    }

    public void onBackPressed() {
        long currentTimeMillis = System.currentTimeMillis();
        this.g += currentTimeMillis - this.f;
        this.f = currentTimeMillis;
        if (this.g > ((long) this.h)) {
            super.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        this.a = new RelativeLayout(this);
        this.a.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        setContentView(this.a, new LayoutParams(-1, -1));
        Intent intent = getIntent();
        if (intent.getBooleanExtra("useNativeCloseButton", false)) {
            this.b = new g(this);
            this.b.setId(100002);
            this.b.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    InterstitialAdActivity.this.finish();
                }
            });
        }
        a(intent, bundle);
        if (this.e == Type.VIDEO) {
            q qVar = new q(this, new a() {
                public void a(View view) {
                    InterstitialAdActivity.this.a.addView(view);
                    if (InterstitialAdActivity.this.b != null) {
                        InterstitialAdActivity.this.a.addView(InterstitialAdActivity.this.b);
                    }
                }

                public void a(String str) {
                    InterstitialAdActivity.this.a(str);
                }
            });
            qVar.a(this.a);
            this.i = qVar;
        } else if (this.e == Type.DISPLAY) {
            this.i = new i(this, new a() {
                public void a(View view) {
                    InterstitialAdActivity.this.a.addView(view);
                    if (InterstitialAdActivity.this.b != null) {
                        InterstitialAdActivity.this.a.addView(InterstitialAdActivity.this.b);
                    }
                }

                public void a(String str) {
                    InterstitialAdActivity.this.a(str);
                }
            });
        } else if (this.e == Type.BROWSER) {
            this.i = new f(this, new a() {
                public void a(View view) {
                    InterstitialAdActivity.this.a.addView(view);
                    if (InterstitialAdActivity.this.b != null) {
                        InterstitialAdActivity.this.a.addView(InterstitialAdActivity.this.b);
                    }
                }

                public void a(String str) {
                    InterstitialAdActivity.this.a(str);
                }
            });
        } else {
            c.a(b.a(null, "Unable to infer viewType from intent or savedInstanceState"));
            a("com.facebook.ads.interstitial.error");
            finish();
            return;
        }
        this.i.a(intent, bundle);
        a("com.facebook.ads.interstitial.displayed");
        this.f = System.currentTimeMillis();
    }

    public void onPause() {
        this.g += System.currentTimeMillis() - this.f;
        if (this.i != null) {
            this.i.a();
        }
        super.onPause();
    }

    public void onRestart() {
        super.onRestart();
    }

    public void onResume() {
        super.onResume();
        this.f = System.currentTimeMillis();
        if (this.i != null) {
            this.i.b();
        }
    }

    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.i != null) {
            this.i.a(bundle);
        }
        bundle.putInt(PREDEFINED_ORIENTATION_KEY, this.c);
        bundle.putString("adInterstitialUniqueId", this.d);
        bundle.putSerializable(VIEW_TYPE, this.e);
    }

    public void onStart() {
        super.onStart();
        if (this.c != -1) {
            setRequestedOrientation(this.c);
        }
    }
}
