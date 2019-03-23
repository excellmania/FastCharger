package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.c.w;

public abstract class q implements OnClickListener {
    public static q a(final Activity activity, final Intent intent, final int i) {
        return new q() {
            public void a() {
                if (intent != null) {
                    activity.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static q a(@NonNull final w wVar, final Intent intent, final int i) {
        return new q() {
            @TargetApi(11)
            public void a() {
                if (intent != null) {
                    wVar.startActivityForResult(intent, i);
                }
            }
        };
    }

    public abstract void a();

    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
