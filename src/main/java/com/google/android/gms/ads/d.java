package com.google.android.gms.ads;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.gms.c.ha;
import com.google.android.gms.c.hf;
import org.apache.http.HttpStatus;

public final class d {
    public static final d a = new d(320, 50, "320x50_mb");
    public static final d b = new d(468, 60, "468x60_as");
    public static final d c = new d(320, 100, "320x100_as");
    public static final d d = new d(728, 90, "728x90_as");
    public static final d e = new d(HttpStatus.SC_MULTIPLE_CHOICES, Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "300x250_as");
    public static final d f = new d(160, 600, "160x600_as");
    public static final d g = new d(-1, -2, "smart_banner");
    public static final d h = new d(-3, -4, "fluid");
    public static final d i = new d(-3, 0, "search_v2");
    private final int j;
    private final int k;
    private final String l;

    public d(int i, int i2) {
        Object obj;
        if (i == -1) {
            obj = "FULL";
        } else {
            String obj2 = String.valueOf(i);
        }
        Object valueOf = i2 == -2 ? "AUTO" : String.valueOf(i2);
        String valueOf2 = String.valueOf("_as");
        this(i, i2, new StringBuilder(((String.valueOf(obj2).length() + 1) + String.valueOf(valueOf).length()) + String.valueOf(valueOf2).length()).append(obj2).append("x").append(valueOf).append(valueOf2).toString());
    }

    d(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.j = i;
            this.k = i2;
            this.l = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
    }

    public int a() {
        return this.k;
    }

    public int a(Context context) {
        switch (this.k) {
            case -4:
            case -3:
                return -1;
            case -2:
                return ha.b(context.getResources().getDisplayMetrics());
            default:
                return hf.a().a(context, this.k);
        }
    }

    public int b() {
        return this.j;
    }

    public int b(Context context) {
        switch (this.j) {
            case -4:
            case -3:
                return -1;
            case -1:
                return ha.a(context.getResources().getDisplayMetrics());
            default:
                return hf.a().a(context, this.j);
        }
    }

    public boolean c() {
        return this.j == -3 && this.k == -4;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.j == dVar.j && this.k == dVar.k && this.l.equals(dVar.l);
    }

    public int hashCode() {
        return this.l.hashCode();
    }

    public String toString() {
        return this.l;
    }
}
