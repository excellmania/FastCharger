package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.internal.c;

public class g extends DialogFragment {
    private Dialog a = null;
    private OnCancelListener b = null;

    public static g a(Dialog dialog, OnCancelListener onCancelListener) {
        g gVar = new g();
        Dialog dialog2 = (Dialog) c.a((Object) dialog, (Object) "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        gVar.a = dialog2;
        if (onCancelListener != null) {
            gVar.b = onCancelListener;
        }
        return gVar;
    }

    public void onCancel(DialogInterface dialogInterface) {
        if (this.b != null) {
            this.b.onCancel(dialogInterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (this.a == null) {
            setShowsDialog(false);
        }
        return this.a;
    }

    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}
