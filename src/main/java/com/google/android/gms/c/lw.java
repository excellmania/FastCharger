package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.v;
import java.util.Map;

@pa
public class lw {
    private final Object a;
    private final Context b;
    private final String c;
    private final tc d;
    private so<ls> e;
    private so<ls> f;
    @Nullable
    private d g;
    private int h;

    static class a {
        static int a = 60000;
        static int b = 10000;
    }

    public static class b<T> implements so<T> {
        public void a(T t) {
        }
    }

    public static class c extends tl<lx> {
        private final Object d = new Object();
        private final d e;
        private boolean f;

        public c(d dVar) {
            this.e = dVar;
        }

        public void d_() {
            synchronized (this.d) {
                if (this.f) {
                    return;
                }
                this.f = true;
                a(new com.google.android.gms.c.tk.c<lx>(this) {
                    public void a(lx lxVar) {
                        sf.a("Ending javascript session.");
                        ((ly) lxVar).a();
                    }
                }, new com.google.android.gms.c.tk.b());
                a(new com.google.android.gms.c.tk.c<lx>() {
                    public void a(lx lxVar) {
                        sf.a("Releasing engine reference.");
                        c.this.e.f_();
                    }
                }, new com.google.android.gms.c.tk.a() {
                    public void a() {
                        c.this.e.f_();
                    }
                });
            }
        }
    }

    public static class d extends tl<ls> {
        private final Object d = new Object();
        private so<ls> e;
        private boolean f;
        private int g;

        public d(so<ls> soVar) {
            this.e = soVar;
            this.f = false;
            this.g = 0;
        }

        public void c() {
            boolean z = true;
            synchronized (this.d) {
                if (this.g < 0) {
                    z = false;
                }
                com.google.android.gms.common.internal.c.a(z);
                sf.a("Releasing root reference. JS Engine will be destroyed once other references are released.");
                this.f = true;
                d();
            }
        }

        /* Access modifiers changed, original: protected */
        public void d() {
            synchronized (this.d) {
                com.google.android.gms.common.internal.c.a(this.g >= 0);
                if (this.f && this.g == 0) {
                    sf.a("No reference is left (including root). Cleaning up engine.");
                    a(new com.google.android.gms.c.tk.c<ls>() {
                        public void a(final ls lsVar) {
                            v.e().a(new Runnable() {
                                public void run() {
                                    d.this.e.a(lsVar);
                                    lsVar.a();
                                }
                            });
                        }
                    }, new com.google.android.gms.c.tk.b());
                } else {
                    sf.a("There are still references to the engine. Not destroying.");
                }
            }
        }

        public c e_() {
            final c cVar = new c(this);
            synchronized (this.d) {
                a(new com.google.android.gms.c.tk.c<ls>(this) {
                    public void a(ls lsVar) {
                        sf.a("Getting a new session for JS Engine.");
                        cVar.a(lsVar.b());
                    }
                }, new com.google.android.gms.c.tk.a(this) {
                    public void a() {
                        sf.a("Rejecting reference for JS Engine.");
                        cVar.a();
                    }
                });
                com.google.android.gms.common.internal.c.a(this.g >= 0);
                this.g++;
            }
            return cVar;
        }

        /* Access modifiers changed, original: protected */
        public void f_() {
            boolean z = true;
            synchronized (this.d) {
                if (this.g < 1) {
                    z = false;
                }
                com.google.android.gms.common.internal.c.a(z);
                sf.a("Releasing 1 reference for JS Engine");
                this.g--;
                d();
            }
        }
    }

    public static class e extends tl<lx> {
        private c d;

        public e(c cVar) {
            this.d = cVar;
        }

        public void a() {
            this.d.a();
        }

        public void a(lx lxVar) {
            this.d.a(lxVar);
        }

        public void a(com.google.android.gms.c.tk.c<lx> cVar, com.google.android.gms.c.tk.a aVar) {
            this.d.a(cVar, aVar);
        }

        public int b() {
            return this.d.b();
        }

        public void finalize() {
            this.d.d_();
            this.d = null;
        }
    }

    public lw(Context context, tc tcVar, String str) {
        this.a = new Object();
        this.h = 1;
        this.c = str;
        this.b = context.getApplicationContext();
        this.d = tcVar;
        this.e = new b();
        this.f = new b();
    }

    public lw(Context context, tc tcVar, String str, so<ls> soVar, so<ls> soVar2) {
        this(context, tcVar, str);
        this.e = soVar;
        this.f = soVar2;
    }

