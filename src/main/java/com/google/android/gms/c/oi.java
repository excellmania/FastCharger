package com.google.android.gms.c;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.v;
import org.apache.http.protocol.HTTP;

@pa
public class oi implements Runnable {
    protected final tr a;
    protected boolean b;
    protected boolean c;
    private final Handler d;
    private final long e;
    private long f;
    private com.google.android.gms.c.ts.a g;
    private final int h;
    private final int i;

    protected final class a extends AsyncTask<Void, Void, Boolean> {
        private final WebView b;
        private Bitmap c;

        public a(WebView webView) {
            this.b = webView;
        }

        /* Access modifiers changed, original: protected|varargs|declared_synchronized */
        /* renamed from: a */
        public synchronized Boolean doInBackground(Void... voidArr) {
            Boolean valueOf;
            int width = this.c.getWidth();
            int height = this.c.getHeight();
            if (width == 0 || height == 0) {
                valueOf = Boolean.valueOf(false);
            } else {
                int i = 0;
                for (int i2 = 0; i2 < width; i2 += 10) {
                    for (int i3 = 0; i3 < height; i3 += 10) {
                        if (this.c.getPixel(i2, i3) != 0) {
                            i++;
                        }
                    }
                }
                valueOf = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
            }
            return valueOf;
        }

        /* Access modifiers changed, original: protected */
        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            oi.c(oi.this);
            if (bool.booleanValue() || oi.this.c() || oi.this.f <= 0) {
                oi.this.c = bool.booleanValue();
                oi.this.g.a(oi.this.a, true);
            } else if (oi.this.f > 0) {
                if (sz.a(2)) {
                    sz.b("Ad not detected, scheduling another run.");
                }
                oi.this.d.postDelayed(oi.this, oi.this.e);
            }
        }

        /* Access modifiers changed, original: protected|declared_synchronized */
        public synchronized void onPreExecute() {
            this.c = Bitmap.createBitmap(oi.this.i, oi.this.h, Config.ARGB_8888);
            this.b.setVisibility(0);
            this.b.measure(MeasureSpec.makeMeasureSpec(oi.this.i, 0), MeasureSpec.makeMeasureSpec(oi.this.h, 0));
            this.b.layout(0, 0, oi.this.i, oi.this.h);
            this.b.draw(new Canvas(this.c));
            this.b.invalidate();
        }
    }

    public oi(com.google.android.gms.c.ts.a aVar, tr trVar, int i, int i2) {
        this(aVar, trVar, i, i2, 200, 50);
    }

    public oi(com.google.android.gms.c.ts.a aVar, tr trVar, int i, int i2, long j, long j2) {
        this.e = j;
        this.f = j2;
        this.d = new Handler(Looper.getMainLooper());
        this.a = trVar;
        this.g = aVar;
        this.b = false;
        this.c = false;
        this.h = i2;
        this.i = i;
    }

    static /* synthetic */ long c(oi oiVar) {
        long j = oiVar.f - 1;
        oiVar.f = j;
        return j;
    }

    public void a() {
        this.d.postDelayed(this, this.e);
    }

    public void a(pj pjVar) {
        a(pjVar, new ud(this, this.a, pjVar.q));
    }

    public void a(pj pjVar, ud udVar) {
        this.a.setWebViewClient(udVar);
        this.a.loadDataWithBaseURL(TextUtils.isEmpty(pjVar.b) ? null : v.e().a(pjVar.b), pjVar.c, "text/html", HTTP.UTF_8, null);
    }

    public synchronized void b() {
        this.b = true;
    }

    public synchronized boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.c;
    }

    public void run() {
        if (this.a == null || c()) {
            this.g.a(this.a, true);
        } else {
            new a(this.a.a()).execute(new Void[0]);
        }
    }
}
