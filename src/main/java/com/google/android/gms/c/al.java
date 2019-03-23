package com.google.android.gms.c;

import android.os.Handler;
import android.os.Message;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.j;
import java.lang.ref.WeakReference;

public class al<R extends f> extends j<R> implements g<R> {
    private i<? super R, ? extends f> a;
    private al<? extends f> b;
    private volatile h<? super R> c;
    private c<R> d;
    private final Object e;
    private Status f;
    private final WeakReference<GoogleApiClient> g;
    private final a h;
    private boolean i;

    private final class a extends Handler {
        final /* synthetic */ al a;

        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    c cVar = (c) message.obj;
                    synchronized (this.a.e) {
                        if (cVar == null) {
                            this.a.b.a(new Status(13, "Transform returned null"));
                        } else if (cVar instanceof af) {
                            this.a.b.a(((af) cVar).b());
                        } else {
                            this.a.b.a(cVar);
                        }
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String str = "TransformedResultImpl";
                    String str2 = "Runtime exception on the transformation worker thread: ";
                    String valueOf = String.valueOf(runtimeException.getMessage());
                    Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", "TransformationResultHandler received unknown message type: " + message.what);
                    return;
            }
        }
    }

    private void a(Status status) {
        synchronized (this.e) {
            this.f = status;
            b(this.f);
        }
    }

    private void b() {
        if (this.a != null || this.c != null) {
            GoogleApiClient googleApiClient = (GoogleApiClient) this.g.get();
            if (!(this.i || this.a == null || googleApiClient == null)) {
                googleApiClient.a(this);
                this.i = true;
            }
            if (this.f != null) {
                b(this.f);
            } else if (this.d != null) {
                this.d.a((g) this);
            }
        }
    }

    private void b(Status status) {
        synchronized (this.e) {
            if (this.a != null) {
                Status a = this.a.a(status);
                com.google.android.gms.common.internal.c.a((Object) a, (Object) "onFailure must not return null");
                this.b.a(a);
            } else if (c()) {
                this.c.a(status);
            }
        }
    }

    private void b(f fVar) {
        if (fVar instanceof e) {
            try {
                ((e) fVar).a();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(fVar);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private boolean c() {
        return (this.c == null || ((GoogleApiClient) this.g.get()) == null) ? false : true;
    }

    /* Access modifiers changed, original: 0000 */
    public void a() {
        this.c = null;
    }

    public void a(c<?> cVar) {
        synchronized (this.e) {
            this.d = cVar;
            b();
        }
    }

    public void a(final R r) {
        synchronized (this.e) {
            if (!r.a().d()) {
                a(r.a());
                b((f) r);
            } else if (this.a != null) {
                ae.a().submit(new Runnable() {
                    @WorkerThread
                    public void run() {
                        GoogleApiClient googleApiClient;
                        try {
                            vh.a.set(Boolean.valueOf(true));
                            al.this.h.sendMessage(al.this.h.obtainMessage(0, al.this.a.a(r)));
                            vh.a.set(Boolean.valueOf(false));
                            al.this.b(r);
                            googleApiClient = (GoogleApiClient) al.this.g.get();
                            if (googleApiClient != null) {
                                googleApiClient.b(al.this);
                            }
                        } catch (RuntimeException e) {
                            al.this.h.sendMessage(al.this.h.obtainMessage(1, e));
                            vh.a.set(Boolean.valueOf(false));
                            al.this.b(r);
                            googleApiClient = (GoogleApiClient) al.this.g.get();
                            if (googleApiClient != null) {
                                googleApiClient.b(al.this);
                            }
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            vh.a.set(Boolean.valueOf(false));
                            al.this.b(r);
                            googleApiClient = (GoogleApiClient) al.this.g.get();
                            if (googleApiClient != null) {
                                googleApiClient.b(al.this);
                            }
                        }
                    }
                });
            } else if (c()) {
                this.c.b(r);
            }
        }
    }
}
