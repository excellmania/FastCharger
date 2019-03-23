package hizli.batarya.sarjetme.app;

import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.fanrunqi.waveprogress.WaveProgressView;
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
import java.util.List;
import org.apache.http.protocol.HTTP;

public class FastCharger extends AppCompatActivity implements OnClickListener, Listener {
    CardView A;
    CardView B;
    CardView C;
    CardView D;
    RelativeLayout E;
    RelativeLayout F;
    RelativeLayout G;
    TextView H;
    TextView I;
    Integer J = Integer.valueOf(0);
    NativeAdsManager K;
    NativeAdScrollView L;
    Integer M;
    private int N;
    private int O;
    private int P;
    private ContentResolver Q;
    private Window R;
    g a;
    Toolbar b;
    WaveProgressView c;
    BroadcastReceiver d;
    ImageView e;
    ImageView f;
    ImageView g;
    ImageView h;
    ImageView i;
    ImageView j;
    ImageView k;
    ImageView l;
    ImageView m;
    Animation n;
    BluetoothAdapter o;
    RelativeLayout p;
    RelativeLayout q;
    Button r;
    AudioManager s;
    RelativeLayout t;
    RelativeLayout u;
    LinearLayout v;
    Button w;
    Button x;
    Intent y;
    CardView z;

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

    private void a(int i) {
        int i2;
        switch (i) {
            case 0:
                i2 = 10000;
                break;
            case 1:
                i2 = 20000;
                break;
            case 2:
                i2 = 30000;
                break;
            case 3:
                i2 = 40000;
                break;
            default:
                i2 = -1;
                break;
        }
        System.putInt(getContentResolver(), "screen_off_timeout", i2);
    }

    private static boolean a(Context context) {
        return System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static String d() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? a(str2) : a(str) + " " + str2;
    }

    private void e() {
        this.h.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.j.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.m.setOnClickListener(this);
        this.D.setOnClickListener(this);
        this.w.setOnClickListener(this);
        this.x.setOnClickListener(this);
        this.G.setOnClickListener(this);
    }

    private void f() {
        this.c = (WaveProgressView) findViewById(R.id.waveProgressbar);
        this.e = (ImageView) findViewById(R.id.FirstTickleProcess);
        this.f = (ImageView) findViewById(R.id.SecondTickleProcess);
        this.g = (ImageView) findViewById(R.id.ThirdTickleProcess);
        this.h = (ImageView) findViewById(R.id.tool_wifi);
        this.m = (ImageView) findViewById(R.id.tool_rotate);
        this.j = (ImageView) findViewById(R.id.tool_brightness);
        this.k = (ImageView) findViewById(R.id.tool_bluetooth);
        this.l = (ImageView) findViewById(R.id.tool_mode);
        this.i = (ImageView) findViewById(R.id.tool_timeout);
        this.r = (Button) findViewById(R.id.StartFastCharger);
        this.p = (RelativeLayout) findViewById(R.id.main_lout_toolsview);
        this.q = (RelativeLayout) findViewById(R.id.main_lout_tickleview);
        this.t = (RelativeLayout) findViewById(R.id.beforeFullCharge);
        this.u = (RelativeLayout) findViewById(R.id.afterFullCharge);
        this.z = (CardView) findViewById(R.id.CardViewRate);
        this.A = (CardView) findViewById(R.id.CardViewBattery);
        this.B = (CardView) findViewById(R.id.CardViewTickleview);
        this.C = (CardView) findViewById(R.id.CardViewTools);
        this.v = (LinearLayout) findViewById(R.id.NativeAdContainer);
        this.D = (CardView) findViewById(R.id.CardViewShare);
        this.E = (RelativeLayout) findViewById(R.id.ratenow);
        this.F = (RelativeLayout) findViewById(R.id.sharenow);
        this.w = (Button) findViewById(R.id.btn_feedbak);
        this.x = (Button) findViewById(R.id.btn_ratenow);
        this.G = (RelativeLayout) findViewById(R.id.AlertLout);
        this.H = (TextView) findViewById(R.id.AlertText);
        this.I = (TextView) findViewById(R.id.PowerType);
    }

