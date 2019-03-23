package com.onesignal;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.NonNull;

public class PermissionsActivity extends Activity {
    static boolean a;
    static boolean b;
    private static a c;

    static void a() {
        if (!a && !b) {
            c = new a() {
                public void a(Activity activity) {
                    if (!activity.getClass().equals(PermissionsActivity.class)) {
                        Intent intent = new Intent(activity, PermissionsActivity.class);
                        intent.setFlags(131072);
                        activity.startActivity(intent);
                    }
                }
            };
            a.a(c);
        }
    }

    private void b() {
        if (VERSION.SDK_INT < 23) {
            finish();
        } else if (!a) {
            a = true;
            a.a(this, new String[]{i.a}, 2);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null || !bundle.getBoolean("android:hasCurrentPermissionsRequest", false)) {
            b();
        } else {
            a = true;
        }
    }

    /* Access modifiers changed, original: protected */
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (t.d) {
            b();
        }
    }

    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        b = true;
        a = false;
        if (i == 2) {
            if (iArr.length <= 0 || iArr[0] != 0) {
                i.b();
            } else {
                i.a();
            }
        }
        a.b(c);
        finish();
    }
}
