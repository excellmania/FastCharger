package com.onesignal;

import android.content.Context;
import android.location.Location;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient.c;
import com.google.android.gms.location.g;
import com.onesignal.t.d;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;

class i {
    static String a;
    private static h b;
    private static b c;
    private static Thread d;
    private static boolean e;

    private static class a implements com.google.android.gms.common.api.GoogleApiClient.b, c {
        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        public void a(int i) {
            i.b();
        }

        public void a(Bundle bundle) {
            int i = 0;
            PermissionsActivity.b = false;
            Location a = g.b.a(i.b.c());
            if (a != null) {
                a.getAccuracy();
                Double valueOf = Double.valueOf(new BigDecimal(a.getLatitude()).setScale(7, RoundingMode.HALF_UP).doubleValue());
                Double valueOf2 = Double.valueOf(new BigDecimal(a.getLongitude()).setScale(7, RoundingMode.HALF_UP).doubleValue());
                Float valueOf3 = Float.valueOf(a.getAccuracy());
                if (!i.e) {
                    i = 1;
                }
                i.b(valueOf, valueOf2, valueOf3, Integer.valueOf(i));
            } else {
                i.b(null, null, null, null);
            }
            i.b.b();
        }

        public void a(@NonNull com.google.android.gms.common.a aVar) {
            i.b();
        }
    }

    interface b {
        void a(Double d, Double d2, Float f, Integer num);
    }

    static void a() {
        if (d == null) {
            try {
                e();
                c aVar = new a();
                b = new h(new com.google.android.gms.common.api.GoogleApiClient.a(t.c).a(g.a).a((com.google.android.gms.common.api.GoogleApiClient.b) aVar).a(aVar).b());
                b.a();
            } catch (Throwable th) {
                t.a(d.WARN, "Location permission exists but there was an error initializing: ", th);
                b();
            }
        }
    }

    static void a(Context context, boolean z, b bVar) {
        int i = -1;
        c = bVar;
        int a = c.a(context, "android.permission.ACCESS_FINE_LOCATION");
        if (a == -1) {
            i = c.a(context, "android.permission.ACCESS_COARSE_LOCATION");
            e = true;
        }
        if (VERSION.SDK_INT < 23) {
            if (a == 0 || i == 0) {
                a();
            } else {
                bVar.a(null, null, null, null);
            }
        } else if (a != 0) {
            try {
                List asList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
                if (asList.contains("android.permission.ACCESS_FINE_LOCATION")) {
                    a = "android.permission.ACCESS_FINE_LOCATION";
                } else if (asList.contains("android.permission.ACCESS_COARSE_LOCATION") && i != 0) {
                    a = "android.permission.ACCESS_COARSE_LOCATION";
                }
                if (a != null && z) {
                    PermissionsActivity.a();
                } else if (i == 0) {
                    a();
                } else {
                    b();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else {
            a();
        }
    }

    static void b() {
        PermissionsActivity.b = false;
        b(null, null, null, null);
        if (b != null) {
            b.b();
        }
    }

    private static void b(Double d, Double d2, Float f, Integer num) {
        c.a(d, d2, f, num);
        if (!(d == null || Thread.currentThread().equals(d))) {
            d.interrupt();
        }
        d = null;
    }

    private static void e() {
        d = new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(30000);
                    t.a(d.WARN, "Location permission exists but GoogleApiClient timed out. Maybe related to mismatch google-play aar versions.");
                    i.b();
                } catch (Throwable th) {
                }
            }
        }, "OS_GMS_LOCATION_FALLBACK");
        d.start();
    }
}
