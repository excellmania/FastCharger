package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.c.is;
import com.google.android.gms.c.kr;
import com.google.android.gms.c.lw;
import com.google.android.gms.c.lx;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.rx;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tk.b;
import com.google.android.gms.c.tk.c;
import com.google.android.gms.c.tr;
import java.util.Map;
import org.json.JSONObject;

@pa
public class g {
    public final kr a = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            trVar.b("/appSettingsFetched", (kr) this);
            synchronized (g.this.b) {
                if (map != null) {
                    if ("true".equalsIgnoreCase((String) map.get("isSuccessful"))) {
                        v.i().a(g.this.c, (String) map.get("appSettingsJson"));
                    }
                }
            }
        }
    };
    private final Object b = new Object();
    private Context c;

    private static boolean a(@Nullable rx rxVar) {
        if (rxVar == null) {
            return true;
        }
        boolean z = (((v.k().a() - rxVar.a()) > ((Long) is.cB.c()).longValue() ? 1 : ((v.k().a() - rxVar.a()) == ((Long) is.cB.c()).longValue() ? 0 : -1)) > 0) || !rxVar.b();
        return z;
    }

    public void a(Context context, tc tcVar, boolean z, @Nullable rx rxVar, String str, @Nullable String str2) {
        if (!a(rxVar)) {
            return;
        }
        if (context == null) {
            sz.e("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            sz.e("App settings could not be fetched. Required parameters missing");
        } else {
            this.c = context;
            final lw a = v.e().a(context, tcVar);
            final String str3 = str;
            final String str4 = str2;
            final boolean z2 = z;
            final Context context2 = context;
            sj.a.post(new Runnable() {
                public void run() {
                    a.a().a(new c<lx>() {
                        public void a(lx lxVar) {
                            lxVar.a("/appSettingsFetched", g.this.a);
                            try {
                                JSONObject jSONObject = new JSONObject();
                                if (!TextUtils.isEmpty(str3)) {
                                    jSONObject.put("app_id", str3);
                                } else if (!TextUtils.isEmpty(str4)) {
                                    jSONObject.put("ad_unit_id", str4);
                                }
                                jSONObject.put("is_init", z2);
                                jSONObject.put("pn", context2.getPackageName());
                                lxVar.a("AFMA_fetchAppSettings", jSONObject);
                            } catch (Exception e) {
                                lxVar.b("/appSettingsFetched", g.this.a);
                                sz.b("Error requesting application settings", e);
                            }
                        }
                    }, new b());
                }
            });
        }
    }
}
