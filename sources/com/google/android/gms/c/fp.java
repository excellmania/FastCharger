package com.google.android.gms.c;

import com.google.android.gms.c.lw.c;
import com.google.android.gms.c.tk.a;
import com.google.android.gms.c.tk.b;
import java.util.Map;
import org.json.JSONObject;

@pa
public class fp implements fq {
    private final fm a;
    private c b;
    private boolean c;
    private final kr d = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (fp.this.a.a((Map) map)) {
                fp.this.a.a(trVar, (Map) map);
            }
        }
    };
    private final kr e = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (fp.this.a.a((Map) map)) {
                fp.this.a.a(fp.this, (Map) map);
            }
        }
    };
    private final kr f = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            if (fp.this.a.a((Map) map)) {
                fp.this.a.b((Map) map);
            }
        }
    };

    public fp(fm fmVar, lw lwVar) {
        this.a = fmVar;
        this.b = lwVar.a();
        this.b.a(new tk.c<lx>() {
            public void a(lx lxVar) {
                fp.this.c = true;
                fp.this.a(lxVar);
            }
        }, new a() {
            public void a() {
                fp.this.a.b(fp.this);
            }
        });
        String str = "Core JS tracking ad unit: ";
        String valueOf = String.valueOf(this.a.r().d());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    /* Access modifiers changed, original: 0000 */
    public void a(lx lxVar) {
        lxVar.a("/updateActiveView", this.d);
        lxVar.a("/untrackActiveViewUnit", this.e);
        lxVar.a("/visibilityChanged", this.f);
    }

    public void a(final JSONObject jSONObject, boolean z) {
        this.b.a(new tk.c<lx>(this) {
            public void a(lx lxVar) {
                lxVar.a("AFMA_updateActiveView", jSONObject);
            }
        }, new b());
    }

    public boolean a() {
        return this.c;
    }

    public void b() {
        this.b.a(new tk.c<lx>() {
            public void a(lx lxVar) {
                fp.this.b(lxVar);
            }
        }, new b());
        this.b.d_();
    }

    /* Access modifiers changed, original: 0000 */
    public void b(lx lxVar) {
        lxVar.b("/visibilityChanged", this.f);
        lxVar.b("/untrackActiveViewUnit", this.e);
        lxVar.b("/updateActiveView", this.d);
    }
}
