package com.google.android.gms.c;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.io.InputStream;

@pa
public class gi extends a {
    public static final Creator<gi> CREATOR = new gj();
    public final int a;
    @Nullable
    private ParcelFileDescriptor b;

    public gi() {
        this(1, null);
    }

    gi(int i, @Nullable ParcelFileDescriptor parcelFileDescriptor) {
        this.a = i;
        this.b = parcelFileDescriptor;
    }

    public synchronized boolean a() {
        return this.b != null;
    }

    @Nullable
    public synchronized InputStream b() {
        InputStream inputStream = null;
        synchronized (this) {
            if (this.b != null) {
                inputStream = new AutoCloseInputStream(this.b);
                this.b = null;
            }
        }
        return inputStream;
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized ParcelFileDescriptor c() {
        return this.b;
    }

    public void writeToParcel(Parcel parcel, int i) {
        gj.a(this, parcel, i);
    }
}
