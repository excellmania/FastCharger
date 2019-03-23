package com.facebook.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.NativeAd.MediaCacheFlag;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.adapters.s;
import com.facebook.ads.internal.d.d;
import com.facebook.ads.internal.d.f;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.y;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;

public class i implements com.facebook.ads.internal.server.a.a {
    private final Context a;
    private final String b;
    private final com.facebook.ads.internal.server.a c;
    private final e d;
    private final c e;
    private final AdSize f;
    private final int g;
    private boolean h = true;
    private final Handler i = new Handler();
    private final Runnable j = new b(this);
    private a k;
    private d l;

    public interface a {
        void a(b bVar);

        void a(List<r> list);
    }

    private static final class b extends y<i> {
        public b(i iVar) {
            super(iVar);
        }

        public void run() {
            i iVar = (i) a();
            if (iVar != null) {
                if (h.a(iVar.a)) {
                    iVar.a();
                } else {
                    iVar.i.postDelayed(iVar.j, 5000);
                }
            }
        }
    }

    public i(Context context, String str, e eVar, AdSize adSize, c cVar, int i, EnumSet<MediaCacheFlag> enumSet) {
        this.a = context;
        this.b = str;
        this.d = eVar;
        this.f = adSize;
        this.e = cVar;
        this.g = i;
        this.c = new com.facebook.ads.internal.server.a(context);
        this.c.a((com.facebook.ads.internal.server.a.a) this);
    }

    private List<r> d() {
        d dVar = this.l;
        com.facebook.ads.internal.d.a d = dVar.d();
        final ArrayList arrayList = new ArrayList(dVar.c());
        for (com.facebook.ads.internal.d.a aVar = d; aVar != null; aVar = dVar.d()) {
            AdAdapter a = com.facebook.ads.internal.adapters.d.a(aVar.a(), AdPlacementType.NATIVE);
            if (a != null && a.getPlacementType() == AdPlacementType.NATIVE) {
                HashMap hashMap = new HashMap();
                hashMap.put("data", aVar.b());
                hashMap.put("definition", dVar.a());
                ((r) a).a(this.a, new s() {
                    public void a(r rVar) {
                        arrayList.add(rVar);
                    }

                    public void a(r rVar, AdError adError) {
                    }

                    public void b(r rVar) {
                    }

                    public void c(r rVar) {
                    }
                }, hashMap);
            }
        }
        return arrayList;
    }

    public void a() {
        this.c.a(new f(this.a, this.b, this.f, this.d, this.e, this.g, AdSettings.isTestMode(this.a)));
    }

    public void a(b bVar) {
        if (this.h) {
            this.i.postDelayed(this.j, 1800000);
        }
        if (this.k != null) {
            this.k.a(bVar);
        }
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    public void a(com.facebook.ads.internal.server.d dVar) {
        d b = dVar.b();
        if (b == null) {
            throw new IllegalStateException("no placement in response");
        }
        if (this.h) {
            long b2 = b.a().b();
            if (b2 == 0) {
                b2 = 1800000;
            }
            this.i.postDelayed(this.j, b2);
        }
        this.l = b;
        List d = d();
        if (this.k == null) {
            return;
        }
        if (d.isEmpty()) {
            this.k.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
        } else {
            this.k.a(d);
        }
    }

    public void b() {
    }

    public void c() {
        this.h = false;
        this.i.removeCallbacks(this.j);
    }
}
