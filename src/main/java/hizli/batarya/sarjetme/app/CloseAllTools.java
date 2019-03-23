package hizli.batarya.sarjetme.app;

import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.System;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView.Type;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeAdsManager.Listener;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.g;
import java.lang.reflect.Method;

public class CloseAllTools extends AppCompatActivity implements OnClickListener, Listener {
    g a;
    CardView b;
    CardView c;
    CardView d;
    Toolbar e;
    Button f;
    Button g;
    Button h;
    LocationManager i;
    Boolean j;
    TextView k;
    NativeAdsManager l;
    NativeAdScrollView m;
    Integer n;
    TextView o;
    TextView p;
    TextView q;
    TextView r;
    TextView s;
    TextView t;

    private static boolean a(Context context) {
        return System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    private void b() {
        this.b.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.c.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.d.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.b.setCardElevation(0.0f);
        this.c.setCardElevation(0.0f);
        this.d.setCardElevation(0.0f);
    }

    private void c() {
        if (!a().booleanValue()) {
            this.d.setVisibility(8);
        }
        this.i = (LocationManager) getSystemService("location");
        this.j = Boolean.valueOf(this.i.isProviderEnabled("gps"));
        if (!this.j.booleanValue()) {
            this.b.setVisibility(8);
        }
        if (a(getApplicationContext())) {
            this.c.setVisibility(8);
        }
        if (this.b.getVisibility() == 8 && this.c.getVisibility() == 8 && this.d.getVisibility() == 8) {
            this.k.setVisibility(0);
        }
    }

    private void d() {
        Intent intent = new Intent("android.settings.SETTINGS");
        intent.addFlags(268435456);
        startActivity(intent);
    }

    private void e() {
        startActivity(new Intent("android.settings.AIRPLANE_MODE_SETTINGS"));
    }

    private void f() {
        startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    public Boolean a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        try {
            Method declaredMethod = Class.forName(connectivityManager.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return (Boolean) declaredMethod.invoke(connectivityManager, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void onAdError(AdError adError) {
    }

    public void onAdsLoaded() {
        if (this.m != null) {
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).removeView(this.m);
        }
        this.m = new NativeAdScrollView((Context) this, this.l, Type.HEIGHT_300);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).addView(this.m);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.LocationCardView /*2131624093*/:
                f();
                return;
            case R.id.LocationTurnOff /*2131624096*/:
                f();
                return;
            case R.id.AroplaneCardView /*2131624097*/:
                e();
                return;
            case R.id.AroplaneTurnOn /*2131624102*/:
                e();
                return;
            case R.id.MoblieDataCardView /*2131624103*/:
                d();
                return;
            case R.id.MoblieDataTurnOff /*2131624108*/:
                d();
                return;
            default:
                return;
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        this.n = Integer.valueOf(getIntent().getIntExtra("SetValue", 0));
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(0);
        }
        setContentView((int) R.layout.activity_close_all_tools);
        this.e = (Toolbar) findViewById(R.id.tool_bar);
        this.e.setTitleTextColor(-1);
        setSupportActionBar(this.e);
        if (this.n.intValue() == 0) {
            getSupportActionBar().setTitle((CharSequence) "Pil Koruyucu");
        } else {
            getSupportActionBar().setTitle((CharSequence) "Pil Şarj Etme");
        }
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.b = (CardView) findViewById(R.id.LocationCardView);
        this.c = (CardView) findViewById(R.id.AroplaneCardView);
        this.d = (CardView) findViewById(R.id.MoblieDataCardView);
        this.f = (Button) findViewById(R.id.LocationTurnOff);
        this.g = (Button) findViewById(R.id.AroplaneTurnOn);
        this.h = (Button) findViewById(R.id.MoblieDataTurnOff);
        this.k = (TextView) findViewById(R.id.txtNoMoreIssue);
        this.o = (TextView) findViewById(R.id.TxtTitleLocation);
        this.p = (TextView) findViewById(R.id.txtDicLocation);
        this.q = (TextView) findViewById(R.id.TxtTitleAroplane);
        this.r = (TextView) findViewById(R.id.txtDicAroplane);
        this.s = (TextView) findViewById(R.id.TxtTitleMobileData);
        this.t = (TextView) findViewById(R.id.txtDicMobileData);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
        b();
        c();
        this.a = new g(this);
        this.a.a("ca-app-pub-3014314167355758/6458894823");
        AdView adView = (AdView) findViewById(R.id.adView);
        c a = new a().a();
        adView.a(a);
        this.a.a(a);
        if (this.n.intValue() == 0) {
            this.o.setText("2x Pil Koruyucu");
            this.p.setText("GPS'i devre dışı bırakırsanız bataryanız 2x daha çok korunacak");
            this.q.setText("3x Pil Koruyucu");
            this.r.setText("Uçak modunu kullanırsanız bataryanız 3x daha çok korunacak");
            this.s.setText("2x Pil Koruyucu");
            this.t.setText("Veri kullanımını devre dışı bırakırsanız bataryanız 2x daha çok korunacak");
            return;
        }
        this.o.setText("2x Hızlı Şarj");
        this.p.setText("GPS'i devre dışı bırakırsanız bataryanız 2x daha hızlı şarj olacak");
        this.q.setText("3x Hızlı Şarj");
        this.r.setText("Uçak modunu kullanırsanız bataryanız 3x daha hızlı şarj olacak");
        this.s.setText("2x Hızlı Şarj");
        this.t.setText("Veri kullanımını devre dışı bırakırsanız bataryanız 2x daha hızlı şarj olacak");
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return false;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    public void onPause() {
        super.onPause();
        c();
    }

    public void onResume() {
        super.onResume();
        c();
    }
}
