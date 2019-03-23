package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.c.eu.c;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;

public class ur extends a {
    public static final Creator<ur> CREATOR = new us();
    public final int a;
    public co b;
    public byte[] c;
    public int[] d;
    public String[] e;
    public int[] f;
    public byte[][] g;
    public boolean h;
    public final c i;
    public final up.c j;
    public final up.c k;

    ur(int i, co coVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z) {
        this.a = i;
        this.b = coVar;
        this.c = bArr;
        this.d = iArr;
        this.e = strArr;
        this.i = null;
        this.j = null;
        this.k = null;
        this.f = iArr2;
        this.g = bArr2;
        this.h = z;
    }

    public ur(co coVar, c cVar, up.c cVar2, up.c cVar3, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, boolean z) {
        this.a = 1;
        this.b = coVar;
        this.i = cVar;
        this.j = cVar2;
        this.k = cVar3;
        this.d = iArr;
        this.e = strArr;
        this.f = iArr2;
        this.g = bArr;
        this.h = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ur)) {
            return false;
        }
        ur urVar = (ur) obj;
        return this.a == urVar.a && b.a(this.b, urVar.b) && Arrays.equals(this.c, urVar.c) && Arrays.equals(this.d, urVar.d) && Arrays.equals(this.e, urVar.e) && b.a(this.i, urVar.i) && b.a(this.j, urVar.j) && b.a(this.k, urVar.k) && Arrays.equals(this.f, urVar.f) && Arrays.deepEquals(this.g, urVar.g) && this.h == urVar.h;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.a), this.b, this.c, this.d, this.e, this.i, this.j, this.k, this.f, this.g, Boolean.valueOf(this.h));
    }

    public String toString() {
        return "LogEventParcelable[" + this.a + ", " + this.b + ", " + "LogEventBytes: " + (this.c == null ? null : new String(this.c)) + ", " + "TestCodes: " + Arrays.toString(this.d) + ", " + "MendelPackages: " + Arrays.toString(this.e) + ", " + "LogEvent: " + this.i + ", " + "ExtensionProducer: " + this.j + ", " + "VeProducer: " + this.k + ", " + "ExperimentIDs: " + Arrays.toString(this.f) + ", " + "ExperimentTokens: " + Arrays.toString(this.g) + ", " + "AddPhenotypeExperimentTokens: " + this.h + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        us.a(this, parcel, i);
    }
}
