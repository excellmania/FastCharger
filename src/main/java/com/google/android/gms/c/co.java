package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.safeparcel.a;

public class co extends a {
    public static final Creator<co> CREATOR = new cp();
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final String e;
    public final String f;
    public final boolean g;
    public final String h;
    public final boolean i;
    public final int j;

    public co(int i, String str, int i2, int i3, String str2, String str3, boolean z, String str4, boolean z2, int i4) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = str2;
        this.f = str3;
        this.g = z;
        this.h = str4;
        this.i = z2;
        this.j = i4;
    }

    public co(String str, int i, int i2, String str2, String str3, String str4, boolean z, int i3) {
        this.a = 1;
        this.b = (String) c.a((Object) str);
        this.c = i;
        this.d = i2;
        this.h = str2;
        this.e = str3;
        this.f = str4;
        this.g = !z;
        this.i = z;
        this.j = i3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof co)) {
            return false;
        }
        co coVar = (co) obj;
        return this.a == coVar.a && this.b.equals(coVar.b) && this.c == coVar.c && this.d == coVar.d && b.a(this.h, coVar.h) && b.a(this.e, coVar.e) && b.a(this.f, coVar.f) && this.g == coVar.g && this.i == coVar.i && this.j == coVar.j;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.a), this.b, Integer.valueOf(this.c), Integer.valueOf(this.d), this.h, this.e, this.f, Boolean.valueOf(this.g), Boolean.valueOf(this.i), Integer.valueOf(this.j));
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PlayLoggerContext[");
        stringBuilder.append("versionCode=").append(this.a).append(',');
        stringBuilder.append("package=").append(this.b).append(',');
        stringBuilder.append("packageVersionCode=").append(this.c).append(',');
        stringBuilder.append("logSource=").append(this.d).append(',');
        stringBuilder.append("logSourceName=").append(this.h).append(',');
        stringBuilder.append("uploadAccount=").append(this.e).append(',');
        stringBuilder.append("loggingId=").append(this.f).append(',');
        stringBuilder.append("logAndroidId=").append(this.g).append(',');
        stringBuilder.append("isAnonymous=").append(this.i).append(',');
        stringBuilder.append("qosTier=").append(this.j);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        cp.a(this, parcel, i);
    }
}
