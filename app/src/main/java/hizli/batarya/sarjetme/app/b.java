package hizli.batarya.sarjetme.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceFragment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.apache.http.protocol.HTTP;

public class b extends PreferenceFragment {
    Intent a;

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

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.setting);
        PackageInfo packageInfo = null;
        try {
            packageInfo = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        final String str = packageInfo.versionName;
        findPreference("Licence").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                b.this.startActivity(new Intent(b.this.getActivity().getApplicationContext(), LicenseActivity.class));
                return true;
            }
        });
        findPreference("MoreApp").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                b.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pub:un4saken")));
                return true;
            }
        });
        findPreference("RateUs").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                try {
                    b.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + b.this.getActivity().getPackageName())));
                } catch (ActivityNotFoundException e) {
                    b.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + b.this.getActivity().getPackageName())));
                }
                return true;
            }
        });
        findPreference("ShareApp").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                b.this.a = new Intent();
                b.this.a.setAction("android.intent.action.SEND");
                b.this.a.setType(HTTP.PLAIN_TEXT_TYPE);
                b.this.a.putExtra("android.intent.extra.TEXT", "Buraya bakın " + b.this.getResources().getString(R.string.app_name) + ", Bu programla bataryamı 5x daha hızlı şarj edebiliyorum! " + b.this.getResources().getString(R.string.app_name) + ". https://play.google.com/store/apps/details?id=" + b.this.getActivity().getPackageName());
                b.this.startActivity(Intent.createChooser(b.this.a, "Paylaş " + b.this.getResources().getString(R.string.app_name)));
                return true;
            }
        });
        findPreference("About").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                b.this.a = new Intent(b.this.getActivity(), AboutActivity.class);
                b.this.startActivity(b.this.a);
                return true;
            }
        });
        findPreference("FeedBack").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                b.this.getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                int i = displayMetrics.heightPixels;
                int i2 = displayMetrics.widthPixels;
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("message/rfc822");
                intent.putExtra("android.intent.extra.EMAIL", new String[]{"un4saken@hotmail.co.uk"});
                intent.putExtra("android.intent.extra.SUBJECT", b.this.getResources().getString(R.string.app_name) + str);
                intent.putExtra("android.intent.extra.TEXT", "\n Device :" + b.a() + "\n" + " SystemVersion:" + VERSION.SDK_INT + "\n" + " Ekran Yüksekliği  :" + i + "px" + "\n" + " Ekran Genişliği  :" + i2 + "px" + "\n\n" + " Lütfen sorununuzu yazın .." + "\n");
                b.this.startActivity(Intent.createChooser(intent, "Gönder"));
                return true;
            }
        });
        findPreference("Update").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                try {
                    b.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + b.this.getActivity().getPackageName())));
                } catch (ActivityNotFoundException e) {
                    b.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + b.this.getActivity().getPackageName())));
                }
                return true;
            }
        });
        findPreference("Version").setSummary(str);
    }
}