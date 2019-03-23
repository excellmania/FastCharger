package com.onesignal;

import android.content.Context;
import com.amazon.device.messaging.ADM;
import com.onesignal.t.d;
import com.onesignal.x.a;

public class y implements x {
    private static a a;
    private static boolean b = false;

    public static void a(String str) {
        if (a != null) {
            b = true;
            a.a(str, 1);
        }
    }

    public void a(final Context context, String str, final a aVar) {
        a = aVar;
        new Thread(new Runnable() {
            public void run() {
                ADM adm = new ADM(context);
                String registrationId = adm.getRegistrationId();
                if (registrationId == null) {
                    adm.startRegister();
                } else {
                    t.a(d.DEBUG, "ADM Already registered with ID:" + registrationId);
                    aVar.a(registrationId, 1);
                }
                try {
                    Thread.sleep(30000);
                } catch (InterruptedException e) {
                }
                if (!y.b) {
                    t.a(d.ERROR, "com.onesignal.ADMMessageHandler timed out, please check that your have the receiver, service, and your package name matches(NOTE: Case Sensitive) per the OneSignal instructions.");
                    y.a(null);
                }
            }
        }).start();
    }
}
