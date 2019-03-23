package com.google.android.a.g;

import android.net.Uri;
import com.google.android.a.h.b;
import java.util.Arrays;

public final class h {
    public final Uri a;
    public final byte[] b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;
    public final int g;

    public h(Uri uri, int i) {
        this(uri, 0, -1, null, i);
    }

    public h(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public h(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public h(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public h(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        b.a(j >= 0);
        b.a(j2 >= 0);
        boolean z = j3 > 0 || j3 == -1;
        b.a(z);
        this.a = uri;
        this.b = bArr;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str;
        this.g = i;
    }

    public String toString() {
        return "DataSpec[" + this.a + ", " + Arrays.toString(this.b) + ", " + this.c + ", " + this.d + ", " + this.e + ", " + this.f + ", " + this.g + "]";
    }
}
