package com.facebook.ads.internal.h.c.c;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.internal.h.c.c.b.b;
import com.facebook.ads.internal.h.c.c.b.c;
import com.google.android.a.c.a.d;
import com.google.android.a.c.a.e;
import com.google.android.a.f;
import com.google.android.a.g.i;
import com.google.android.a.g.j;
import com.google.android.a.g.l;
import com.google.android.a.g.q;
import com.google.android.a.m;
import com.google.android.a.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.apache.http.protocol.HTTP;

public class a implements b {
    private b a;
    private c b;
    private Handler c;
    private String d;
    private String e;
    private String f;
    private int g;

    public a(int i, Handler handler, Uri uri, String str, String str2, b bVar) {
        this.g = i;
        this.c = handler;
        this.d = uri.toString();
        this.e = str;
        this.f = str2;
        this.a = bVar;
    }

    public void a(c cVar) {
        this.b = cVar;
        try {
            onSingleManifest(new e().b(this.d, new ByteArrayInputStream(this.e.getBytes(HTTP.UTF_8))));
        } catch (IOException e) {
            onSingleManifestError(e);
        }
    }

    /* renamed from: a */
    public void onSingleManifest(d dVar) {
        int i = 0;
        int i2 = 0;
        for (com.google.android.a.c.a.a aVar : dVar.a(0).c) {
            if (aVar.b == 1) {
                i2 += aVar.c.size();
            } else if (aVar.b == 0) {
                i += aVar.c.size();
            }
            i2 = i2;
            i = i;
        }
        if (i == 0 || i2 == 0) {
            onSingleManifestError(new IOException());
            return;
        }
        f fVar = new f(new i(this.g));
        q jVar = new j(this.c, this.a);
        this.b.a(new com.google.android.a.q(this.a.getContext(), new com.google.android.a.b.f(new com.google.android.a.c.a(dVar, com.google.android.a.c.e.a(this.a.getContext(), true, false), new l(this.a.getContext(), jVar, this.f), new com.google.android.a.b.j.a(jVar)), fVar, this.g * 200), n.a, 1, 5000, this.c, this.a, 50), new m(new com.google.android.a.b.f(new com.google.android.a.c.a(dVar, com.google.android.a.c.e.a(), new l(this.a.getContext(), jVar, this.f), new com.google.android.a.b.j.a(jVar)), fVar, this.g * 54), n.a));
    }

    public void onSingleManifestError(IOException iOException) {
        iOException.printStackTrace();
        this.b.a(iOException);
    }
}
