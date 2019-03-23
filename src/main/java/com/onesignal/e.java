package com.onesignal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Process;
import android.support.annotation.NonNull;
import android.util.Log;

class e {

    static class a {
        static void a(@NonNull Activity activity, @NonNull String[] strArr, int i) {
            b.a(activity, strArr, i);
        }
    }

    @TargetApi(23)
    static class b {
        static void a(Activity activity, String[] strArr, int i) {
            if (activity instanceof d) {
                ((d) activity).a(i);
            }
            activity.requestPermissions(strArr, i);
        }
    }

    static class c {
        static int a(Context context, int i) {
            return VERSION.SDK_INT > 22 ? context.getColor(i) : context.getResources().getColor(i);
        }

        static int a(@NonNull Context context, @NonNull String str) {
            try {
                return context.checkPermission(str, Process.myPid(), Process.myUid());
            } catch (Throwable th) {
                Log.e("OneSignal", "checkSelfPermission failed, returning PERMISSION_DENIED");
                return -1;
            }
        }
    }

    interface d {
        void a(int i);
    }
}
