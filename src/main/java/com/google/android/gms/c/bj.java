package com.google.android.gms.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;

public final class bj extends a {
    public static final Creator<bj> CREATOR = new bk();
    public final int a;
    private aw.a b = null;
    private byte[] c;

    bj(int i, byte[] bArr) {
        this.a = i;
        this.c = bArr;
        e();
    }

    private boolean c() {
        return this.b != null;
    }

    private void d() {
        if (!c()) {
            try {
                this.b = aw.a.a(this.c);
                this.c = null;
            } catch (ep e) {
                throw new IllegalStateException(e);
            }
        }
        e();
    }

    private void e() {
        if (this.b == null && this.c != null) {
            return;
        }
        if (this.b != null && this.c == null) {
            return;
        }
        if (this.b != null && this.c != null) {
            throw new IllegalStateException("Invalid internal representation - full");
        } else if (this.b == null && this.c == null) {
            throw new IllegalStateException("Invalid internal representation - empty");
        } else {
            throw new IllegalStateException("Impossible");
        }
    }

    public byte[] a() {
        return this.c != null ? this.c : eq.a(this.b);
    }

    public aw.a b() {
        d();
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        bk.a(this, parcel, i);
    }
}
