package hizli.batarya.sarjetme.app;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView.Type;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.NativeAdsManager.Listener;
import org.apache.http.protocol.HTTP;

public class AboutActivity extends AppCompatActivity implements Listener {
    Toolbar a;
    CardView b;
    CardView c;
    CardView d;
    Button e;
    Button f;
    NativeAdsManager g;
    NativeAdScrollView h;
    Intent i;

    public static String a() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? a(str2) : a(str) + " " + str2;
    }

    private static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            char[] toCharArray = str.toCharArray();
            str = "";
            int length = toCharArray.length;
            int i = 0;
            Object obj = 1;
            while (i < length) {
                String str2;
                char c = toCharArray[i];
                if (obj == null || !Character.isLetter(c)) {
                    if (Character.isWhitespace(c)) {
                        obj = 1;
                    }
                    str2 = str + c;
                } else {
                    str2 = str + Character.toUpperCase(c);
                    obj = null;
                }
                i++;
                str = str2;
            }
        }
        return str;
    }

    private void b() {
        getSupportActionBar().setTitle((CharSequence) "5x Hızlı Şarj Etme Hakkında");
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    private void c() {
        this.b = (CardView) findViewById(R.id.about_1);
        this.c = (CardView) findViewById(R.id.CardViewShare);
        this.e = (Button) findViewById(R.id.btn_feedbak);
        this.f = (Button) findViewById(R.id.btn_ratenow);
        this.d = (CardView) findViewById(R.id.CardViewRate);
        this.b.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.c.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.d.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.b.setCardElevation(0.0f);
        this.d.setCardElevation(0.0f);
        this.c.setCardElevation(0.0f);
        this.b.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.i = new Intent("android.intent.action.VIEW");
                AboutActivity.this.i.setData(Uri.parse("market://search?q=pub:un4saken"));
                if (AboutActivity.this.getPackageManager().queryIntentActivities(AboutActivity.this.i, 65536).size() >= 1) {
                    AboutActivity.this.startActivity(AboutActivity.this.i);
                }
            }
        });
        this.f.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                try {
                    AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + AboutActivity.this.getPackageName())));
                } catch (ActivityNotFoundException e) {
                    AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + AboutActivity.this.getPackageName())));
                }
            }
        });
        this.e.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                AboutActivity.this.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.heightPixels;
                int i2 = displayMetrics.widthPixels;
                PackageInfo packageInfo = null;
                try {
                    packageInfo = AboutActivity.this.getApplicationContext().getPackageManager().getPackageInfo(AboutActivity.this.getPackageName(), 0);
                } catch (NameNotFoundException e) {
                    e.printStackTrace();
                }
                String str = packageInfo.versionName;
                AboutActivity.this.i = new Intent("android.intent.action.SEND");
                AboutActivity.this.i.setType("message/rfc822");
                AboutActivity.this.i.putExtra("android.intent.extra.EMAIL", new String[]{"un4saken@hotmail.co.uk"});
                AboutActivity.this.i.putExtra("android.intent.extra.SUBJECT", AboutActivity.this.getResources().getString(R.string.app_name) + str);
                AboutActivity.this.i.putExtra("android.intent.extra.TEXT", "\n Device :" + AboutActivity.a() + "\n" + " Versiyon:" + VERSION.SDK_INT + "\n" + " Ekran Yüksekliği  :" + i + "px" + "\n" + " Ekran Genişliği  :" + i2 + "px" + "\n\n" + " Lütfen sorunu yazın .." + "\n");
                AboutActivity.this.startActivity(Intent.createChooser(AboutActivity.this.i, "Gönder"));
            }
        });
        this.c.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.i = new Intent();
                AboutActivity.this.i.setAction("android.intent.action.SEND");
                AboutActivity.this.i.setType(HTTP.PLAIN_TEXT_TYPE);
                AboutActivity.this.i.putExtra("android.intent.extra.TEXT", "Buraya bakın " + AboutActivity.this.getResources().getString(R.string.app_name) + ", bataryanızı süper hızlı şarj ediyor. " + AboutActivity.this.getResources().getString(R.string.app_name) + ". https://play.google.com/store/apps/details?id=" + AboutActivity.this.getPackageName());
                AboutActivity.this.startActivity(Intent.createChooser(AboutActivity.this.i, "Paylaş " + AboutActivity.this.getResources().getString(R.string.app_name)));
            }
        });
    }

    public void onAdError(AdError adError) {
    }

    public void onAdsLoaded() {
        if (this.h != null) {
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).removeView(this.h);
        }
        this.h = new NativeAdScrollView((Context) this, this.g, Type.HEIGHT_300);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).addView(this.h);
    }

    public void onBackPressed() {
        super.onBackPressed();
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(0);
        }
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_about);
        this.a = (Toolbar) findViewById(R.id.tool_bar);
        setSupportActionBar(this.a);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        b();
        c();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }
}
