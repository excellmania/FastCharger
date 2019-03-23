package com.google.android.gms.c;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.v;
import java.util.LinkedList;
import java.util.List;

@pa
class ll {
    private final List<a> a = new LinkedList();

    interface a {
        void a(lm lmVar);
    }

    ll() {
    }

    /* Access modifiers changed, original: 0000 */
    public void a(l lVar) {
        lVar.a((hj) new com.google.android.gms.c.hj.a() {
            public void a() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.a != null) {
                            lmVar.a.a();
                        }
                        v.t().a();
                    }
                });
            }

            public void a(final int i) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.a != null) {
                            lmVar.a.a(i);
                        }
                    }
                });
                sf.a("Pooled interstitial failed to load.");
            }

            public void b() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.a != null) {
                            lmVar.a.b();
                        }
                    }
                });
            }

            public void c() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.a != null) {
                            lmVar.a.c();
                        }
                    }
                });
                sf.a("Pooled interstitial loaded.");
            }

            public void d() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.a != null) {
                            lmVar.a.d();
                        }
                    }
                });
            }
        });
        lVar.a((hp) new com.google.android.gms.c.hp.a() {
            public void a(final String str, final String str2) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.b != null) {
                            lmVar.b.a(str, str2);
                        }
                    }
                });
            }
        });
        lVar.a((nw) new com.google.android.gms.c.nw.a() {
            public void a(final nv nvVar) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.c != null) {
                            lmVar.c.a(nvVar);
                        }
                    }
                });
            }
        });
        lVar.a((jf) new com.google.android.gms.c.jf.a() {
            public void a(final je jeVar) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.d != null) {
                            lmVar.d.a(jeVar);
                        }
                    }
                });
            }
        });
        lVar.a((hi) new com.google.android.gms.c.hi.a() {
            public void a() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.e != null) {
                            lmVar.e.a();
                        }
                    }
                });
            }
        });
        lVar.a((qt) new com.google.android.gms.c.qt.a() {
            public void a() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.a();
                        }
                    }
                });
            }

            public void a(final int i) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.a(i);
                        }
                    }
                });
            }

            public void a(final qq qqVar) {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.a(qqVar);
                        }
                    }
                });
            }

            public void b() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.b();
                        }
                    }
                });
            }

            public void c() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.c();
                        }
                    }
                });
            }

            public void d() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.d();
                        }
                    }
                });
            }

            public void e() {
                ll.this.a.add(new a(this) {
                    public void a(lm lmVar) {
                        if (lmVar.f != null) {
                            lmVar.f.e();
                        }
                    }
                });
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public void a(final lm lmVar) {
        Handler handler = sj.a;
        for (final a aVar : this.a) {
            handler.post(new Runnable(this) {
                public void run() {
                    try {
                        aVar.a(lmVar);
                    } catch (RemoteException e) {
                        sz.c("Could not propagate interstitial ad event.", e);
                    }
                }
            });
        }
        this.a.clear();
    }
}
