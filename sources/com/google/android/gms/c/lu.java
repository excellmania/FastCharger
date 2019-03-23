package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.overlay.s;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.c.ls.a;
import org.apache.http.protocol.HTTP;
import org.json.JSONObject;

@pa
public class lu implements ls {
    private final tr a;

    public lu(Context context, tc tcVar, @Nullable cm cmVar, d dVar) {
        this.a = v.f().a(context, new ha(), false, false, cmVar, tcVar, null, null, dVar);
        this.a.a().setWillNotDraw(true);
    }

    private void a(Runnable runnable) {
        if (hf.a().b()) {
            runnable.run();
        } else {
            sj.a.post(runnable);
        }
    }

    public void a() {
        this.a.destroy();
    }

    public void a(gq gqVar, j jVar, kn knVar, s sVar, boolean z, kt ktVar, kw kwVar, e eVar, nm nmVar) {
        this.a.l().a(gqVar, jVar, knVar, sVar, z, ktVar, kwVar, new e(this.a.getContext(), false), nmVar, null);
    }

    public void a(final a aVar) {
        this.a.l().a(new ts.a(this) {
            public void a(tr trVar, boolean z) {
                aVar.a();
            }
        });
    }

    public void a(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[]{str});
        a(new Runnable() {
            public void run() {
                lu.this.a.loadData(format, "text/html", HTTP.UTF_8);
            }
        });
    }

    public void a(String str, kr krVar) {
        this.a.l().a(str, krVar);
    }

    public void a(final String str, final String str2) {
        a(new Runnable() {
            public void run() {
                lu.this.a.a(str, str2);
            }
        });
    }

    public void a(final String str, final JSONObject jSONObject) {
        a(new Runnable() {
            public void run() {
                lu.this.a.a(str, jSONObject);
            }
        });
    }

    public ly b() {
        return new lz(this);
    }

    public void b(final String str) {
        a(new Runnable() {
            public void run() {
                lu.this.a.loadUrl(str);
            }
        });
    }

    public void b(String str, kr krVar) {
        this.a.l().b(str, krVar);
    }

    public void b(String str, JSONObject jSONObject) {
        this.a.b(str, jSONObject);
    }

    public void c(final String str) {
        a(new Runnable() {
            public void run() {
                lu.this.a.loadData(str, "text/html", HTTP.UTF_8);
            }
        });
    }
}
