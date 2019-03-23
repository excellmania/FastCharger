package com.google.android.gms.c;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.internal.n.c;

@pa
public abstract class pe implements com.google.android.gms.c.pd.a, sl<Void> {
    private final tk<pg> a;
    private final com.google.android.gms.c.pd.a b;
    private final Object c = new Object();

    @pa
    public static final class a extends pe {
        private final Context a;

        public a(Context context, tk<pg> tkVar, com.google.android.gms.c.pd.a aVar) {
            super(tkVar, aVar);
            this.a = context;
        }

        public void a() {
        }

        public pp b() {
            return py.a(this.a, new il((String) is.b.c()), px.a());
        }

        public /* synthetic */ Object e() {
            return super.e();
        }
    }

    @pa
    public static class b extends pe implements com.google.android.gms.common.internal.n.b, c {
        protected pf a;
        private Context b;
        private tc c;
        private tk<pg> d;
        private final com.google.android.gms.c.pd.a e;
        private final Object f = new Object();
        private boolean g;

        public b(Context context, tc tcVar, tk<pg> tkVar, com.google.android.gms.c.pd.a aVar) {
            Looper a;
            super(tkVar, aVar);
            this.b = context;
            this.c = tcVar;
            this.d = tkVar;
            this.e = aVar;
            if (((Boolean) is.O.c()).booleanValue()) {
                this.g = true;
                a = v.u().a();
            } else {
                a = context.getMainLooper();
            }
            this.a = new pf(context, a, this, this, this.c.d);
            f();
        }

        public void a() {
            synchronized (this.f) {
                if (this.a.b() || this.a.c()) {
                    this.a.a();
                }
                Binder.flushPendingCommands();
                if (this.g) {
                    v.u().b();
                    this.g = false;
                }
            }
        }

        public void a(int i) {
            sz.b("Disconnected from remote ad request service.");
        }

        public void a(Bundle bundle) {
            e();
        }

        public void a(@NonNull com.google.android.gms.common.a aVar) {
            sz.b("Cannot connect to remote service, fallback to local instance.");
            g().e();
            Bundle bundle = new Bundle();
            bundle.putString("action", "gms_connection_failed_fallback_to_local");
            v.e().b(this.b, this.c.b, "gmob-apps", bundle, true);
        }

        public pp b() {
            pp k;
            synchronized (this.f) {
                try {
                    k = this.a.k();
                } catch (DeadObjectException | IllegalStateException e) {
                    k = null;
                }
            }
            return k;
        }

        public /* synthetic */ Object e() {
            return super.e();
        }

        /* Access modifiers changed, original: protected */
        public void f() {
            this.a.n();
        }

        /* Access modifiers changed, original: 0000 */
        public sl g() {
            return new a(this.b, this.d, this.e);
        }
    }

    public pe(tk<pg> tkVar, com.google.android.gms.c.pd.a aVar) {
        this.a = tkVar;
        this.b = aVar;
    }

    public abstract void a();

    public void a(pj pjVar) {
        synchronized (this.c) {
            this.b.a(pjVar);
            a();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean a(pp ppVar, pg pgVar) {
        try {
            ppVar.a(pgVar, new pi(this));
            return true;
        } catch (RemoteException e) {
            sz.c("Could not fetch ad response from ad request service.", e);
            v.i().a(e, "AdRequestClientTask.getAdResponseFromService");
            this.b.a(new pj(0));
            return false;
        } catch (NullPointerException e2) {
            sz.c("Could not fetch ad response from ad request service due to an Exception.", e2);
            v.i().a(e2, "AdRequestClientTask.getAdResponseFromService");
            this.b.a(new pj(0));
            return false;
        } catch (SecurityException e22) {
            sz.c("Could not fetch ad response from ad request service due to an Exception.", e22);
            v.i().a(e22, "AdRequestClientTask.getAdResponseFromService");
            this.b.a(new pj(0));
            return false;
        } catch (Throwable e222) {
            sz.c("Could not fetch ad response from ad request service due to an Exception.", e222);
            v.i().a(e222, "AdRequestClientTask.getAdResponseFromService");
            this.b.a(new pj(0));
            return false;
        }
    }

    public abstract pp b();

    /* renamed from: c */
    public Void e() {
        final pp b = b();
        if (b == null) {
            this.b.a(new pj(0));
            a();
        } else {
            this.a.a(new tk.c<pg>() {
                public void a(pg pgVar) {
                    if (!pe.this.a(b, pgVar)) {
                        pe.this.a();
                    }
                }
            }, new com.google.android.gms.c.tk.a() {
                public void a() {
                    pe.this.a();
                }
            });
        }
        return null;
    }

    public void d() {
        a();
    }
}
