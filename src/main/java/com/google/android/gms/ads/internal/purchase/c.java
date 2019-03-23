package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.ob;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.se;
import com.google.android.gms.c.sf;
import com.google.android.gms.c.sj;
import com.google.android.gms.c.sz;
import com.google.android.gms.common.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@pa
public class c extends se implements ServiceConnection {
    private final Object a;
    private boolean b;
    private Context c;
    private ob d;
    private b e;
    private h f;
    private List<f> g;
    private k h;

    public c(Context context, ob obVar, k kVar) {
        this(context, obVar, kVar, new b(context), h.a(context.getApplicationContext()));
    }

    c(Context context, ob obVar, k kVar, b bVar, h hVar) {
        this.a = new Object();
        this.b = false;
        this.g = null;
        this.c = context;
        this.d = obVar;
        this.h = kVar;
        this.e = bVar;
        this.f = hVar;
        this.g = this.f.a(10);
    }

    private void a(long j) {
        do {
            if (!b(j)) {
                sf.a("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.b);
    }

    private boolean b(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.a.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            sz.e("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    public void a() {
        synchronized (this.a) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            a.a().a(this.c, intent, (ServiceConnection) this, 1);
            a(SystemClock.elapsedRealtime());
            a.a().a(this.c, (ServiceConnection) this);
            this.e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(final f fVar, String str, String str2) {
        final Intent intent = new Intent();
        v.s();
        intent.putExtra("RESPONSE_CODE", 0);
        v.s();
        intent.putExtra("INAPP_PURCHASE_DATA", str);
        v.s();
        intent.putExtra("INAPP_DATA_SIGNATURE", str2);
        sj.a.post(new Runnable() {
            public void run() {
                try {
                    if (c.this.h.a(fVar.b, -1, intent)) {
                        c.this.d.a(new g(c.this.c, fVar.c, true, -1, intent, fVar));
                    } else {
                        c.this.d.a(new g(c.this.c, fVar.c, false, -1, intent, fVar));
                    }
                } catch (RemoteException e) {
                    sz.e("Fail to verify and dispatch pending transaction");
                }
            }
        });
    }

    public void b() {
        synchronized (this.a) {
            a.a().a(this.c, (ServiceConnection) this);
            this.e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        if (!this.g.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (f fVar : this.g) {
                hashMap.put(fVar.c, fVar);
            }
            String str = null;
            while (true) {
                Bundle b = this.e.b(this.c.getPackageName(), str);
                if (b == null || v.s().a(b) != 0) {
                    break;
                }
                ArrayList stringArrayList = b.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList stringArrayList2 = b.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList stringArrayList3 = b.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                String string = b.getString("INAPP_CONTINUATION_TOKEN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= stringArrayList.size()) {
                        break;
                    }
                    if (hashMap.containsKey(stringArrayList.get(i2))) {
                        str = (String) stringArrayList.get(i2);
                        String str2 = (String) stringArrayList2.get(i2);
                        String str3 = (String) stringArrayList3.get(i2);
                        f fVar2 = (f) hashMap.get(str);
                        if (fVar2.b.equals(v.s().a(str2))) {
                            a(fVar2, str2, str3);
                            hashMap.remove(str);
                        }
                    }
                    i = i2 + 1;
                }
                if (string == null || hashMap.isEmpty()) {
                    break;
                }
                str = string;
            }
            for (String str4 : hashMap.keySet()) {
                this.f.a((f) hashMap.get(str4));
            }
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.a) {
            this.e.a(iBinder);
            c();
            this.b = true;
            this.a.notify();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        sz.d("In-app billing service disconnected.");
        this.e.a();
    }
}
