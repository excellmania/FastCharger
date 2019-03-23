package com.google.android.gms.c;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.v;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.util.i;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;

@pa
public final class pr extends a {
    public static final Creator<pr> CREATOR = new ps();
    final int a;
    ParcelFileDescriptor b;
    private Parcelable c;
    private boolean d;

    pr(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.a = i;
        this.b = parcelFileDescriptor;
        this.c = null;
        this.d = true;
    }

    public pr(SafeParcelable safeParcelable) {
        this.a = 1;
        this.b = null;
        this.c = safeParcelable;
        this.d = false;
    }

    /* Access modifiers changed, original: protected */
    public <T> ParcelFileDescriptor a(final byte[] bArr) {
        Throwable e;
        ParcelFileDescriptor parcelFileDescriptor = null;
        final Closeable autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new AutoCloseOutputStream(createPipe[1]);
            try {
                new Thread(new Runnable(this) {
                    /* JADX WARNING: Removed duplicated region for block: B:12:0x002f  */
                    /* JADX WARNING: Removed duplicated region for block: B:11:0x0029  */
                    /* JADX WARNING: Removed duplicated region for block: B:18:0x003d  */
                    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
                    public void run() {
                        /*
                        r4 = this;
                        r2 = 0;
                        r1 = new java.io.DataOutputStream;	 Catch:{ IOException -> 0x0017, all -> 0x0033 }
                        r0 = r2;	 Catch:{ IOException -> 0x0017, all -> 0x0033 }
                        r1.<init>(r0);	 Catch:{ IOException -> 0x0017, all -> 0x0033 }
                        r0 = r6;	 Catch:{ IOException -> 0x0043 }
                        r0 = r0.length;	 Catch:{ IOException -> 0x0043 }
                        r1.writeInt(r0);	 Catch:{ IOException -> 0x0043 }
                        r0 = r6;	 Catch:{ IOException -> 0x0043 }
                        r1.write(r0);	 Catch:{ IOException -> 0x0043 }
                        com.google.android.gms.common.util.i.a(r1);
                    L_0x0016:
                        return;
                    L_0x0017:
                        r0 = move-exception;
                        r1 = r2;
                    L_0x0019:
                        r2 = "Error transporting the ad response";
                        com.google.android.gms.c.sz.b(r2, r0);	 Catch:{ all -> 0x0041 }
                        r2 = com.google.android.gms.ads.internal.v.i();	 Catch:{ all -> 0x0041 }
                        r3 = "LargeParcelTeleporter.pipeData.1";
                        r2.a(r0, r3);	 Catch:{ all -> 0x0041 }
                        if (r1 != 0) goto L_0x002f;
                    L_0x0029:
                        r0 = r2;
                        com.google.android.gms.common.util.i.a(r0);
                        goto L_0x0016;
                    L_0x002f:
                        com.google.android.gms.common.util.i.a(r1);
                        goto L_0x0016;
                    L_0x0033:
                        r0 = move-exception;
                        r1 = r2;
                    L_0x0035:
                        if (r1 != 0) goto L_0x003d;
                    L_0x0037:
                        r1 = r2;
                        com.google.android.gms.common.util.i.a(r1);
                    L_0x003c:
                        throw r0;
                    L_0x003d:
                        com.google.android.gms.common.util.i.a(r1);
                        goto L_0x003c;
                    L_0x0041:
                        r0 = move-exception;
                        goto L_0x0035;
                    L_0x0043:
                        r0 = move-exception;
                        goto L_0x0019;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.pr$AnonymousClass1.run():void");
                    }
                }).start();
                return createPipe[0];
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            autoCloseOutputStream = parcelFileDescriptor;
            sz.b("Error transporting the ad response", e);
            v.i().a(e, "LargeParcelTeleporter.pipeData.2");
            i.a(autoCloseOutputStream);
            return parcelFileDescriptor;
        }
    }

    public <T extends SafeParcelable> T a(Creator<T> creator) {
        if (this.d) {
            if (this.b == null) {
                sz.c("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new AutoCloseInputStream(this.b));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr, 0, bArr.length);
                i.a(dataInputStream);
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(bArr, 0, bArr.length);
                    obtain.setDataPosition(0);
                    this.c = (SafeParcelable) creator.createFromParcel(obtain);
                    this.d = false;
                } finally {
                    obtain.recycle();
                }
            } catch (IOException e) {
                throw new IllegalStateException("Could not read from parcel file descriptor", e);
            } catch (Throwable th) {
                i.a(dataInputStream);
            }
        }
        return (SafeParcelable) this.c;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.b == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.c.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                this.b = a(marshall);
            } finally {
                obtain.recycle();
            }
        }
        ps.a(this, parcel, i);
    }
}
