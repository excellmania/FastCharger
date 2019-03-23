package com.google.android.a.e.g;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.a.e.f;
import com.google.android.a.h.o;

final class d {
    private final o a = new o(8);
    private int b;

    private long b(f fVar) {
        int i = 0;
        fVar.c(this.a.a, 0, 1);
        int i2 = this.a.a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i4++;
            i3 >>= 1;
        }
        i3 = (i3 ^ -1) & i2;
        fVar.c(this.a.a, 1, i4);
        while (i < i4) {
            i3 = (i3 << 8) + (this.a.a[i + 1] & 255);
            i++;
        }
        this.b += i4 + 1;
        return (long) i3;
    }

    public boolean a(f fVar) {
        long d = fVar.d();
        long j = (d == -1 || d > PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) ? PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID : d;
        int i = (int) j;
        fVar.c(this.a.a, 0, 4);
        j = this.a.k();
        this.b = 4;
        while (j != 440786851) {
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == i) {
                return false;
            }
            fVar.c(this.a.a, 0, 1);
            j = ((j << 8) & -256) | ((long) (this.a.a[0] & 255));
        }
        j = b(fVar);
        long j2 = (long) this.b;
        if (j == Long.MIN_VALUE) {
            return false;
        }
        if (d != -1 && j2 + j >= d) {
            return false;
        }
        while (((long) this.b) < j2 + j) {
            if (b(fVar) == Long.MIN_VALUE) {
                return false;
            }
            d = b(fVar);
            if (d < 0 || d > 2147483647L) {
                return false;
            }
            if (d != 0) {
                fVar.c((int) d);
                this.b = (int) (d + ((long) this.b));
            }
        }
        return ((long) this.b) == j + j2;
    }
}
