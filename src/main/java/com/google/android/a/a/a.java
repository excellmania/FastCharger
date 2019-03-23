package com.google.android.a.a;

import android.annotation.TargetApi;
import java.util.Arrays;

@TargetApi(21)
public final class a {
    public static final a a = new a(new int[]{2}, 2);
    private final int[] b;
    private final int c;

    a(int[] iArr, int i) {
        if (iArr != null) {
            this.b = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(this.b);
        } else {
            this.b = new int[0];
        }
        this.c = i;
    }

    public boolean a(int i) {
        return Arrays.binarySearch(this.b, i) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Arrays.equals(this.b, aVar.b) && this.c == aVar.c;
    }

    public int hashCode() {
        return this.c + (Arrays.hashCode(this.b) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.c + ", supportedEncodings=" + Arrays.toString(this.b) + "]";
    }
}
