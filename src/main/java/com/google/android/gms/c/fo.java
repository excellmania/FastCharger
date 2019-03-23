package com.google.android.gms.c;

import java.util.Map;
import org.json.JSONObject;

@pa
public class fo implements fq {
    private final fm a;
    private final lx b;
    private final kr c = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            fo.this.a.a(trVar, (Map) map);
        }
    };
    private final kr d = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            fo.this.a.a(fo.this, (Map) map);
        }
    };
    private final kr e = new kr() {
        public void a(tr trVar, Map<String, String> map) {
            fo.this.a.b((Map) map);
        }
    };

    public fo(fm fmVar, lx lxVar) {
        this.a = fmVar;
        this.b = lxVar;
        a(this.b);
        String str = "Custom JS tracking ad unit: ";
        String valueOf = String.valueOf(this.a.r().d());
        sz.b(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    /* Access modifiers changed, original: 0000 */
    public void a(lx lxVar) {
        lxVar.a("/updateActiveView", this.c);
        lxVar.a("/untrackActiveViewUnit", this.d);
        lxVar.a("/visibilityChanged", this.e);
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (z) {
            this.a.b((fq) this);
        } else {
            this.b.a("AFMA_updateActiveView", jSONObject);
        }
    }

    public boolean a() {
        return true;
    }

    public void b() {
        b(this.b);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(lx lxVar) {
        lxVar.b("/visibilityChanged", this.e);
        lxVar.b("/untrackActiveViewUnit", this.d);
        lxVar.b("/updateActiveView", this.c);
    }
}
