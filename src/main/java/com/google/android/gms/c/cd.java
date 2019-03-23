package com.google.android.gms.c;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.location.w;
import com.google.android.gms.location.x;

public class cd extends a {
    public static final Creator<cd> CREATOR = new ce();
    int a;
    cb b;
    x c;
    PendingIntent d;
    w e;
    bv f;
    private final int g;

    cd(int i, int i2, cb cbVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        bv bvVar = null;
        this.g = i;
        this.a = i2;
        this.b = cbVar;
        this.c = iBinder == null ? null : x.a.a(iBinder);
        this.d = pendingIntent;
        this.e = iBinder2 == null ? null : w.a.a(iBinder2);
        if (iBinder3 != null) {
            bvVar = bv.a.a(iBinder3);
        }
        this.f = bvVar;
    }

    public static cd a(w wVar, @Nullable bv bvVar) {
        return new cd(1, 2, null, null, null, wVar.asBinder(), bvVar != null ? bvVar.asBinder() : null);
    }

    public static cd a(x xVar, @Nullable bv bvVar) {
        return new cd(1, 2, null, xVar.asBinder(), null, null, bvVar != null ? bvVar.asBinder() : null);
    }

    /* Access modifiers changed, original: 0000 */
    public int a() {
        return this.g;
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder b() {
        return this.c == null ? null : this.c.asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder c() {
        return this.e == null ? null : this.e.asBinder();
    }

    /* Access modifiers changed, original: 0000 */
    public IBinder d() {
        return this.f == null ? null : this.f.asBinder();
    }

    public void writeToParcel(Parcel parcel, int i) {
        ce.a(this, parcel, i);
    }
}
