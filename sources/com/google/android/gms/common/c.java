package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.a.b;
import com.google.android.gms.c.r;
import com.google.android.gms.c.w;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.k;

public class c extends k {
    public static final int a = k.b;
    private static final c c = new c();

    @SuppressLint({"HandlerLeak"})
    private class a extends Handler {
        private final Context b;

        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.b = context.getApplicationContext();
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    int a = c.this.a(this.b);
                    if (c.this.a(a)) {
                        c.this.a(this.b, a);
                        return;
                    }
                    return;
                default:
                    Log.w("GoogleApiAvailability", "Don't know how to handle this message: " + message.what);
                    return;
            }
        }
    }

    c() {
    }

    public static c a() {
        return c;
    }

    public int a(Context context) {
        return super.a(context);
    }

    public Dialog a(Activity activity, int i, int i2, OnCancelListener onCancelListener) {
        return a((Context) activity, i, q.a(activity, b(activity, i, "d"), i2), onCancelListener);
    }

    public Dialog a(Activity activity, OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        Builder builder = new Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(p.c(activity, 18));
        builder.setPositiveButton("", null);
        Dialog create = builder.create();
        a(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(14)
    public Dialog a(Context context, int i, q qVar, OnCancelListener onCancelListener) {
        Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (k.c()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new Builder(context, 5);
            }
        }
        if (builder == null) {
            builder = new Builder(context);
        }
        builder.setMessage(p.c(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String e = p.e(context, i);
        if (e != null) {
            builder.setPositiveButton(e, qVar);
        }
        e = p.a(context, i);
        if (e != null) {
            builder.setTitle(e);
        }
        return builder.create();
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        return super.a(context, i, i2, str);
    }

    @Nullable
    public PendingIntent a(Context context, a aVar) {
        return aVar.a() ? aVar.d() : a(context, aVar.c(), 0);
    }

    @Nullable
    public r a(Context context, com.google.android.gms.c.r.a aVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        r rVar = new r(aVar);
        context.registerReceiver(rVar, intentFilter);
        rVar.a(context);
        if (a(context, "com.google.android.gms")) {
            return rVar;
        }
        aVar.a();
        rVar.a();
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(11)
    public void a(Activity activity, Dialog dialog, String str, OnCancelListener onCancelListener) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            g.a(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else if (k.a()) {
            b.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        } else {
            throw new RuntimeException("This Activity does not support Fragments.");
        }
    }

    public void a(Context context, int i) {
        a(context, i, null);
    }

    public void a(Context context, int i, String str) {
        a(context, i, str, a(context, i, 0, "n"));
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(20)
    public void a(Context context, int i, String str, PendingIntent pendingIntent) {
        if (i == 18) {
            c(context);
        } else if (pendingIntent != null) {
            Notification build;
            int i2;
            String b = p.b(context, i);
            String d = p.d(context, i);
            Resources resources = context.getResources();
            if (f.b(context)) {
                com.google.android.gms.common.internal.c.a(k.h());
                build = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(b).setStyle(new BigTextStyle().bigText(d)).addAction(com.google.android.gms.a.a.common_full_open_on_phone, resources.getString(b.common_open_on_phone), pendingIntent).build();
            } else {
                build = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(resources.getString(b.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(pendingIntent).setContentTitle(b).setContentText(d).setLocalOnly(true).setStyle(new NotificationCompat.BigTextStyle().bigText(d)).build();
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                    m.f.set(false);
                    i2 = 10436;
                    break;
                default:
                    i2 = 39789;
                    break;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (str == null) {
                notificationManager.notify(i2, build);
            } else {
                notificationManager.notify(str, i2, build);
            }
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    public void a(Context context, a aVar, int i) {
        PendingIntent a = a(context, aVar);
        if (a != null) {
            a(context, aVar.c(), null, GoogleApiActivity.a(context, a, i));
        }
    }

    public final boolean a(int i) {
        return super.a(i);
    }

    public boolean a(Activity activity, @NonNull w wVar, int i, int i2, OnCancelListener onCancelListener) {
        Dialog a = a((Context) activity, i, q.a(wVar, b(activity, i, "d"), i2), onCancelListener);
        if (a == null) {
            return false;
        }
        a(activity, a, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public int b(Context context) {
        return super.b(context);
    }

    @Nullable
    @Deprecated
    public Intent b(int i) {
        return super.b(i);
    }

    @Nullable
    public Intent b(Context context, int i, @Nullable String str) {
        return super.b(context, i, str);
    }

    public boolean b(Activity activity, int i, int i2, OnCancelListener onCancelListener) {
        Dialog a = a(activity, i, i2, onCancelListener);
        if (a == null) {
            return false;
        }
        a(activity, a, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public boolean b(Context context, int i) {
        return super.b(context, i);
    }

    public final String c(int i) {
        return super.c(i);
    }

    /* Access modifiers changed, original: 0000 */
    public void c(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000);
    }
}
