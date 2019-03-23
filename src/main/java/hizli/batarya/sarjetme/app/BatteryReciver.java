package hizli.batarya.sarjetme.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BatteryReciver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent();
        intent2.setClassName(context.getPackageName(), context.getPackageName() + ".FastCharger");
        intent2.setFlags(268435456);
        context.startActivity(intent2);
    }
}
