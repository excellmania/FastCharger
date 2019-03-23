package com.google.android.gms.c;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.c;

public abstract class vg extends v implements OnCancelListener {
    protected boolean b;
    protected boolean c;
    protected final c d;
    private com.google.android.gms.common.a e;
    private int f;
    private final Handler g;

    private class a implements Runnable {
        private a() {
        }

        @MainThread
        public void run() {
            if (!vg.this.b) {
                return;
            }
            if (vg.this.e.a()) {
                vg.this.a.startActivityForResult(GoogleApiActivity.b(vg.this.e(), vg.this.e.d(), vg.this.f, false), 1);
            } else if (vg.this.d.a(vg.this.e.c())) {
                vg.this.d.a(vg.this.e(), vg.this.a, vg.this.e.c(), 2, vg.this);
            } else if (vg.this.e.c() == 18) {
                final Dialog a = vg.this.d.a(vg.this.e(), vg.this);
                vg.this.d.a(vg.this.e().getApplicationContext(), new com.google.android.gms.c.r.a() {
                    public void a() {
                        vg.this.g();
                        if (a.isShowing()) {
                            a.dismiss();
                        }
                    }
                });
            } else {
                vg.this.a(vg.this.e, vg.this.f);
            }
        }
    }

    protected vg(w wVar) {
        this(wVar, c.a());
    }

    vg(w wVar, c cVar) {
        super(wVar);
        this.f = -1;
        this.g = new Handler(Looper.getMainLooper());
        this.d = cVar;
    }

    public void a() {
        super.a();
        this.b = true;
    }

    public void a(int r6, int r7, android.content.Intent r8) {
        /*
        r5 = this;
        r4 = 18;
        r2 = 13;
        r0 = 1;
        r1 = 0;
        switch(r6) {
            case 1: goto L_0x0027;
            case 2: goto L_0x0010;
            default: goto L_0x0009;
        };
    L_0x0009:
        r0 = r1;
    L_0x000a:
        if (r0 == 0) goto L_0x003d;
    L_0x000c:
        r5.g();
    L_0x000f:
        return;
    L_0x0010:
        r2 = r5.d;
        r3 = r5.e();
        r2 = r2.a(r3);
        if (r2 != 0) goto L_0x0047;
    L_0x001c:
        r1 = r5.e;
        r1 = r1.c();
        if (r1 != r4) goto L_0x000a;
    L_0x0024:
        if (r2 != r4) goto L_0x000a;
    L_0x0026:
        goto L_0x000f;
    L_0x0027:
        r3 = -1;
        if (r7 == r3) goto L_0x000a;
    L_0x002a:
        if (r7 != 0) goto L_0x0009;
    L_0x002c:
        if (r8 == 0) goto L_0x0045;
    L_0x002e:
        r0 = "<<ResolutionFailureErrorDetail>>";
        r0 = r8.getIntExtra(r0, r2);
    L_0x0034:
        r2 = new com.google.android.gms.common.a;
        r3 = 0;
        r2.<init>(r0, r3);
        r5.e = r2;
        goto L_0x0009;
    L_0x003d:
        r0 = r5.e;
        r1 = r5.f;
        r5.a(r0, r1);
        goto L_0x000f;
    L_0x0045:
        r0 = r2;
        goto L_0x0034;
    L_0x0047:
        r0 = r1;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.vg.a(int, int, android.content.Intent):void");
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.c = bundle.getBoolean("resolving_error", false);
            if (this.c) {
                this.f = bundle.getInt("failed_client_id", -1);
                this.e = new com.google.android.gms.common.a(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    public abstract void a(com.google.android.gms.common.a aVar, int i);

    public void b() {
        super.b();
        this.b = false;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        bundle.putBoolean("resolving_error", this.c);
        if (this.c) {
            bundle.putInt("failed_client_id", this.f);
            bundle.putInt("failed_status", this.e.c());
            bundle.putParcelable("failed_resolution", this.e.d());
        }
    }

    public void b(com.google.android.gms.common.a aVar, int i) {
        if (!this.c) {
            this.c = true;
            this.f = i;
            this.e = aVar;
            this.g.post(new a());
        }
    }

    public abstract void c();

    /* Access modifiers changed, original: protected */
    public void g() {
        this.f = -1;
        this.c = false;
        this.e = null;
        c();
    }

    public void onCancel(DialogInterface dialogInterface) {
        a(new com.google.android.gms.common.a(13, null), this.f);
        g();
    }
}
