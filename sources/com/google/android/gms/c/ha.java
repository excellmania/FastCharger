package com.google.android.gms.c;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.j;
import com.google.android.gms.common.internal.safeparcel.a;
import org.apache.http.HttpStatus;

@pa
public class ha extends a {
    public static final Creator<ha> CREATOR = new hb();
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;
    public final int g;
    public final ha[] h;
    public final boolean i;
    public final boolean j;
    public boolean k;

    public ha() {
        this(5, "interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    ha(int i, String str, int i2, int i3, boolean z, int i4, int i5, ha[] haVarArr, boolean z2, boolean z3, boolean z4) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
        this.g = i5;
        this.h = haVarArr;
        this.i = z2;
        this.j = z3;
        this.k = z4;
    }

    public ha(Context context, d dVar) {
        this(context, new d[]{dVar});
    }

    public ha(Context context, d[] dVarArr) {
        int i;
        int i2;
        d dVar = dVarArr[0];
        this.a = 5;
        this.e = false;
        this.j = dVar.c();
        if (this.j) {
            this.f = d.a.b();
            this.c = d.a.a();
        } else {
            this.f = dVar.b();
            this.c = dVar.a();
        }
        int i3 = this.f == -1 ? 1 : 0;
        int i4 = this.c == -2 ? 1 : 0;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (i3 != 0) {
            if (hf.a().c(context) && hf.a().d(context)) {
                this.g = a(displayMetrics) - hf.a().e(context);
            } else {
                this.g = a(displayMetrics);
            }
            double d = (double) (((float) this.g) / displayMetrics.density);
            i = (int) d;
            if (d - ((double) ((int) d)) >= 0.01d) {
                i++;
            }
            i2 = i;
        } else {
            i = this.f;
            this.g = hf.a().a(displayMetrics, this.f);
            i2 = i;
        }
        i = i4 != 0 ? c(displayMetrics) : this.c;
        this.d = hf.a().a(displayMetrics, i);
        if (i3 != 0 || i4 != 0) {
            this.b = i2 + "x" + i + "_as";
        } else if (this.j) {
            this.b = "320x50_mb";
        } else {
            this.b = dVar.toString();
        }
        if (dVarArr.length > 1) {
            this.h = new ha[dVarArr.length];
            for (i3 = 0; i3 < dVarArr.length; i3++) {
                this.h[i3] = new ha(context, dVarArr[i3]);
            }
        } else {
            this.h = null;
        }
        this.i = false;
        this.k = false;
    }

    public ha(ha haVar, ha[] haVarArr) {
        this(5, haVar.b, haVar.c, haVar.d, haVar.e, haVar.f, haVar.g, haVarArr, haVar.i, haVar.j, haVar.k);
    }

    public static int a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static ha a() {
        return new ha(5, "reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static ha a(Context context) {
        return new ha(5, "320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public static int b(DisplayMetrics displayMetrics) {
        return (int) (((float) c(displayMetrics)) * displayMetrics.density);
    }

    private static int c(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        return i <= HttpStatus.SC_BAD_REQUEST ? 32 : i <= 720 ? 50 : 90;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public d b() {
        return j.a(this.f, this.c, this.b);
    }

    public void writeToParcel(Parcel parcel, int i) {
        hb.a(this, parcel, i);
    }
}
