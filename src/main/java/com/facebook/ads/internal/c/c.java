package com.facebook.ads.internal.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.internal.g.a.a;
import com.facebook.ads.internal.g.a.n;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class c {
    private static final String a = c.class.getSimpleName();
    private static c b;
    private final Context c;

    private c(Context context) {
        this.c = context;
    }

    public static c a(Context context) {
        if (b == null) {
            Context applicationContext = context.getApplicationContext();
            synchronized (applicationContext) {
                if (b == null) {
                    b = new c(applicationContext);
                }
            }
        }
        return b;
    }

    private static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Nullable
    private Bitmap b(String str) {
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(new FileInputStream(str.substring("file://".length())), null, null);
            a(str, decodeStream);
            return decodeStream;
        } catch (IOException e) {
            Log.e(a, "Failed to copy local image into cache (url=" + str + ").", e);
            return null;
        }
    }

    @Nullable
    private Bitmap c(String str) {
        n a = new a(this.c).a(str, null);
        if (a == null || a.d() == null) {
            return null;
        }
        byte[] d = a.d();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(d, 0, d.length);
        a(str, decodeByteArray);
        return decodeByteArray;
    }

    @Nullable
    public Bitmap a(String str) {
        File file = new File(this.c.getCacheDir(), str.hashCode() + ".png");
        return !file.exists() ? str.startsWith("file://") ? b(str) : c(str) : BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:20:0x0084=Splitter:B:20:0x0084, B:25:0x00ab=Splitter:B:25:0x00ab} */
    public void a(java.lang.String r8, android.graphics.Bitmap r9) {
        /*
        r7 = this;
        r1 = 0;
        r4 = new java.io.File;
        r0 = r7.c;
        r0 = r0.getCacheDir();
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = r8.hashCode();
        r2 = r2.append(r3);
        r3 = ".png";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r4.<init>(r0, r2);
        r3 = new java.io.ByteArrayOutputStream;	 Catch:{ FileNotFoundException -> 0x0057, IOException -> 0x0082, OutOfMemoryError -> 0x00a9, all -> 0x00b9 }
        r3.<init>();	 Catch:{ FileNotFoundException -> 0x0057, IOException -> 0x0082, OutOfMemoryError -> 0x00a9, all -> 0x00b9 }
        r0 = android.graphics.Bitmap.CompressFormat.PNG;	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r2 = 100;
        r9.compress(r0, r2, r3);	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r0 = r3.size();	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r2 = 3145728; // 0x300000 float:4.408104E-39 double:1.554196E-317;
        if (r0 < r2) goto L_0x0045;
    L_0x0037:
        r0 = a;	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r2 = "Bitmap size exceeds max size for storage";
        android.util.Log.d(r0, r2);	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        a(r3);
        a(r1);
    L_0x0044:
        return;
    L_0x0045:
        r2 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r2.<init>(r4);	 Catch:{ FileNotFoundException -> 0x00d4, IOException -> 0x00cf, OutOfMemoryError -> 0x00ca }
        r3.writeTo(r2);	 Catch:{ FileNotFoundException -> 0x00d7, IOException -> 0x00d1, OutOfMemoryError -> 0x00cc, all -> 0x00c4 }
        r2.flush();	 Catch:{ FileNotFoundException -> 0x00d7, IOException -> 0x00d1, OutOfMemoryError -> 0x00cc, all -> 0x00c4 }
        a(r3);
        a(r2);
        goto L_0x0044;
    L_0x0057:
        r0 = move-exception;
        r2 = r1;
    L_0x0059:
        r3 = a;	 Catch:{ all -> 0x00c7 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c7 }
        r5.<init>();	 Catch:{ all -> 0x00c7 }
        r6 = "Bad output destination (file=";
        r5 = r5.append(r6);	 Catch:{ all -> 0x00c7 }
        r4 = r4.getAbsolutePath();	 Catch:{ all -> 0x00c7 }
        r4 = r5.append(r4);	 Catch:{ all -> 0x00c7 }
        r5 = ").";
        r4 = r4.append(r5);	 Catch:{ all -> 0x00c7 }
        r4 = r4.toString();	 Catch:{ all -> 0x00c7 }
        android.util.Log.e(r3, r4, r0);	 Catch:{ all -> 0x00c7 }
        a(r2);
        a(r1);
        goto L_0x0044;
    L_0x0082:
        r0 = move-exception;
        r3 = r1;
    L_0x0084:
        r2 = a;	 Catch:{ all -> 0x00c2 }
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00c2 }
        r4.<init>();	 Catch:{ all -> 0x00c2 }
        r5 = "Unable to write bitmap to file (url=";
        r4 = r4.append(r5);	 Catch:{ all -> 0x00c2 }
        r4 = r4.append(r8);	 Catch:{ all -> 0x00c2 }
        r5 = ").";
        r4 = r4.append(r5);	 Catch:{ all -> 0x00c2 }
        r4 = r4.toString();	 Catch:{ all -> 0x00c2 }
        android.util.Log.e(r2, r4, r0);	 Catch:{ all -> 0x00c2 }
        a(r3);
        a(r1);
        goto L_0x0044;
    L_0x00a9:
        r0 = move-exception;
        r3 = r1;
    L_0x00ab:
        r2 = a;	 Catch:{ all -> 0x00c2 }
        r4 = "Unable to write bitmap to output stream";
        android.util.Log.e(r2, r4, r0);	 Catch:{ all -> 0x00c2 }
        a(r3);
        a(r1);
        goto L_0x0044;
    L_0x00b9:
        r0 = move-exception;
        r3 = r1;
    L_0x00bb:
        a(r3);
        a(r1);
        throw r0;
    L_0x00c2:
        r0 = move-exception;
        goto L_0x00bb;
    L_0x00c4:
        r0 = move-exception;
        r1 = r2;
        goto L_0x00bb;
    L_0x00c7:
        r0 = move-exception;
        r3 = r2;
        goto L_0x00bb;
    L_0x00ca:
        r0 = move-exception;
        goto L_0x00ab;
    L_0x00cc:
        r0 = move-exception;
        r1 = r2;
        goto L_0x00ab;
    L_0x00cf:
        r0 = move-exception;
        goto L_0x0084;
    L_0x00d1:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0084;
    L_0x00d4:
        r0 = move-exception;
        r2 = r3;
        goto L_0x0059;
    L_0x00d7:
        r0 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x0059;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.c.c.a(java.lang.String, android.graphics.Bitmap):void");
    }
}
