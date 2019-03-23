package com.onesignal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.onesignal.t.d;

public class SyncService extends Service {
    static void a() {
        t.a(d.VERBOSE, "Starting SyncService:onTaskRemoved.");
        a.c.b();
        w.a();
        t.a(true);
        t.a(d.VERBOSE, "Completed SyncService:onTaskRemoved.");
    }

    private void c() {
        long h = t.h();
        if (h >= 60) {
            t.a(h, true);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b() {
        ((AlarmManager) getSystemService("alarm")).set(0, System.currentTimeMillis() + 10000, PendingIntent.getService(this, 0, new Intent(this, SyncService.class), 0));
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        if (!t.h) {
            t.c = getApplicationContext();
            new Thread(new Runnable() {
                public void run() {
                    if (t.e() == null) {
                        SyncService.this.stopSelf();
                        return;
                    }
                    t.a = t.d();
                    w.a(t.c);
                    w.a(true);
                    SyncService.this.c();
                    SyncService.this.stopSelf();
                }
            }, "OS_SYNCSRV_ONCREATE").start();
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return t.h ? 1 : 2;
    }

    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        a();
        stopSelf();
        b();
    }
}
