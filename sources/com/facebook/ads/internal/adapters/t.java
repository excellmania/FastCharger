package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.h.c.c.f;

public class t extends BroadcastReceiver {
    private Context a;
    private f b;

    public t(f fVar, Context context) {
        this.b = fVar;
        this.a = context;
    }

    public void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("videoInterstitialDismissed");
        LocalBroadcastManager.getInstance(this.a).registerReceiver(this, intentFilter);
    }

    public void onReceive(Context context, Intent intent) {
        this.b.a(intent.getIntExtra(InterstitialAdActivity.VIDEO_SEEK_TIME, 0));
        this.b.e();
    }
}
