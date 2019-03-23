package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.b;
import java.util.Comparator;

public class a extends com.google.android.gms.common.internal.safeparcel.a {
    public static final Creator<a> CREATOR = new s();
    public static final Comparator<a> a = new Comparator<a>() {
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            int compareTo = Integer.valueOf(aVar2.b()).compareTo(Integer.valueOf(aVar.b()));
            return compareTo == 0 ? Integer.valueOf(aVar.a()).compareTo(Integer.valueOf(aVar2.a())) : compareTo;
        }
    };
    public static final int[] b = new int[]{9, 10};
    public static final int[] c = new int[]{0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14};
    int d;
    int e;
    private final int f;

    public a(int i, int i2, int i3) {
        this.f = i;
        this.d = i2;
        this.e = i3;
    }

    public static String a(int i) {
        switch (i) {
            case 0:
                return "IN_VEHICLE";
            case 1:
                return "ON_BICYCLE";
            case 2:
                return "ON_FOOT";
            case 3:
                return "STILL";
            case 4:
                return "UNKNOWN";
            case 5:
                return "TILTING";
            case 7:
                return "WALKING";
            case 8:
                return "RUNNING";
            default:
                return Integer.toString(i);
        }
    }

    private int b(int i) {
        return i > 15 ? 4 : i;
    }

    public int a() {
        return b(this.d);
    }

    public int b() {
        return this.e;
    }

    public int c() {
        return this.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.d == aVar.d && this.e == aVar.e;
    }

    public int hashCode() {
        return b.a(Integer.valueOf(this.d), Integer.valueOf(this.e));
    }

    public String toString() {
        String valueOf = String.valueOf(a(a()));
        return new StringBuilder(String.valueOf(valueOf).length() + 48).append("DetectedActivity [type=").append(valueOf).append(", confidence=").append(this.e).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        s.a(this, parcel, i);
    }
}
