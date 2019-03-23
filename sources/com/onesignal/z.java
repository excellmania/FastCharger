package com.onesignal;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.f;
import com.onesignal.t.d;
import com.onesignal.x.a;
import java.io.IOException;
import org.apache.http.protocol.HTTP;

public class z implements x {
    private static int c = 5;
    private Context a;
    private a b;

    private void a(final String str) {
        new Thread(new Runnable() {
            public void run() {
                int i = 0;
                int i2 = 0;
                while (i < z.c) {
                    try {
                        String a = com.google.android.gms.b.a.a(z.this.a).a(str);
                        t.a(d.INFO, "Device registered, Google Registration ID = " + a);
                        z.this.b.a(a, 1);
                        return;
                    } catch (IOException e) {
                        if (!"SERVICE_NOT_AVAILABLE".equals(e.getMessage())) {
                            t.a(d.ERROR, "Error Getting Google Registration ID", e);
                            if (i2 == 0) {
                                z.this.b.a(null, -11);
                                return;
                            }
                            return;
                        } else if (i >= z.c - 1) {
                            t.a(d.ERROR, "GCM_RETRY_COUNT of " + z.c + " exceed! Could not get a Google Registration Id", e);
                        } else {
                            t.a(d.INFO, "Google Play services returned SERVICE_NOT_AVAILABLE error. Current retry count: " + i, e);
                            if (i == 2) {
                                z.this.b.a(null, -9);
                                i2 = 1;
                            }
                            Thread.sleep((long) ((i + 1) * 10000));
                        }
                    } catch (Throwable th) {
                    }
                }
                return;
                i++;
            }
        }).start();
    }

    private boolean b() {
        try {
            PackageManager packageManager = this.a.getPackageManager();
            String str = (String) packageManager.getPackageInfo("com.android.vending", 1).applicationInfo.loadLabel(packageManager);
            return (str == null || str.equals("Market")) ? false : true;
        } catch (Throwable th) {
            return false;
        }
    }

    private boolean c() {
        boolean z = false;
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo("com.google.android.gms", 1);
            if (!packageInfo.applicationInfo.enabled && b()) {
                if (t.e(this.a).getBoolean("GT_DO_NOT_SHOW_MISSING_GPS", false)) {
                    return z;
                }
                try {
                    d();
                } catch (Throwable th) {
                }
            }
            return packageInfo.applicationInfo.enabled;
        } catch (NameNotFoundException e) {
            return z;
        }
    }

    private void d() {
        t.a(new Runnable() {
            public void run() {
                final Activity activity = a.b;
                if (activity != null && !t.f.e) {
                    String a = s.a(activity, "onesignal_gms_missing_alert_text", "To receive push notifications please press 'Update' to enable 'Google Play services'.");
                    String a2 = s.a(activity, "onesignal_gms_missing_alert_button_update", "Update");
                    String a3 = s.a(activity, "onesignal_gms_missing_alert_button_skip", "Skip");
                    new Builder(activity).setMessage(a).setPositiveButton(a2, new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            try {
                                f.a(f.a(z.this.a), activity, 0).send();
                            } catch (CanceledException e) {
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                    }).setNegativeButton(a3, new OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            Editor edit = t.e(activity).edit();
                            edit.putBoolean("GT_DO_NOT_SHOW_MISSING_GPS", true);
                            edit.commit();
                        }
                    }).setNeutralButton(s.a(activity, "onesignal_gms_missing_alert_button_close", HTTP.CONN_CLOSE), null).create().show();
                }
            }
        });
    }

    public void a(Context context, String str, a aVar) {
        this.a = context;
        this.b = aVar;
        try {
            if (c()) {
                a(str);
                return;
            }
            t.a(d.ERROR, "'Google Play services' app not installed or disabled on the device.");
            this.b.a(null, -7);
        } catch (Throwable th) {
            t.a(d.ERROR, "Could not register with GCM due to an error with the AndroidManifest.xml file or with 'Google Play services'.", th);
            this.b.a(null, -8);
        }
    }
}