    private void g() {
        this.z.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.A.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.B.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.C.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.D.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.A.setCardElevation(0.0f);
        this.C.setCardElevation(0.0f);
        this.B.setCardElevation(0.0f);
        this.z.setCardElevation(0.0f);
        this.D.setCardElevation(0.0f);
    }

    private void h() {
        this.d = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                int i = -1;
                if (intent.getAction() == "android.intent.action.BATTERY_CHANGED") {
                    int intExtra = intent.getIntExtra("level", -1);
                    int intExtra2 = intent.getIntExtra("scale", -1);
                    int intExtra3 = intent.getIntExtra("status", -1);
                    if (intExtra >= 0 && intExtra2 > 0) {
                        i = (intExtra * 100) / intExtra2;
                        Log.e("%", "" + i);
                    }
                    FastCharger.this.c.setMaxProgress(100);
                    FastCharger.this.c.a(i, String.valueOf(i) + "%");
                    FastCharger.this.c.a(8.0f, 130.0f);
                    FastCharger.this.c.a("#4D000000", 70);
                    FastCharger.this.c.setWaveColor("#4D76FF03");
                    FastCharger.this.c.setmWaveSpeed(15);
                    FastCharger.this.e.setVisibility(8);
                    FastCharger.this.f.setVisibility(8);
                    FastCharger.this.g.setVisibility(8);
                    if (i <= 90) {
                        FastCharger.this.e.startAnimation(FastCharger.this.n);
                        FastCharger.this.f.clearAnimation();
                        FastCharger.this.g.clearAnimation();
                        FastCharger.this.e.setVisibility(0);
                        FastCharger.this.f.setVisibility(8);
                        FastCharger.this.g.setVisibility(8);
                    }
                    if (i <= 98 && i >= 91) {
                        FastCharger.this.f.startAnimation(FastCharger.this.n);
                        FastCharger.this.e.clearAnimation();
                        FastCharger.this.g.clearAnimation();
                        FastCharger.this.f.setVisibility(0);
                        FastCharger.this.e.setVisibility(8);
                        FastCharger.this.g.setVisibility(8);
                    }
                    if (i >= 99) {
                        FastCharger.this.g.startAnimation(FastCharger.this.n);
                        FastCharger.this.e.clearAnimation();
                        FastCharger.this.f.clearAnimation();
                        FastCharger.this.g.setVisibility(0);
                        FastCharger.this.e.setVisibility(8);
                        FastCharger.this.f.setVisibility(8);
                    }
                    switch (intExtra3) {
                        case 1:
                            FastCharger.this.I.setText("Priz");
                            break;
                        case 2:
                            FastCharger.this.I.setText("USB");
                            break;
                        case 5:
                            FastCharger.this.i();
                            break;
                    }
                }
                if (intent.getAction() == "android.intent.action.ACTION_POWER_DISCONNECTED") {
                    context.unregisterReceiver(this);
                    FastCharger.this.finish();
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        IntentFilter intentFilter2 = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
        registerReceiver(this.d, intentFilter);
        registerReceiver(this.d, intentFilter2);
    }

    private void i() {
        this.t.setVisibility(8);
        this.u.setVisibility(0);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.slide_in);
        final Animation loadAnimation2 = AnimationUtils.loadAnimation(this, R.anim.slide_in);
        this.z.setVisibility(0);
        this.z.startAnimation(loadAnimation);
        loadAnimation.setAnimationListener(new AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                FastCharger.this.D.setVisibility(0);
                FastCharger.this.D.startAnimation(loadAnimation2);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
    }

    private void j() {
        if (((WifiManager) getSystemService("wifi")).isWifiEnabled()) {
            this.h.setImageResource(R.drawable.ic_tool_wifi_on);
        } else {
            this.h.setImageResource(R.drawable.ic_tool_wifi_off);
        }
        if (this.O == 1) {
            this.m.setImageResource(R.drawable.ic_tool_rotate_autorotate);
        } else {
            this.m.setImageResource(R.drawable.ic_tool_rotate_portiat);
        }
        this.o = BluetoothAdapter.getDefaultAdapter();
        if (this.o != null) {
            if (this.o.isEnabled()) {
                this.k.setImageResource(R.drawable.ic_tool_bluetooth_on);
            } else {
                this.k.setImageResource(R.drawable.ic_tool_bluetooth_off);
            }
        }
        if (this.N > 20) {
            this.j.setImageResource(R.drawable.ic_tool_brightness_on);
        } else {
            this.j.setImageResource(R.drawable.ic_tool_brightness_off);
        }
        if (this.P == 10000) {
            this.i.setImageResource(R.drawable.ic_tool_timeout_ten);
        } else if (this.P == 20000) {
            this.i.setImageResource(R.drawable.ic_tool_timeout_twenty);
        } else if (this.P == 30000) {
            this.i.setImageResource(R.drawable.ic_tool_timeout_thirty);
        } else if (this.P == 40000) {
            this.i.setImageResource(R.drawable.ic_tool_timeout_fourty);
        } else {
            this.i.setImageResource(R.drawable.ic_tool_timeout_fourty);
            a(3);
            this.P = 40000;
        }
        this.s = (AudioManager) getSystemService("audio");
        switch (this.s.getRingerMode()) {
            case 0:
                this.l.setImageResource(R.drawable.ic_tool_profile_silent);
                this.M = Integer.valueOf(0);
                return;
            case 1:
                this.l.setImageResource(R.drawable.ic_tool_profile_vibrate);
                this.M = Integer.valueOf(1);
                return;
            case 2:
                this.l.setImageResource(R.drawable.ic_tool_profile_normal);
                this.M = Integer.valueOf(2);
                return;
            default:
                return;
        }
    }

    public void a() {
        this.J = Integer.valueOf(0);
        if (b().booleanValue()) {
            this.J = Integer.valueOf(this.J.intValue() + 1);
        }
        if (Boolean.valueOf(((LocationManager) getSystemService("location")).isProviderEnabled("gps")).booleanValue()) {
            this.J = Integer.valueOf(this.J.intValue() + 1);
        }
        if (!a(getApplicationContext())) {
            this.J = Integer.valueOf(this.J.intValue() + 1);
        }
        this.H.setText(String.valueOf(this.J));
        if (this.J.intValue() == 0) {
            this.G.setVisibility(8);
        }
    }

    public Boolean b() {
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

    public void c() {
        List<ApplicationInfo> installedApplications = getPackageManager().getInstalledApplications(0);
        ActivityManager activityManager = (ActivityManager) getApplicationContext().getSystemService("activity");
        for (ApplicationInfo applicationInfo : installedApplications) {
            Log.e("pakages", installedApplications + "");
            if ((applicationInfo.flags & 1) != 1) {
                activityManager.killBackgroundProcesses(applicationInfo.packageName);
            }
        }
        if (this.N > 20) {
            System.putInt(this.Q, "screen_brightness", 20);
            LayoutParams attributes = this.R.getAttributes();
            attributes.screenBrightness = 20.0f;
            this.R.setAttributes(attributes);
            this.j.setImageResource(R.drawable.ic_tool_brightness_off);
            this.N = 20;
        }
        ((WifiManager) getSystemService("wifi")).setWifiEnabled(false);
        this.h.setImageResource(R.drawable.ic_tool_wifi_off);
        this.o = BluetoothAdapter.getDefaultAdapter();
        if (this.o != null && this.o.isEnabled()) {
            this.o.disable();
        }
        System.putInt(getContentResolver(), "accelerometer_rotation", 0);
        this.m.setImageResource(R.drawable.ic_tool_rotate_portiat);
        this.s = (AudioManager) getSystemService("audio");
        this.s.setRingerMode(0);
        this.l.setImageResource(R.drawable.ic_tool_profile_silent);
        a(0);
        this.P = 10000;
        this.i.setImageResource(R.drawable.ic_tool_timeout_ten);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.fadein);
        this.r.startAnimation(loadAnimation);
        loadAnimation.setAnimationListener(new AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                FastCharger.this.r.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
    }

    public void onAdError(AdError adError) {
    }

    public void onAdsLoaded() {
        if (this.L != null) {
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
            ((LinearLayout) findViewById(R.id.NativeAdContainer)).removeView(this.L);
        }
        this.L = new NativeAdScrollView((Context) this, this.K, Type.HEIGHT_300);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).setVisibility(0);
        ((LinearLayout) findViewById(R.id.NativeAdContainer)).addView(this.L);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_feedbak /*2131624086*/:
                DisplayMetrics displayMetrics = new DisplayMetrics();
                getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.heightPixels;
                int i2 = displayMetrics.widthPixels;
                PackageInfo packageInfo = null;
                try {
                    packageInfo = getApplicationContext().getPackageManager().getPackageInfo(getPackageName(), 0);
                } catch (NameNotFoundException e) {
                    e.printStackTrace();
                }
                String str = packageInfo.versionName;
                this.y = new Intent("android.intent.action.SEND");
                this.y.setType("message/rfc822");
                this.y.putExtra("android.intent.extra.EMAIL", new String[]{"un4saken@hotmail.co.uk"});
                this.y.putExtra("android.intent.extra.SUBJECT", getResources().getString(R.string.app_name) + str);
                this.y.putExtra("android.intent.extra.TEXT", "\n Device :" + d() + "\n" + " Versiyon:" + VERSION.SDK_INT + "\n" + " Ekran Yüksekliği  :" + i + "px" + "\n" + " Ekran Genişliği  :" + i2 + "px" + "\n\n" + " lütfen sorununuzu yazın .." + "\n");
                startActivity(Intent.createChooser(this.y, "Gönder"));
                return;
            case R.id.btn_ratenow /*2131624087*/:
                try {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getPackageName())));
                    return;
                } catch (ActivityNotFoundException e2) {
                    startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + getPackageName())));
                    return;
                }
            case R.id.CardViewShare /*2131624088*/:
                this.y = new Intent();
                this.y.setAction("android.intent.action.SEND");
                this.y.setType(HTTP.PLAIN_TEXT_TYPE);
                this.y.putExtra("android.intent.extra.TEXT", "Buraya bakın " + getResources().getString(R.string.app_name) + ", Bu programla bataryamı 5x daha hızlı şarj edebiliyorum! https://play.google.com/store/apps/details?id=" + getPackageName());
                startActivity(Intent.createChooser(this.y, "Paylaş " + getResources().getString(R.string.app_name)));
                return;
            case R.id.AlertLout /*2131624114*/:
                this.y = new Intent(getApplicationContext(), CloseAllTools.class);
                this.y.putExtra("SetValue", 1);
                startActivity(this.y);
                return;
            case R.id.tool_wifi /*2131624121*/:
                ((WifiManager) getSystemService("wifi")).setWifiEnabled(false);
                this.h.setImageResource(R.drawable.ic_tool_wifi_off);
                return;
            case R.id.tool_bluetooth /*2131624122*/:
                this.o = BluetoothAdapter.getDefaultAdapter();
                if (this.o != null && this.o.isEnabled()) {
                    this.k.setImageResource(R.drawable.ic_tool_bluetooth_off);
                    this.o.disable();
                    return;
                }
                return;
            case R.id.tool_brightness /*2131624123*/:
                if (this.N > 20) {
                    System.putInt(this.Q, "screen_brightness", 20);
                    LayoutParams attributes = this.R.getAttributes();
                    attributes.screenBrightness = 20.0f;
                    this.R.setAttributes(attributes);
                    this.j.setImageResource(R.drawable.ic_tool_brightness_off);
                    this.N = 20;
                    return;
                }
                return;
            case R.id.tool_rotate /*2131624124*/:
                if (this.O == 1) {
                    System.putInt(getContentResolver(), "accelerometer_rotation", 0);
                    this.m.setImageResource(R.drawable.ic_tool_rotate_portiat);
                    this.O = 1;
                    return;
                }
                return;
            case R.id.tool_mode /*2131624125*/:
                this.s = (AudioManager) getSystemService("audio");
                switch (this.s.getRingerMode()) {
                    case 0:
                        return;
                    case 1:
                        this.l.setImageResource(R.drawable.ic_tool_profile_silent);
                        this.s.setRingerMode(0);
                        return;
                    case 2:
                        this.l.setImageResource(R.drawable.ic_tool_profile_silent);
                        this.s.setRingerMode(0);
                        return;
                    default:
                        this.l.setImageResource(R.drawable.ic_tool_profile_silent);
                        this.s.setRingerMode(0);
                        return;
                }
            case R.id.tool_timeout /*2131624126*/:
                if (this.P == 10000) {
                    this.i.setImageResource(R.drawable.ic_tool_timeout_ten);
                    a(0);
                    this.P = 10000;
                    return;
                }
                this.i.setImageResource(R.drawable.ic_tool_timeout_ten);
                a(0);
                this.P = 10000;
                return;
            case R.id.StartFastCharger /*2131624154*/:
                Animation loadAnimation = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_down);
                final Animation loadAnimation2 = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.slide_up);
                this.C.startAnimation(loadAnimation);
                loadAnimation.setAnimationListener(new AnimationListener() {
                    public void onAnimationEnd(Animation animation) {
                        FastCharger.this.C.setVisibility(8);
                        FastCharger.this.B.setVisibility(0);
                        FastCharger.this.B.startAnimation(loadAnimation2);
                        FastCharger.this.c();
                    }

                    public void onAnimationRepeat(Animation animation) {
                    }

                    public void onAnimationStart(Animation animation) {
                    }
                });
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
        setContentView((int) R.layout.fast_charger);
        this.b = (Toolbar) findViewById(R.id.tool_bar);
        this.b.setTitleTextColor(-1);
        setSupportActionBar(this.b);
        getSupportActionBar().setTitle(getResources().getString(R.string.app_name));
        getSupportActionBar().setDisplayHomeAsUpEnabled(false);
        this.Q = getContentResolver();
        this.R = getWindow();
        f();
        h();
        j();
        e();
        a();
        g();
        this.a = new g(this);
        this.a.a("ca-app-pub-3014314167355758/6458894823");
        AdView adView = (AdView) findViewById(R.id.adView);
        c a = new a().a();
        adView.a(a);
        this.a.a(a);
        this.n = AnimationUtils.loadAnimation(this, R.anim.rotate_clockwise);
        this.Q = getContentResolver();
        this.R = getWindow();
        try {
            System.putInt(this.Q, "screen_brightness_mode", 0);
            this.N = System.getInt(this.Q, "screen_brightness");
            this.O = System.getInt(this.Q, "accelerometer_rotation");
            this.P = System.getInt(this.Q, "screen_off_timeout");
            if (this.P > 40000) {
                a(3);
                this.P = 40000;
            }
        } catch (SettingNotFoundException e) {
            Log.e("Hata", "Ekran parlaklığı ayarı yapılamıyor");
            e.printStackTrace();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        this.s = (AudioManager) getSystemService("audio");
        this.s.setRingerMode(this.M.intValue());
        a(3);
        super.onDestroy();
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        super.onPause();
        j();
    }

    /* Access modifiers changed, original: protected */
    public void onRestart() {
        super.onRestart();
        j();
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
        j();
    }
}
