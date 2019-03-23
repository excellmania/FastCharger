package com.google.android.gms.c;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.g;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;

public final class up {
    public static final g<uu> a = new g();
    public static final com.google.android.gms.common.api.a.b<uu, com.google.android.gms.common.api.a.a.b> b = new com.google.android.gms.common.api.a.b<uu, com.google.android.gms.common.api.a.a.b>() {
        public uu a(Context context, Looper looper, o oVar, com.google.android.gms.common.api.a.a.b bVar, com.google.android.gms.common.api.GoogleApiClient.b bVar2, com.google.android.gms.common.api.GoogleApiClient.c cVar) {
            return new uu(context, looper, oVar, bVar2, cVar);
        }
    };
    @Deprecated
    public static final com.google.android.gms.common.api.a<com.google.android.gms.common.api.a.a.b> c = new com.google.android.gms.common.api.a("ClearcutLogger.API", b, a);
    private final String d;
    private final int e;
    private String f;
    private int g;
    private String h;
    private String i;
    private final boolean j;
    private int k;
    private final uq l;
    private final com.google.android.gms.common.util.c m;
    private d n;
    private final b o;

    public class a {
        private int b;
        private String c;
        private String d;
        private String e;
        private int f;
        private final c g;
        private ArrayList<Integer> h;
        private ArrayList<String> i;
        private ArrayList<Integer> j;
        private ArrayList<byte[]> k;
        private boolean l;
        private final com.google.android.gms.c.eu.c m;
        private boolean n;

        private a(up upVar, byte[] bArr) {
            this(bArr, null);
        }

        private a(byte[] bArr, c cVar) {
            this.b = up.this.g;
            this.c = up.this.f;
            this.d = up.this.h;
            this.e = up.this.i;
            this.f = 0;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = true;
            this.m = new com.google.android.gms.c.eu.c();
            this.n = false;
            this.d = up.this.h;
            this.e = up.this.i;
            this.m.a = up.this.m.a();
            this.m.b = up.this.m.b();
            this.m.o = up.this.n.a(this.m.a);
            if (bArr != null) {
                this.m.k = bArr;
            }
            this.g = cVar;
        }

        public a a(int i) {
            this.m.e = i;
            return this;
        }

        public ur a() {
            return new ur(new co(up.this.d, up.this.e, this.b, this.c, this.d, this.e, up.this.j, this.f), this.m, this.g, null, up.d(null), up.e(null), up.d(null), up.f(null), this.l);
        }

        @Deprecated
        public com.google.android.gms.common.api.c<Status> a(GoogleApiClient googleApiClient) {
            return b();
        }

        public a b(int i) {
            this.m.f = i;
            return this;
        }

        @Deprecated
        public com.google.android.gms.common.api.c<Status> b() {
            if (this.n) {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
            this.n = true;
            ur a = a();
            co coVar = a.b;
            return up.this.o.a(coVar.h, coVar.d) ? up.this.l.a(a) : com.google.android.gms.common.api.d.a(Status.a);
        }
    }

    public interface b {
        boolean a(String str, int i);
    }

    public interface c {
        byte[] a();
    }

    public static class d {
        public long a(long j) {
            return (long) (TimeZone.getDefault().getOffset(j) / 1000);
        }
    }

    public up(Context context, int i, String str, String str2, String str3, boolean z, uq uqVar, com.google.android.gms.common.util.c cVar, d dVar, b bVar) {
        boolean z2 = false;
        this.g = -1;
        this.k = 0;
        this.d = context.getPackageName();
        this.e = a(context);
        this.g = i;
        this.f = str;
        this.h = str2;
        this.i = str3;
        this.j = z;
        this.l = uqVar;
        this.m = cVar;
        if (dVar == null) {
            dVar = new d();
        }
        this.n = dVar;
        this.k = 0;
        this.o = bVar;
        if (this.j) {
            if (this.h == null) {
                z2 = true;
            }
            com.google.android.gms.common.internal.c.b(z2, "can't be anonymous with an upload account");
        }
    }

    public up(Context context, String str, String str2) {
        this(context, -1, str, str2, null, false, ut.a(context), e.d(), null, new uy(context));
    }

    private int a(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.");
            return i;
        }
    }

    private static int[] d(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int i = 0;
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return iArr;
            }
            i = i2 + 1;
            iArr[i2] = ((Integer) it.next()).intValue();
        }
    }

    private static String[] e(ArrayList<String> arrayList) {
        return arrayList == null ? null : (String[]) arrayList.toArray(new String[0]);
    }

    private static byte[][] f(ArrayList<byte[]> arrayList) {
        return arrayList == null ? null : (byte[][]) arrayList.toArray(new byte[0][]);
    }

    public a a(byte[] bArr) {
        return new a(this, bArr, null);
    }
}
