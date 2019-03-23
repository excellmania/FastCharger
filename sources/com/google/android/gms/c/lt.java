package com.google.android.gms.c;

import android.content.Context;
import com.google.android.gms.ads.internal.d;
import java.util.concurrent.Future;

@pa
public class lt {

    private static class a<JavascriptEngine> extends te<JavascriptEngine> {
        JavascriptEngine a;

        private a() {
        }

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private ls a(Context context, tc tcVar, final a<ls> aVar, cm cmVar, d dVar) {
        lu luVar = new lu(context, tcVar, cmVar, dVar);
        aVar.a = luVar;
        luVar.a(new com.google.android.gms.c.ls.a(this) {
            public void a() {
                aVar.b((Object) (ls) aVar.a);
            }
        });
        return luVar;
    }

    public Future<ls> a(Context context, tc tcVar, String str, cm cmVar, d dVar) {
        final a aVar = new a();
        final Context context2 = context;
        final tc tcVar2 = tcVar;
        final cm cmVar2 = cmVar;
        final d dVar2 = dVar;
        final String str2 = str;
        sj.a.post(new Runnable() {
            public void run() {
                lt.this.a(context2, tcVar2, aVar, cmVar2, dVar2).b(str2);
            }
        });
        return aVar;
    }
}
