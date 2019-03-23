package com.onesignal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

@TargetApi(14)
class b implements ActivityLifecycleCallbacks {
    b() {
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        a.a(activity);
    }

    public void onActivityDestroyed(Activity activity) {
        a.f(activity);
    }

    public void onActivityPaused(Activity activity) {
        a.d(activity);
    }

    public void onActivityResumed(Activity activity) {
        a.c(activity);
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public void onActivityStarted(Activity activity) {
        a.b(activity);
    }

    public void onActivityStopped(Activity activity) {
        a.e(activity);
    }
}
