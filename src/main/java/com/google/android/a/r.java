package com.google.android.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaFormat;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.a.h.b;
import com.google.android.a.h.x;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class r implements Parcelable {
    public static final Creator<r> CREATOR = new Creator<r>() {
        /* renamed from: a */
        public r createFromParcel(Parcel parcel) {
            return new r(parcel);
        }

        /* renamed from: a */
        public r[] newArray(int i) {
            return new r[i];
        }
    };
    public final String a;
    public final String b;
    public final int c;
    public final int d;
    public final long e;
    public final List<byte[]> f;
    public final boolean g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final float m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final String s;
    public final long t;
    private int u;
    private MediaFormat v;

    r(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readLong();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.l = parcel.readInt();
        this.m = parcel.readFloat();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.s = parcel.readString();
        this.t = parcel.readLong();
        this.f = new ArrayList();
        parcel.readList(this.f, null);
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.g = z;
        this.j = parcel.readInt();
        this.k = parcel.readInt();
        this.p = parcel.readInt();
        this.q = parcel.readInt();
        this.r = parcel.readInt();
    }

    r(String str, String str2, int i, int i2, long j, int i3, int i4, int i5, float f, int i6, int i7, String str3, long j2, List<byte[]> list, boolean z, int i8, int i9, int i10, int i11, int i12) {
        this.a = str;
        this.b = b.a(str2);
        this.c = i;
        this.d = i2;
        this.e = j;
        this.h = i3;
        this.i = i4;
        this.l = i5;
        this.m = f;
        this.n = i6;
        this.o = i7;
        this.s = str3;
        this.t = j2;
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f = list;
        this.g = z;
        this.j = i8;
        this.k = i9;
        this.p = i10;
        this.q = i11;
        this.r = i12;
    }

    public static r a() {
        return a(null, "application/id3", -1, -1);
    }

    public static r a(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list) {
        return a(str, str2, i, i2, j, i3, i4, (List) list, -1, -1.0f);
    }

    public static r a(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, int i5, float f) {
        return new r(str, str2, i, i2, j, i3, i4, i5, f, -1, -1, null, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1);
    }

    public static r a(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, String str3) {
        return a(str, str2, i, i2, j, i3, i4, (List) list, str3, -1);
    }

    public static r a(String str, String str2, int i, int i2, long j, int i3, int i4, List<byte[]> list, String str3, int i5) {
        return new r(str, str2, i, i2, j, -1, -1, -1, -1.0f, i3, i4, str3, Long.MAX_VALUE, list, false, -1, -1, i5, -1, -1);
    }

    public static r a(String str, String str2, int i, long j) {
        return new r(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, false, -1, -1, -1, -1, -1);
    }

    public static r a(String str, String str2, int i, long j, String str3) {
        return a(str, str2, i, j, str3, Long.MAX_VALUE);
    }

    public static r a(String str, String str2, int i, long j, String str3, long j2) {
        return new r(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, str3, j2, null, false, -1, -1, -1, -1, -1);
    }

    public static r a(String str, String str2, int i, long j, List<byte[]> list, String str3) {
        return new r(str, str2, i, -1, j, -1, -1, -1, -1.0f, -1, -1, str3, Long.MAX_VALUE, list, false, -1, -1, -1, -1, -1);
    }

    @TargetApi(16)
    private static final void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @TargetApi(16)
    private static final void a(MediaFormat mediaFormat, String str, String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    public r a(int i) {
        return new r(this.a, this.b, this.c, i, this.e, this.h, this.i, this.l, this.m, this.n, this.o, this.s, this.t, this.f, this.g, this.j, this.k, this.p, this.q, this.r);
    }

    public r a(int i, int i2) {
        return new r(this.a, this.b, this.c, this.d, this.e, this.h, this.i, this.l, this.m, this.n, this.o, this.s, this.t, this.f, this.g, i, i2, this.p, this.q, this.r);
    }

    public r a(long j) {
        return new r(this.a, this.b, this.c, this.d, this.e, this.h, this.i, this.l, this.m, this.n, this.o, this.s, j, this.f, this.g, this.j, this.k, this.p, this.q, this.r);
    }

    public r a(String str) {
        return new r(str, this.b, -1, -1, this.e, -1, -1, -1, -1.0f, -1, -1, null, Long.MAX_VALUE, null, true, this.j, this.k, -1, -1, -1);
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(16)
    public final MediaFormat b() {
        if (this.v == null) {
            MediaFormat mediaFormat = new MediaFormat();
            mediaFormat.setString("mime", this.b);
            a(mediaFormat, "language", this.s);
            a(mediaFormat, "max-input-size", this.d);
            a(mediaFormat, "width", this.h);
            a(mediaFormat, "height", this.i);
            a(mediaFormat, "rotation-degrees", this.l);
            a(mediaFormat, "max-width", this.j);
            a(mediaFormat, "max-height", this.k);
            a(mediaFormat, "channel-count", this.n);
            a(mediaFormat, "sample-rate", this.o);
            a(mediaFormat, "encoder-delay", this.q);
            a(mediaFormat, "encoder-padding", this.r);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.f.size()) {
                    break;
                }
                mediaFormat.setByteBuffer("csd-" + i2, ByteBuffer.wrap((byte[]) this.f.get(i2)));
                i = i2 + 1;
            }
            if (this.e != -1) {
                mediaFormat.setLong("durationUs", this.e);
            }
            this.v = mediaFormat;
        }
        return this.v;
    }

    public r b(int i, int i2) {
        return new r(this.a, this.b, this.c, this.d, this.e, this.h, this.i, this.l, this.m, this.n, this.o, this.s, this.t, this.f, this.g, this.j, this.k, this.p, i, i2);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        if (this.g != rVar.g || this.c != rVar.c || this.d != rVar.d || this.e != rVar.e || this.h != rVar.h || this.i != rVar.i || this.l != rVar.l || this.m != rVar.m || this.j != rVar.j || this.k != rVar.k || this.n != rVar.n || this.o != rVar.o || this.p != rVar.p || this.q != rVar.q || this.r != rVar.r || this.t != rVar.t || !x.a(this.a, rVar.a) || !x.a(this.s, rVar.s) || !x.a(this.b, rVar.b) || this.f.size() != rVar.f.size()) {
            return false;
        }
        for (int i = 0; i < this.f.size(); i++) {
            if (!Arrays.equals((byte[]) this.f.get(i), (byte[]) rVar.f.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = 0;
        if (this.u == 0) {
            int hashCode = (((this.s == null ? 0 : this.s.hashCode()) + (((((((((((((((((this.g ? 1231 : 1237) + (((((((((((((((((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + 527) * 31)) * 31) + this.c) * 31) + this.d) * 31) + this.h) * 31) + this.i) * 31) + this.l) * 31) + Float.floatToRawIntBits(this.m)) * 31) + ((int) this.e)) * 31)) * 31) + this.j) * 31) + this.k) * 31) + this.n) * 31) + this.o) * 31) + this.p) * 31) + this.q) * 31) + this.r) * 31)) * 31) + ((int) this.t);
            while (i < this.f.size()) {
                hashCode = Arrays.hashCode((byte[]) this.f.get(i)) + (hashCode * 31);
                i++;
            }
            this.u = hashCode;
        }
        return this.u;
    }

    public String toString() {
        return "MediaFormat(" + this.a + ", " + this.b + ", " + this.c + ", " + this.d + ", " + this.h + ", " + this.i + ", " + this.l + ", " + this.m + ", " + this.n + ", " + this.o + ", " + this.s + ", " + this.e + ", " + this.g + ", " + this.j + ", " + this.k + ", " + this.p + ", " + this.q + ", " + this.r + ")";
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeLong(this.e);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.l);
        parcel.writeFloat(this.m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeString(this.s);
        parcel.writeLong(this.t);
        parcel.writeList(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.p);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r);
    }
}
