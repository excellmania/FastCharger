package hizli.batarya.sarjetme.app;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
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
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.CardView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.lzyzsd.circleprogress.ArcProgress;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.g;
import com.onesignal.t;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.protocol.HTTP;

public class MainActivity extends AppCompatActivity implements OnClickListener {
    BroadcastReceiver A;
    Builder B;
    Builder C;
    Integer D;
    private ArcProgress E;
    private Timer F;
    private int G;
    private int H;
    private int I;
    private ContentResolver J;
    private Window K;
    g a;
    Toolbar b;
    ImageView c;
    ImageView d;
    ImageView e;
    ImageView f;
    ImageView g;
    ImageView h;
    Button i;
    BluetoothAdapter j;
    CardView k;
    CardView l;
    CardView m;
    CardView n;
    CardView o;
    Button p;
    Button q;
    TextView r;
    TextView s;
    TextView t;
    public BroadcastReceiver u = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            MainActivity.this.t.setText((intent.getIntExtra("temperature", 0) / 10) + Character.toString(176) + " C");
            MainActivity.this.s.setText((((float) intent.getIntExtra("voltage", 0)) / 1000.0f) + Character.toString(176) + " V");
            MainActivity.this.r.setText(Integer.toString(intent.getIntExtra("level", 0)));
        }
    };
    Intent v;
    AudioManager w;
    RelativeLayout x;
    TextView y;
    Integer z = Integer.valueOf(0);

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

    private void e() {
        this.k.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.l.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.m.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.n.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.o.setCardBackgroundColor(getApplicationContext().getResources().getColor(R.color.cardcolor));
        this.k.setCardElevation(0.0f);
        this.l.setCardElevation(0.0f);
        this.m.setCardElevation(0.0f);
        this.n.setCardElevation(0.0f);
        this.o.setCardElevation(0.0f);
    }

    private void f() {
        this.B = new Builder(this);
        this.B.setTitle((CharSequence) "Programı beğendiniz mi?");
        this.B.setMessage((CharSequence) "Eğer programı beğendiyseniz lütfen yorumunuzu bize iletin.");
        this.B.setPositiveButton((CharSequence) "5 Yıldız Ver", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    MainActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + MainActivity.this.getPackageName())));
                } catch (ActivityNotFoundException e) {
                    MainActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + MainActivity.this.getPackageName())));
                }
            }
        });
        this.B.setNegativeButton((CharSequence) "Çık", new DialogInterface.OnClickListener() {
            @SuppressLint({"NewApi"})
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.w = (AudioManager) MainActivity.this.getSystemService("audio");
                MainActivity.this.w.setRingerMode(MainActivity.this.D.intValue());
                MainActivity.this.a(3);
                MainActivity.this.finish();
            }
        });
        this.C = new Builder(this);
        this.C.setTitle((CharSequence) "Önemli!");
        this.C.setCancelable(false);
        this.C.setMessage((CharSequence) "Ekran Parlaklığı, Ekran Zaman Aşımı ve Ses Profillerine erişebilmemiz için izin vermeniz gerekiyor.");
        this.C.setPositiveButton((CharSequence) "TAMAM", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                intent.setData(Uri.parse("package:" + MainActivity.this.getPackageName()));
                MainActivity.this.startActivity(intent);
            }
        });
    }

    private void g() {
        this.c.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.m.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.o.setOnClickListener(this);
        this.p.setOnClickListener(this);
        this.q.setOnClickListener(this);
        this.x.setOnClickListener(this);
    }

    private void h() {
        this.A = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                int i = -1;
                context.unregisterReceiver(this);
                int intExtra = intent.getIntExtra("level", -1);
                int intExtra2 = intent.getIntExtra("scale", -1);
                if (intExtra >= 0 && intExtra2 > 0) {
                    i = (intExtra * 100) / intExtra2;
                    Log.e("%", "" + i);
                }
                final int i2 = i;
                MainActivity.this.F = new Timer();
                MainActivity.this.F.schedule(new TimerTask() {
                    public void run() {
                        MainActivity.this.runOnUiThread(new Runnable() {
                            public void run() {
                                if (MainActivity.this.E.getProgress() == i2) {
                                    MainActivity.this.E.setProgress(i2);
                                    MainActivity.this.E.setBottomText("Pil");
                                    MainActivity.this.F.cancel();
                                    return;
                                }
                                MainActivity.this.E.setProgress(MainActivity.this.E.getProgress() + 1);
                                MainActivity.this.E.setBottomText("Pil");
                            }
                        });
                    }
                }, 1000, (long) i2);
            }
        };
        registerReceiver(this.A, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    private void i() {
        if (((WifiManager) getSystemService("wifi")).isWifiEnabled()) {
            this.c.setImageResource(R.drawable.ic_tool_wifi_on);
        } else {
            this.c.setImageResource(R.drawable.ic_tool_wifi_off);
        }
        if (this.H == 1) {
            this.d.setImageResource(R.drawable.ic_tool_rotate_autorotate);
        } else {
            this.d.setImageResource(R.drawable.ic_tool_rotate_portiat);
        }
        this.j = BluetoothAdapter.getDefaultAdapter();
        if (this.j != null) {
            if (this.j.isEnabled()) {
                this.f.setImageResource(R.drawable.ic_tool_bluetooth_on);
            } else {
                this.f.setImageResource(R.drawable.ic_tool_bluetooth_off);
            }
        }
        if (this.G > 20) {
            this.e.setImageResource(R.drawable.ic_tool_brightness_on);
        } else {
            this.e.setImageResource(R.drawable.ic_tool_brightness_off);
        }
        if (this.I == 10000) {
            this.g.setImageResource(R.drawable.ic_tool_timeout_ten);
        } else if (this.I == 20000) {
            this.g.setImageResource(R.drawable.ic_tool_timeout_twenty);
        } else if (this.I == 30000) {
            this.g.setImageResource(R.drawable.ic_tool_timeout_thirty);
        } else if (this.I == 40000) {
            this.g.setImageResource(R.drawable.ic_tool_timeout_fourty);
        } else {
            this.g.setImageResource(R.drawable.ic_tool_timeout_fourty);
            a(3);
            this.I = 40000;
        }
        this.w = (AudioManager) getSystemService("audio");
        switch (this.w.getRingerMode()) {
            case 0:
                this.h.setImageResource(R.drawable.ic_tool_profile_silent);
                this.D = Integer.valueOf(0);
                return;
            case 1:
                this.h.setImageResource(R.drawable.ic_tool_profile_vibrate);
                this.D = Integer.valueOf(1);
                return;
            case 2:
                this.h.setImageResource(R.drawable.ic_tool_profile_normal);
                this.D = Integer.valueOf(2);
                return;
            default:
                return;
        }
    }

    public void b() {
        this.z = Integer.valueOf(0);
        if (c().booleanValue()) {
            this.z = Integer.valueOf(this.z.intValue() + 1);
        }
        if (Boolean.valueOf(((LocationManager) getSystemService("location")).isProviderEnabled("gps")).booleanValue()) {
            this.z = Integer.valueOf(this.z.intValue() + 1);
        }
        if (!a(getApplicationContext())) {
            this.z = Integer.valueOf(this.z.intValue() + 1);
        }
        this.y.setText(String.valueOf(this.z));
        if (this.z.intValue() == 0) {
            this.x.setVisibility(8);
        }
    }

    public Boolean c() {
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

    public void d() {
        List<ApplicationInfo> installedApplications = getPackageManager().getInstalledApplications(0);
        ActivityManager activityManager = (ActivityManager) getApplicationContext().getSystemService("activity");
        for (ApplicationInfo applicationInfo : installedApplications) {
            Log.e("pakages", installedApplications + "");
            if ((applicationInfo.flags & 1) != 1) {
                activityManager.killBackgroundProcesses(applicationInfo.packageName);
            }
        }
        ((WifiManager) getSystemService("wifi")).setWifiEnabled(false);
        this.c.setImageResource(R.drawable.ic_tool_wifi_off);
        this.j = BluetoothAdapter.getDefaultAdapter();
        if (this.j != null && this.j.isEnabled()) {
            this.j.disable();
            this.f.setImageResource(R.drawable.ic_tool_bluetooth_off);
        }
        if (this.G > 20) {
            System.putInt(this.J, "screen_brightness", 20);
            LayoutParams attributes = this.K.getAttributes();
            attributes.screenBrightness = 20.0f;
            this.K.setAttributes(attributes);
            this.e.setImageResource(R.drawable.ic_tool_brightness_off);
            this.G = 20;
        }
        System.putInt(getContentResolver(), "accelerometer_rotation", 0);
        this.d.setImageResource(R.drawable.ic_tool_rotate_portiat);
        this.w = (AudioManager) getSystemService("audio");
        this.w.setRingerMode(0);
        this.h.setImageResource(R.drawable.ic_tool_profile_silent);
        a(0);
        this.I = 10000;
        this.g.setImageResource(R.drawable.ic_tool_timeout_ten);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, R.anim.fadein);
        this.i.startAnimation(loadAnimation);
        loadAnimation.setAnimationListener(new AnimationListener() {
            public void onAnimationEnd(Animation animation) {
                MainActivity.this.i.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation) {
            }

            public void onAnimationStart(Animation animation) {
            }
        });
    }

    public void onBackPressed() {
        this.B.show();
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
                this.v = new Intent("android.intent.action.SEND");
                this.v.setType("message/rfc822");
                this.v.putExtra("android.intent.extra.EMAIL", new String[]{"un4saken@hotmail.co.uk"});
                this.v.putExtra("android.intent.extra.SUBJECT", getResources().getString(R.string.app_name) + str);
                this.v.putExtra("android.intent.extra.TEXT", "\n Device :" + a() + "\n" + " Version:" + VERSION.SDK_INT + "\n" + " Ekran Yüksekliği  :" + i + "px" + "\n" + " Ekran Genişliği  :" + i2 + "px" + "\n\n" + " Sorununuzu yazın .." + "\n");
                startActivity(Intent.createChooser(this.v, "Gönder"));
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
                this.v = new Intent();
                this.v.setAction("android.intent.action.SEND");
                this.v.setType(HTTP.PLAIN_TEXT_TYPE);
                this.v.putExtra("android.intent.extra.TEXT", "Buraya bakın " + getResources().getString(R.string.app_name) + ", Bu programla bataryamı 5x daha hızlı şarj edebiliyorum! " + getResources().getString(R.string.app_name) + ". https://play.google.com/store/apps/details?id=" + getPackageName());
                startActivity(Intent.createChooser(this.v, "Paylaş " + getResources().getString(R.string.app_name)));
                return;
            case R.id.AlertLout /*2131624114*/:
                this.v = new Intent(getApplicationContext(), CloseAllTools.class);
                this.v.putExtra("SetValue", 0);
                startActivity(this.v);
                return;
            case R.id.PowerSavingMode /*2131624117*/:
                d();
                return;
            case R.id.tool_wifi /*2131624121*/:
                WifiManager wifiManager = (WifiManager) getSystemService("wifi");
                if (wifiManager.isWifiEnabled()) {
                    wifiManager.setWifiEnabled(false);
                    this.c.setImageResource(R.drawable.ic_tool_wifi_off);
                    return;
                }
                wifiManager.setWifiEnabled(true);
                this.c.setImageResource(R.drawable.ic_tool_wifi_on);
                return;
            case R.id.tool_bluetooth /*2131624122*/:
                this.j = BluetoothAdapter.getDefaultAdapter();
                if (this.j == null) {
                    return;
                }
                if (this.j.isEnabled()) {
                    this.f.setImageResource(R.drawable.ic_tool_bluetooth_off);
                    this.j.disable();
                    return;
                }
                this.f.setImageResource(R.drawable.ic_tool_bluetooth_on);
                this.j.enable();
                return;
            case R.id.tool_brightness /*2131624123*/:
                LayoutParams attributes;
                if (this.G > 20) {
                    System.putInt(this.J, "screen_brightness", 20);
                    attributes = this.K.getAttributes();
                    attributes.screenBrightness = 20.0f;
                    this.K.setAttributes(attributes);
                    this.e.setImageResource(R.drawable.ic_tool_brightness_off);
                    this.G = 20;
                    return;
                }
                System.putInt(this.J, "screen_brightness", 254);
                attributes = this.K.getAttributes();
                attributes.screenBrightness = 254.0f;
                this.K.setAttributes(attributes);
                this.G = 254;
                this.e.setImageResource(R.drawable.ic_tool_brightness_on);
                return;
            case R.id.tool_rotate /*2131624124*/:
                if (this.H == 1) {
                    System.putInt(getContentResolver(), "accelerometer_rotation", 1);
                    this.d.setImageResource(R.drawable.ic_tool_rotate_autorotate);
                    this.H = 0;
                    return;
                }
                System.putInt(getContentResolver(), "accelerometer_rotation", 0);
                this.d.setImageResource(R.drawable.ic_tool_rotate_portiat);
                this.H = 1;
                return;
            case R.id.tool_mode /*2131624125*/:
                this.w = (AudioManager) getSystemService("audio");
                switch (this.w.getRingerMode()) {
                    case 0:
                        this.h.setImageResource(R.drawable.ic_tool_profile_vibrate);
                        this.w.setRingerMode(1);
                        return;
                    case 1:
                        this.h.setImageResource(R.drawable.ic_tool_profile_normal);
                        this.w.setRingerMode(2);
                        return;
                    case 2:
                        this.h.setImageResource(R.drawable.ic_tool_profile_silent);
                        this.w.setRingerMode(0);
                        return;
                    default:
                        return;
                }
            case R.id.tool_timeout /*2131624126*/:
                if (this.I == 10000) {
                    this.g.setImageResource(R.drawable.ic_tool_timeout_twenty);
                    a(1);
                    this.I = 20000;
                    return;
                } else if (this.I == 20000) {
                    this.g.setImageResource(R.drawable.ic_tool_timeout_thirty);
                    a(2);
                    this.I = 30000;
                    return;
                } else if (this.I == 30000) {
                    this.g.setImageResource(R.drawable.ic_tool_timeout_fourty);
                    a(3);
                    this.I = 40000;
                    return;
                } else if (this.I == 40000) {
                    this.g.setImageResource(R.drawable.ic_tool_timeout_ten);
                    a(0);
                    this.I = 10000;
                    return;
                } else {
                    this.g.setImageResource(R.drawable.ic_tool_timeout_fourty);
                    a(3);
                    this.I = 40000;
                    return;
                }
            case R.id.batteryDetail /*2131624127*/:
                this.v = new Intent(getApplicationContext(), BatteryDetailActivity.class);
                startActivity(this.v);
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
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(0);
        }
        setContentView((int) R.layout.activity_main);
        this.b = (Toolbar) findViewById(R.id.tool_bar);
        this.b.setTitleTextColor(-1);
        setSupportActionBar(this.b);
        getSupportActionBar().setTitle(getResources().getString(R.string.app_name));
        f();
        t.a((Context) this).a();
        this.a = new g(this);
        this.a.a("ca-app-pub-3014314167355758/6458894823");
        getBaseContext().getApplicationContext().sendBroadcast(new Intent("BatteryReciver"));
        this.E = (ArcProgress) findViewById(R.id.arc_progress);
        this.r = (TextView) findViewById(R.id.TxtLevel);
        this.s = (TextView) findViewById(R.id.TxtVoltage);
        this.t = (TextView) findViewById(R.id.TxtTemperature);
        this.c = (ImageView) findViewById(R.id.tool_wifi);
        this.d = (ImageView) findViewById(R.id.tool_rotate);
        this.e = (ImageView) findViewById(R.id.tool_brightness);
        this.f = (ImageView) findViewById(R.id.tool_bluetooth);
        this.g = (ImageView) findViewById(R.id.tool_timeout);
        this.h = (ImageView) findViewById(R.id.tool_mode);
        this.i = (Button) findViewById(R.id.PowerSavingMode);
        this.k = (CardView) findViewById(R.id.CardViewBatteryArc);
        this.l = (CardView) findViewById(R.id.CardViewTools);
        this.m = (CardView) findViewById(R.id.batteryDetail);
        this.n = (CardView) findViewById(R.id.CardViewRate);
        this.o = (CardView) findViewById(R.id.CardViewShare);
        this.p = (Button) findViewById(R.id.btn_feedbak);
        this.q = (Button) findViewById(R.id.btn_ratenow);
        this.x = (RelativeLayout) findViewById(R.id.AlertLout);
        this.y = (TextView) findViewById(R.id.AlertText);
        registerReceiver(this.u, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        e();
        this.J = getContentResolver();
        this.K = getWindow();
        if (VERSION.SDK_INT < 23) {
            try {
                System.putInt(this.J, "screen_brightness_mode", 0);
                this.G = System.getInt(this.J, "screen_brightness");
                this.H = System.getInt(this.J, "accelerometer_rotation");
                this.I = System.getInt(this.J, "screen_off_timeout");
                Log.e("timeout", "" + this.I);
                if (this.I > 40000) {
                    a(3);
                    this.I = 40000;
                }
                i();
            } catch (SettingNotFoundException e) {
                Log.e("Hata", "Ekran parlaklığı ayarlanamıyor");
                e.printStackTrace();
            }
        } else if (System.canWrite(this)) {
            try {
                System.putInt(this.J, "screen_brightness_mode", 0);
                this.G = System.getInt(this.J, "screen_brightness");
                this.H = System.getInt(this.J, "accelerometer_rotation");
                this.I = System.getInt(this.J, "screen_off_timeout");
                if (this.I > 40000) {
                    a(3);
                    this.I = 40000;
                }
                i();
            } catch (SettingNotFoundException e2) {
                Log.e("Hata", "Ekran parlaklığı ayarlanamadı");
                e2.printStackTrace();
            }
        } else {
            this.C.show();
        }
        h();
        g();
        b();
        AdView adView = (AdView) findViewById(R.id.adView);
        c a = new a().a();
        adView.a(a);
        this.a.a(a);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.info, menu);
        return true;
    }

    public void onDestroy() {
        this.F.cancel();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case R.id.Setting /*2131624186*/:
                this.v = new Intent(getApplicationContext(), SettingPrefrence.class);
                startActivity(this.v);
                break;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
        b();
        if (VERSION.SDK_INT >= 23 && System.canWrite(this)) {
            try {
                System.putInt(this.J, "screen_brightness_mode", 0);
                this.G = System.getInt(this.J, "screen_brightness");
                this.H = System.getInt(this.J, "accelerometer_rotation");
                this.I = System.getInt(this.J, "screen_off_timeout");
                if (this.I > 40000) {
                    a(3);
                    this.I = 40000;
                }
                i();
            } catch (SettingNotFoundException e) {
                Log.e("Hata", "Ekran parlaklığı ayarlanamıyor");
                e.printStackTrace();
            }
        }
    }
}
