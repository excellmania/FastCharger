package hizli.batarya.sarjetme.app;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.g;

public class SettingPrefrence extends AppCompatActivity {
    g a;
    Toolbar b;

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(0);
        }
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_setting);
        setTheme(R.style.f267Theme.DarkText);
        this.b = (Toolbar) findViewById(R.id.tool_bar);
        setSupportActionBar(this.b);
        getSupportActionBar().setTitle((CharSequence) "Ayarlar");
        this.b.setTitleTextColor(-1);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.a = new g(this);
        this.a.a("ca-app-pub-3014314167355758/6458894823");
        AdView adView = (AdView) findViewById(R.id.adView);
        c a = new a().a();
        adView.a(a);
        this.a.a(a);
        getFragmentManager().beginTransaction().replace(R.id.content_frame, new b()).commit();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }
}