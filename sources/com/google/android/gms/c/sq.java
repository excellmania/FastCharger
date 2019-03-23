package com.google.android.gms.c;

import android.content.Context;
import android.support.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

@pa
public class sq {
    public static final a<Void> a = new a<Void>() {
        public /* bridge */ /* synthetic */ Object b() {
            return null;
        }

        public /* bridge */ /* synthetic */ Object b(InputStream inputStream) {
            return null;
        }
    };
    private static nx b;
    private static final Object c = new Object();

    public interface a<T> {
        T b();

        T b(InputStream inputStream);
    }

    private static class b<T> extends mw<InputStream> {
        private final a<T> a;
        private final com.google.android.gms.c.oy.b<T> b;

        public b(String str, final a<T> aVar, final com.google.android.gms.c.oy.b<T> bVar) {
            super(0, str, new com.google.android.gms.c.oy.a() {
                public void a(uc ucVar) {
                    bVar.a(aVar.b());
                }
            });
            this.a = aVar;
            this.b = bVar;
        }

        /* Access modifiers changed, original: protected */
        public oy<InputStream> a(ku kuVar) {
            return oy.a(new ByteArrayInputStream(kuVar.b), um.a(kuVar));
        }

        /* Access modifiers changed, original: protected */
        public void a(InputStream inputStream) {
            this.b.a(this.a.b(inputStream));
        }
    }

    private class c<T> extends te<T> implements com.google.android.gms.c.oy.b<T> {
        private c(sq sqVar) {
        }

        /* synthetic */ c(sq sqVar, AnonymousClass1 anonymousClass1) {
            this(sqVar);
        }

        public void a(@Nullable T t) {
            super.b((Object) t);
        }
    }

    public sq(Context context) {
        a(context);
    }

    private static nx a(Context context) {
        nx nxVar;
        synchronized (c) {
            if (b == null) {
                b = ao.a(context.getApplicationContext());
            }
            nxVar = b;
        }
        return nxVar;
    }

    public th<String> a(int i, final String str, @Nullable Map<String, String> map, @Nullable byte[] bArr) {
        final c cVar = new c(this, null);
        final byte[] bArr2 = bArr;
        final Map<String, String> map2 = map;
        b.a(new z(this, i, str, cVar, new com.google.android.gms.c.oy.a(this) {
            public void a(uc ucVar) {
                String str = str;
                String valueOf = String.valueOf(ucVar.toString());
                sz.e(new StringBuilder((String.valueOf(str).length() + 21) + String.valueOf(valueOf).length()).append("Failed to load URL: ").append(str).append("\n").append(valueOf).toString());
                cVar.a(null);
            }
        }) {
            public Map<String, String> f() {
                return map2 == null ? super.f() : map2;
            }

            public byte[] k() {
                return bArr2 == null ? super.k() : bArr2;
            }
        });
        return cVar;
    }

    public <T> th<T> a(String str, a<T> aVar) {
        c cVar = new c(this, null);
        b.a(new b(str, aVar, cVar));
        return cVar;
    }

    public th<String> a(String str, Map<String, String> map) {
        return a(0, str, map, null);
    }
}
