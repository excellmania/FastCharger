package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.a.b;
import com.google.android.gms.ads.internal.m;
import com.google.android.gms.c.gq;
import com.google.android.gms.c.kn;
import com.google.android.gms.c.kt;
import com.google.android.gms.c.pa;
import com.google.android.gms.c.tc;
import com.google.android.gms.c.tr;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.a;

@pa
public final class AdOverlayInfoParcel extends a implements ReflectedParcelable {
    public static final Creator<AdOverlayInfoParcel> CREATOR = new i();
    public final int a;
    public final e b;
    public final gq c;
    public final j d;
    public final tr e;
    public final kn f;
    public final String g;
    public final boolean h;
    public final String i;
    public final s j;
    public final int k;
    public final int l;
    public final String m;
    public final tc n;
    public final kt o;
    public final String p;
    public final m q;

    AdOverlayInfoParcel(int i, e eVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i2, int i3, String str3, tc tcVar, IBinder iBinder6, String str4, m mVar) {
        this.a = i;
        this.b = eVar;
        this.c = (gq) b.a(com.google.android.gms.a.a.a.a(iBinder));
        this.d = (j) b.a(com.google.android.gms.a.a.a.a(iBinder2));
        this.e = (tr) b.a(com.google.android.gms.a.a.a.a(iBinder3));
        this.f = (kn) b.a(com.google.android.gms.a.a.a.a(iBinder4));
        this.g = str;
        this.h = z;
        this.i = str2;
        this.j = (s) b.a(com.google.android.gms.a.a.a.a(iBinder5));
        this.k = i2;
        this.l = i3;
        this.m = str3;
        this.n = tcVar;
        this.o = (kt) b.a(com.google.android.gms.a.a.a.a(iBinder6));
        this.p = str4;
        this.q = mVar;
    }

    public AdOverlayInfoParcel(e eVar, gq gqVar, j jVar, s sVar, tc tcVar) {
        this.a = 4;
        this.b = eVar;
        this.c = gqVar;
        this.d = jVar;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = null;
        this.j = sVar;
        this.k = -1;
        this.l = 4;
        this.m = null;
        this.n = tcVar;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(gq gqVar, j jVar, s sVar, tr trVar, int i, tc tcVar, String str, m mVar) {
        this.a = 4;
        this.b = null;
        this.c = gqVar;
        this.d = jVar;
        this.e = trVar;
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = null;
        this.j = sVar;
        this.k = i;
        this.l = 1;
        this.m = null;
        this.n = tcVar;
        this.o = null;
        this.p = str;
        this.q = mVar;
    }

    public AdOverlayInfoParcel(gq gqVar, j jVar, s sVar, tr trVar, boolean z, int i, tc tcVar) {
        this.a = 4;
        this.b = null;
        this.c = gqVar;
        this.d = jVar;
        this.e = trVar;
        this.f = null;
        this.g = null;
        this.h = z;
        this.i = null;
        this.j = sVar;
        this.k = i;
        this.l = 2;
        this.m = null;
        this.n = tcVar;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(gq gqVar, j jVar, kn knVar, s sVar, tr trVar, boolean z, int i, String str, tc tcVar, kt ktVar) {
        this.a = 4;
        this.b = null;
        this.c = gqVar;
        this.d = jVar;
        this.e = trVar;
        this.f = knVar;
        this.g = null;
        this.h = z;
        this.i = null;
        this.j = sVar;
        this.k = i;
        this.l = 3;
        this.m = str;
        this.n = tcVar;
        this.o = ktVar;
        this.p = null;
        this.q = null;
    }

    public AdOverlayInfoParcel(gq gqVar, j jVar, kn knVar, s sVar, tr trVar, boolean z, int i, String str, String str2, tc tcVar, kt ktVar) {
        this.a = 4;
        this.b = null;
        this.c = gqVar;
        this.d = jVar;
        this.e = trVar;
        this.f = knVar;
        this.g = str2;
        this.h = z;
        this.i = str;
        this.j = sVar;
        this.k = i;
        this.l = 3;
        this.m = null;
        this.n = tcVar;
        this.o = ktVar;
        this.p = null;
        this.q = null;
    }

    public static AdOverlayInfoParcel a(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            return null;
        }
    }

    public static void a(Intent intent, AdOverlayInfoParcel adOverlayInfoParcel) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder a() {
        return b.a(this.c).asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder b() {
        return b.a(this.d).asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder c() {
        return b.a(this.e).asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder d() {
        return b.a(this.f).asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder e() {
        return b.a(this.o).asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder f() {
        return b.a(this.j).asBinder();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i.a(this, parcel, i);
    }
}
