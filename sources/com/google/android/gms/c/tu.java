package com.google.android.gms.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.overlay.g;
import com.google.android.gms.c.fr.a;
import java.util.Map;
import org.json.JSONObject;

@pa
class tu extends FrameLayout implements tr {
    private static final int a = Color.argb(0, 0, 0, 0);
    private final tr b;
    private final tq c;

    public tu(tr trVar) {
        super(trVar.getContext());
        this.b = trVar;
        this.c = new tq(trVar.g(), this, this);
        ts l = this.b.l();
        if (l != null) {
            l.a((tr) this);
        }
        addView(this.b.b());
    }

    public boolean A() {
        return this.b.A();
    }

    public void B() {
        this.b.B();
    }

    public void C() {
        this.b.C();
    }

    public OnClickListener D() {
        return this.b.D();
    }

    @Nullable
    public jo E() {
        return this.b.E();
    }

    public void F() {
        setBackgroundColor(a);
        this.b.setBackgroundColor(a);
    }

    public void H() {
        this.b.H();
    }

    public void I() {
        this.b.I();
    }

    public WebView a() {
        return this.b.a();
    }

    public void a(int i) {
        this.b.a(i);
    }

    public void a(Context context) {
        this.b.a(context);
    }

    public void a(Context context, ha haVar, jb jbVar) {
        this.c.c();
        this.b.a(context, haVar, jbVar);
    }

    public void a(g gVar) {
        this.b.a(gVar);
    }

    public void a(a aVar) {
        this.b.a(aVar);
    }

    public void a(ha haVar) {
        this.b.a(haVar);
    }

    public void a(@Nullable jo joVar) {
        this.b.a(joVar);
    }

    public void a(tw twVar) {
        this.b.a(twVar);
    }

    public void a(String str) {
        this.b.a(str);
    }

    public void a(String str, kr krVar) {
        this.b.a(str, krVar);
    }

    public void a(String str, String str2) {
        this.b.a(str, str2);
    }

    public void a(String str, Map<String, ?> map) {
        this.b.a(str, (Map) map);
    }

    public void a(String str, JSONObject jSONObject) {
        this.b.a(str, jSONObject);
    }

    public void a(boolean z) {
        this.b.a(z);
    }

    public View b() {
        return this;
    }

    public void b(int i) {
        this.b.b(i);
    }

    public void b(g gVar) {
        this.b.b(gVar);
    }

    public void b(String str) {
        this.b.b(str);
    }

    public void b(String str, kr krVar) {
        this.b.b(str, krVar);
    }

    public void b(String str, JSONObject jSONObject) {
        this.b.b(str, jSONObject);
    }

    public void b(boolean z) {
        this.b.b(z);
    }

    public void c() {
        this.b.c();
    }

    public void c(boolean z) {
        this.b.c(z);
    }

    public void d() {
        this.b.d();
    }

    public void d(boolean z) {
        this.b.d(z);
    }

    public void destroy() {
        this.b.destroy();
    }

    public void e() {
        this.b.e();
    }

    public Activity f() {
        return this.b.f();
    }

    public Context g() {
        return this.b.g();
    }

    public d h() {
        return this.b.h();
    }

    public g i() {
        return this.b.i();
    }

    public g j() {
        return this.b.j();
    }

    public ha k() {
        return this.b.k();
    }

    public ts l() {
        return this.b.l();
    }

    public void loadData(String str, String str2, String str3) {
        this.b.loadData(str, str2, str3);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.b.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void loadUrl(String str) {
        this.b.loadUrl(str);
    }

    public boolean m() {
        return this.b.m();
    }

    public cm n() {
        return this.b.n();
    }

    public tc o() {
        return this.b.o();
    }

    public void onPause() {
        this.c.b();
        this.b.onPause();
    }

    public void onResume() {
        this.b.onResume();
    }

    public boolean p() {
        return this.b.p();
    }

    public int q() {
        return this.b.q();
    }

    public boolean r() {
        return this.b.r();
    }

    public void s() {
        this.c.c();
        this.b.s();
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
        this.b.setOnTouchListener(onTouchListener);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.b.setWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.b.setWebViewClient(webViewClient);
    }

    public void stopLoading() {
        this.b.stopLoading();
    }

    public boolean t() {
        return this.b.t();
    }

    public boolean u() {
        return this.b.u();
    }

    public String v() {
        return this.b.v();
    }

    public tq w() {
        return this.c;
    }

    public iz x() {
        return this.b.x();
    }

    public ja y() {
        return this.b.y();
    }

    public tw z() {
        return this.b.z();
    }
}
