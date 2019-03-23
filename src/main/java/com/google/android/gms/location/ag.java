package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.List;

public class ag extends a {
    public static final Creator<ag> CREATOR = new ah();
    private final int a;
    private final List<String> b;
    private final PendingIntent c;
    private final String d;

    ag(int i, @Nullable List<String> list, @Nullable PendingIntent pendingIntent, String str) {
        this.a = i;
        this.b = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.c = pendingIntent;
        this.d = str;
    }

    public int a() {
        return this.a;
    }

    public List<String> b() {
        return this.b;
    }

    public PendingIntent c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ah.a(this, parcel, i);
    }
}
