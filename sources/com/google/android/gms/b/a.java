package com.google.android.gms.b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.support.annotation.RequiresPermission;
import android.util.Log;
import com.google.android.gms.iid.e;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class a {
    public static int a = 5000000;
    public static int b = 6500000;
    public static int c = 7000000;
    static a d;
    private static final AtomicInteger i = new AtomicInteger(1);
    final Messenger e = new Messenger(new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message message) {
            if (message == null || !(message.obj instanceof Intent)) {
                Log.w("GCM", "Dropping invalid message");
            }
            Intent intent = (Intent) message.obj;
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
                a.this.j.add(intent);
            } else if (!a.this.b(intent)) {
                intent.setPackage(a.this.f.getPackageName());
                a.this.f.sendBroadcast(intent);
            }
        }
    });
    private Context f;
    private PendingIntent g;
    private Map<String, Handler> h = Collections.synchronizedMap(new HashMap());
    private final BlockingQueue<Intent> j = new LinkedBlockingQueue();

    public static synchronized a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (d == null) {
                d = new a();
                d.f = context.getApplicationContext();
            }
            aVar = d;
        }
        return aVar;
    }

    private String a() {
        String valueOf = String.valueOf("google.rpc");
        String valueOf2 = String.valueOf(String.valueOf(i.getAndIncrement()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static String a(Intent intent, String str) {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra("error");
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    public static String b(Context context) {
        return e.a(context);
    }

    private boolean b(Intent intent) {
        Object stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra("error")) {
            stringExtra = intent.getStringExtra("google.message_id");
        }
        if (stringExtra != null) {
            Handler handler = (Handler) this.h.remove(stringExtra);
            if (handler != null) {
                Message obtain = Message.obtain();
                obtain.obj = intent;
                return handler.sendMessage(obtain);
            }
        }
        return false;
    }

    public static int c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String b = b(context);
        if (b != null) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(b, 0);
                if (packageInfo != null) {
                    return packageInfo.versionCode;
                }
            } catch (NameNotFoundException e) {
            }
        }
        return -1;
    }

    /* Access modifiers changed, original: 0000 */
    @Deprecated
    public Intent a(Bundle bundle) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        } else if (c(this.f) < 0) {
            throw new IOException("Google Play Services missing");
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage(b(this.f));
            a(intent);
            intent.putExtra("google.message_id", a());
            intent.putExtras(bundle);
            intent.putExtra("google.messenger", this.e);
            this.f.startService(intent);
            try {
                return (Intent) this.j.poll(30000, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                throw new IOException(e.getMessage());
            }
        }
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    @Deprecated
    public synchronized String a(String... strArr) {
        String b;
        b = b(this.f);
        if (b == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String b2 = b(strArr);
        Bundle bundle = new Bundle();
        if (b.contains(".gsf")) {
            bundle.putString("legacy.sender", b2);
            b = com.google.android.gms.iid.a.c(this.f).a(b2, "GCM", bundle);
        } else {
            bundle.putString("sender", b2);
            b = a(a(bundle), "registration_id");
        }
        return b;
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(Intent intent) {
        if (this.g == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.g = PendingIntent.getBroadcast(this.f, 0, intent2, 0);
        }
        intent.putExtra("app", this.g);
    }

    /* Access modifiers changed, original: varargs */
    public String b(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuilder.append(',').append(strArr[i]);
        }
        return stringBuilder.toString();
    }
}
