package com.google.android.gms.c;

import android.support.annotation.NonNull;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class vd extends vg {
    private final SparseArray<a> e = new SparseArray();

    private class a implements c {
        public final int a;
        public final GoogleApiClient b;
        public final c c;

        public a(int i, GoogleApiClient googleApiClient, c cVar) {
            this.a = i;
            this.b = googleApiClient;
            this.c = cVar;
            googleApiClient.a((c) this);
        }

        public void a() {
            this.b.b((c) this);
            this.b.disconnect();
        }

        public void a(@NonNull com.google.android.gms.common.a aVar) {
            String valueOf = String.valueOf(aVar);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 27).append("beginFailureResolution for ").append(valueOf).toString());
            vd.this.b(aVar, this.a);
        }

        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append(str).append("GoogleApiClient #").print(this.a);
            printWriter.println(":");
            this.b.a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }
    }

    private vd(w wVar) {
        super(wVar);
        this.a.a("AutoManageHelper", (v) this);
    }

    public static vd b(u uVar) {
        w a = v.a(uVar);
        vd vdVar = (vd) a.a("AutoManageHelper", vd.class);
        return vdVar != null ? vdVar : new vd(a);
    }

    public void a() {
        super.a();
        boolean z = this.b;
        String valueOf = String.valueOf(this.e);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 14).append("onStart ").append(z).append(" ").append(valueOf).toString());
        if (!this.c) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.e.size()) {
                    ((a) this.e.valueAt(i2)).b.connect();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void a(int i) {
        a aVar = (a) this.e.get(i);
        this.e.remove(i);
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(int i, GoogleApiClient googleApiClient, c cVar) {
        com.google.android.gms.common.internal.c.a((Object) googleApiClient, (Object) "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.c.a(this.e.indexOfKey(i) < 0, "Already managing a GoogleApiClient with id " + i);
        Log.d("AutoManageHelper", "starting AutoManage for client " + i + " " + this.b + " " + this.c);
        this.e.put(i, new a(i, googleApiClient, cVar));
        if (this.b && !this.c) {
            String valueOf = String.valueOf(googleApiClient);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 11).append("connecting ").append(valueOf).toString());
            googleApiClient.connect();
        }
    }

    /* Access modifiers changed, original: protected */
    public void a(com.google.android.gms.common.a aVar, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        a aVar2 = (a) this.e.get(i);
        if (aVar2 != null) {
            a(i);
            c cVar = aVar2.c;
            if (cVar != null) {
                cVar.a(aVar);
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.e.size()) {
                ((a) this.e.valueAt(i2)).a(str, fileDescriptor, printWriter, strArr);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void b() {
        super.b();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.e.size()) {
                ((a) this.e.valueAt(i2)).b.disconnect();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void c() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.e.size()) {
                ((a) this.e.valueAt(i2)).b.connect();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
