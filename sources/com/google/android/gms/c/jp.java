package com.google.android.gms.c;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.r;
import com.google.android.gms.c.jq.a;
import com.google.android.gms.common.internal.c;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@pa
public class jp extends jr {
    @Nullable
    private ms b;
    @Nullable
    private mt c;
    private final r d;
    @Nullable
    private jq e;
    private boolean f;
    private Object g;

    private jp(Context context, r rVar, cm cmVar, a aVar) {
        super(context, rVar, null, cmVar, null, aVar, null, null);
        this.f = false;
        this.g = new Object();
        this.d = rVar;
    }

    public jp(Context context, r rVar, cm cmVar, ms msVar, a aVar) {
        this(context, rVar, cmVar, aVar);
        this.b = msVar;
    }

    public jp(Context context, r rVar, cm cmVar, mt mtVar, a aVar) {
        this(context, rVar, cmVar, aVar);
        this.c = mtVar;
    }

    @Nullable
    public jj a(OnClickListener onClickListener) {
        return null;
    }

    public void a(View view, Map<String, WeakReference<View>> map) {
        c.b("recordImpression must be called on the main UI thread.");
        synchronized (this.g) {
            a(true);
            if (this.e != null) {
                this.e.a(view, map);
                this.d.E();
            } else {
                try {
                    if (this.b != null && !this.b.j()) {
                        this.b.i();
                        this.d.E();
                    } else if (!(this.c == null || this.c.h())) {
                        this.c.g();
                        this.d.E();
                    }
                } catch (RemoteException e) {
                    sz.c("Failed to call recordImpression", e);
                }
            }
        }
    }

    public void a(View view, Map<String, WeakReference<View>> map, OnTouchListener onTouchListener, OnClickListener onClickListener) {
        synchronized (this.g) {
            this.f = true;
            try {
                if (this.b != null) {
                    this.b.b(b.a((Object) view));
                } else if (this.c != null) {
                    this.c.b(b.a((Object) view));
                }
            } catch (RemoteException e) {
                sz.c("Failed to call prepareAd", e);
            }
            this.f = false;
        }
    }

    public void a(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, View view2) {
        c.b("performClick must be called on the main UI thread.");
        synchronized (this.g) {
            if (this.e != null) {
                this.e.a(view, map, jSONObject, view2);
                this.d.e();
            } else {
                try {
                    if (!(this.b == null || this.b.k())) {
                        this.b.a(b.a((Object) view));
                        this.d.e();
                    }
                    if (!(this.c == null || this.c.i())) {
                        this.c.a(b.a((Object) view));
                        this.d.e();
                    }
                } catch (RemoteException e) {
                    sz.c("Failed to call performClick", e);
                }
            }
        }
    }

    public void a(@Nullable jq jqVar) {
        synchronized (this.g) {
            this.e = jqVar;
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.g) {
            z = this.f;
        }
        return z;
    }

    public jq b() {
        jq jqVar;
        synchronized (this.g) {
            jqVar = this.e;
        }
        return jqVar;
    }

    public void b(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.g) {
            try {
                if (this.b != null) {
                    this.b.c(b.a((Object) view));
                } else if (this.c != null) {
                    this.c.c(b.a((Object) view));
                }
            } catch (RemoteException e) {
                sz.c("Failed to call untrackView", e);
            }
        }
    }

    @Nullable
    public tr c() {
        return null;
    }
}
