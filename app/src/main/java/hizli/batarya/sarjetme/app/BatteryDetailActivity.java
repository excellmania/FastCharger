package hizli.batarya.sarjetme.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.ListView;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.g;

public class BatteryDetailActivity extends AppCompatActivity {
    g a;
    ListView b;
    a c;
    Toolbar d;
    String[] e = new String[]{"Derece", "Volt", "Seviye", "Teknoloji", "Sağlık"};
    String[] f = new String[6];
    Integer[] g = new Integer[]{Integer.valueOf(R.drawable.ic_temperature), Integer.valueOf(R.drawable.ic_voltage), Integer.valueOf(R.drawable.ic_battery_level), Integer.valueOf(R.drawable.ic_technology), Integer.valueOf(R.drawable.ic_battery_health)};
    public BroadcastReceiver h = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            BatteryDetailActivity.this.f[0] = (intent.getIntExtra("temperature", 0) / 10) + Character.toString(176) + " C";
            BatteryDetailActivity.this.f[1] = (((float) intent.getIntExtra("voltage", 0)) / 1000.0f) + Character.toString(176) + " V";
            BatteryDetailActivity.this.f[2] = Integer.toString(intent.getIntExtra("level", 0));
            BatteryDetailActivity.this.f[3] = intent.getExtras().getString("technology");
            if (BatteryDetailActivity.this.f[3].equalsIgnoreCase("")) {
                BatteryDetailActivity.this.f[3] = "-";
            }
            switch (intent.getIntExtra("health", 0)) {
                case 1:
                    BatteryDetailActivity.this.f[4] = "BELİRSİZ";
                    break;
                case 2:
                    BatteryDetailActivity.this.f[4] = "İYİ";
                    break;
                case 3:
                    BatteryDetailActivity.this.f[4] = "ÇOK ISINMIŞ";
                    break;
                case 4:
                    BatteryDetailActivity.this.f[4] = "ÖLÜ";
                    break;
                case 5:
                    BatteryDetailActivity.this.f[4] = "YÜKSEK VOLT";
                    break;
                case 6:
                    BatteryDetailActivity.this.f[4] = "BELİRLENEMEYEN HATA";
                    break;
                case 7:
                    BatteryDetailActivity.this.f[4] = "SOĞUK";
                    break;
            }
            BatteryDetailActivity.this.c = new a(BatteryDetailActivity.this, BatteryDetailActivity.this.e, BatteryDetailActivity.this.f, BatteryDetailActivity.this.g);
            BatteryDetailActivity.this.b.setAdapter(BatteryDetailActivity.this.c);
        }
    };

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(0);
        }
        setContentView((int) R.layout.activity_battery_detail);
        this.d = (Toolbar) findViewById(R.id.tool_bar);
        this.d.setTitleTextColor(-1);
        setSupportActionBar(this.d);
        getSupportActionBar().setTitle((CharSequence) "Pil bilgisi");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.b = (ListView) findViewById(R.id.detailList);
        registerReceiver(this.h, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.a = new g(this);
        this.a.a("ca-app-pub-3014314167355758/6458894823");
        AdView adView = (AdView) findViewById(R.id.adView);
        c a = new a().a();
        adView.a(a);
        this.a.a(a);
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