    private d c(@Nullable final cm cmVar) {
        final d dVar = new d(this.f);
        v.e().a(new Runnable() {
            public void run() {
                final ls a = lw.this.a(lw.this.b, lw.this.d, cmVar);
                a.a(new com.google.android.gms.c.ls.a() {
                    public void a() {
                        sj.a.postDelayed(new Runnable() {
                            /* JADX WARNING: Missing block: B:14:?, code skipped:
            return;
     */
                            public void run() {
                                /*
                                r3 = this;
                                r0 = com.google.android.gms.c.lw.1.AnonymousClass1.this;
                                r0 = com.google.android.gms.c.lw.AnonymousClass1.this;
                                r0 = com.google.android.gms.c.lw.this;
                                r1 = r0.a;
                                monitor-enter(r1);
                                r0 = com.google.android.gms.c.lw.1.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = r0;	 Catch:{ all -> 0x0043 }
                                r0 = r0.b();	 Catch:{ all -> 0x0043 }
                                r2 = -1;
                                if (r0 == r2) goto L_0x0025;
                            L_0x0018:
                                r0 = com.google.android.gms.c.lw.1.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = r0;	 Catch:{ all -> 0x0043 }
                                r0 = r0.b();	 Catch:{ all -> 0x0043 }
                                r2 = 1;
                                if (r0 != r2) goto L_0x0027;
                            L_0x0025:
                                monitor-exit(r1);	 Catch:{ all -> 0x0043 }
                            L_0x0026:
                                return;
                            L_0x0027:
                                r0 = com.google.android.gms.c.lw.1.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0043 }
                                r0 = r0;	 Catch:{ all -> 0x0043 }
                                r0.a();	 Catch:{ all -> 0x0043 }
                                r0 = com.google.android.gms.ads.internal.v.e();	 Catch:{ all -> 0x0043 }
                                r2 = new com.google.android.gms.c.lw$1$1$1$1;	 Catch:{ all -> 0x0043 }
                                r2.<init>();	 Catch:{ all -> 0x0043 }
                                r0.a(r2);	 Catch:{ all -> 0x0043 }
                                r0 = "Could not receive loaded message in a timely manner. Rejecting.";
                                com.google.android.gms.c.sf.a(r0);	 Catch:{ all -> 0x0043 }
                                monitor-exit(r1);	 Catch:{ all -> 0x0043 }
                                goto L_0x0026;
                            L_0x0043:
                                r0 = move-exception;
                                monitor-exit(r1);	 Catch:{ all -> 0x0043 }
                                throw r0;
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.lw$1$1$AnonymousClass1.run():void");
                            }
                        }, (long) a.b);
                    }
                });
                a.a("/jsLoaded", (kr) new kr() {
                    /* JADX WARNING: Missing block: B:14:?, code skipped:
            return;
     */
                    public void a(com.google.android.gms.c.tr r4, java.util.Map<java.lang.String, java.lang.String> r5) {
                        /*
                        r3 = this;
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;
                        r0 = com.google.android.gms.c.lw.this;
                        r1 = r0.a;
                        monitor-enter(r1);
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = r0;	 Catch:{ all -> 0x0051 }
                        r0 = r0.b();	 Catch:{ all -> 0x0051 }
                        r2 = -1;
                        if (r0 == r2) goto L_0x001f;
                    L_0x0014:
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = r0;	 Catch:{ all -> 0x0051 }
                        r0 = r0.b();	 Catch:{ all -> 0x0051 }
                        r2 = 1;
                        if (r0 != r2) goto L_0x0021;
                    L_0x001f:
                        monitor-exit(r1);	 Catch:{ all -> 0x0051 }
                    L_0x0020:
                        return;
                    L_0x0021:
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.this;	 Catch:{ all -> 0x0051 }
                        r2 = 0;
                        r0.h = r2;	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.this;	 Catch:{ all -> 0x0051 }
                        r0 = r0.e;	 Catch:{ all -> 0x0051 }
                        r2 = r0;	 Catch:{ all -> 0x0051 }
                        r0.a(r2);	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = r0;	 Catch:{ all -> 0x0051 }
                        r2 = r0;	 Catch:{ all -> 0x0051 }
                        r0.a(r2);	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r0 = com.google.android.gms.c.lw.this;	 Catch:{ all -> 0x0051 }
                        r2 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x0051 }
                        r2 = r0;	 Catch:{ all -> 0x0051 }
                        r0.g = r2;	 Catch:{ all -> 0x0051 }
                        r0 = "Successfully loaded JS Engine.";
                        com.google.android.gms.c.sf.a(r0);	 Catch:{ all -> 0x0051 }
                        monitor-exit(r1);	 Catch:{ all -> 0x0051 }
                        goto L_0x0020;
                    L_0x0051:
                        r0 = move-exception;
                        monitor-exit(r1);	 Catch:{ all -> 0x0051 }
                        throw r0;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.lw$1$AnonymousClass2.a(com.google.android.gms.c.tr, java.util.Map):void");
                    }
                });
                final sv svVar = new sv();
                AnonymousClass3 anonymousClass3 = new kr() {
                    public void a(tr trVar, Map<String, String> map) {
                        synchronized (lw.this.a) {
                            sz.d("JS Engine is requesting an update");
                            if (lw.this.h == 0) {
                                sz.d("Starting reload.");
                                lw.this.h = 2;
                                lw.this.a(cmVar);
                            }
                            a.b("/requestReload", (kr) svVar.a());
                        }
                    }
                };
                svVar.a(anonymousClass3);
                a.a("/requestReload", (kr) anonymousClass3);
                if (lw.this.c.endsWith(".js")) {
                    a.a(lw.this.c);
                } else if (lw.this.c.startsWith("<html>")) {
                    a.c(lw.this.c);
                } else {
                    a.b(lw.this.c);
                }
                sj.a.postDelayed(new Runnable() {
                    /* JADX WARNING: Missing block: B:14:?, code skipped:
            return;
     */
                    public void run() {
                        /*
                        r3 = this;
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;
                        r0 = com.google.android.gms.c.lw.this;
                        r1 = r0.a;
                        monitor-enter(r1);
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x003b }
                        r0 = r0;	 Catch:{ all -> 0x003b }
                        r0 = r0.b();	 Catch:{ all -> 0x003b }
                        r2 = -1;
                        if (r0 == r2) goto L_0x001f;
                    L_0x0014:
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x003b }
                        r0 = r0;	 Catch:{ all -> 0x003b }
                        r0 = r0.b();	 Catch:{ all -> 0x003b }
                        r2 = 1;
                        if (r0 != r2) goto L_0x0021;
                    L_0x001f:
                        monitor-exit(r1);	 Catch:{ all -> 0x003b }
                    L_0x0020:
                        return;
                    L_0x0021:
                        r0 = com.google.android.gms.c.lw.AnonymousClass1.this;	 Catch:{ all -> 0x003b }
                        r0 = r0;	 Catch:{ all -> 0x003b }
                        r0.a();	 Catch:{ all -> 0x003b }
                        r0 = com.google.android.gms.ads.internal.v.e();	 Catch:{ all -> 0x003b }
                        r2 = new com.google.android.gms.c.lw$1$4$1;	 Catch:{ all -> 0x003b }
                        r2.<init>();	 Catch:{ all -> 0x003b }
                        r0.a(r2);	 Catch:{ all -> 0x003b }
                        r0 = "Could not receive loaded message in a timely manner. Rejecting.";
                        com.google.android.gms.c.sf.a(r0);	 Catch:{ all -> 0x003b }
                        monitor-exit(r1);	 Catch:{ all -> 0x003b }
                        goto L_0x0020;
                    L_0x003b:
                        r0 = move-exception;
                        monitor-exit(r1);	 Catch:{ all -> 0x003b }
                        throw r0;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.lw$1$AnonymousClass4.run():void");
                    }
                }, (long) a.a);
            }
        });
        return dVar;
    }

    /* Access modifiers changed, original: protected */
    public ls a(Context context, tc tcVar, @Nullable cm cmVar) {
        return new lu(context, tcVar, cmVar, null);
    }

    public c a() {
        return b(null);
    }

    /* Access modifiers changed, original: protected */
    public d a(@Nullable cm cmVar) {
        final d c = c(cmVar);
        c.a(new com.google.android.gms.c.tk.c<ls>() {
            public void a(ls lsVar) {
                synchronized (lw.this.a) {
                    lw.this.h = 0;
                    if (!(lw.this.g == null || c == lw.this.g)) {
                        sf.a("New JS engine is loaded, marking previous one as destroyable.");
                        lw.this.g.c();
                    }
                    lw.this.g = c;
                }
            }
        }, new com.google.android.gms.c.tk.a() {
            public void a() {
                synchronized (lw.this.a) {
                    lw.this.h = 1;
                    sf.a("Failed loading new engine. Marking new engine destroyable.");
                    c.c();
                }
            }
        });
        return c;
    }

    public c b(@Nullable cm cmVar) {
        c e_;
        synchronized (this.a) {
            if (this.g == null || this.g.b() == -1) {
                this.h = 2;
                this.g = a(cmVar);
                e_ = this.g.e_();
            } else if (this.h == 0) {
                e_ = this.g.e_();
            } else if (this.h == 1) {
                this.h = 2;
                a(cmVar);
                e_ = this.g.e_();
            } else if (this.h == 2) {
                e_ = this.g.e_();
            } else {
                e_ = this.g.e_();
            }
        }
        return e_;
    }
}
