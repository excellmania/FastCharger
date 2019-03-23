package com.google.android.gms.c;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.k;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class dn {
    protected static final Object c = new Object();
    protected static final Object e = new Object();
    private static final String h = dn.class.getSimpleName();
    private static k u = null;
    protected Context a;
    protected Context b;
    protected boolean d = false;
    protected boolean f = false;
    protected boolean g = false;
    private ExecutorService i;
    private DexClassLoader j;
    private cq k;
    private byte[] l;
    private volatile a m = null;
    private volatile boolean n = false;
    private Future o = null;
    private volatile aw.a p = null;
    private Future q = null;
    private volatile boolean r = false;
    private bc s;
    private GoogleApiClient t = null;
    private Map<Pair<String, String>, fa> v;

    private dn(Context context) {
        this.a = context;
        this.b = context.getApplicationContext();
        this.v = new HashMap();
    }

    public static dn a(Context context, String str, String str2, boolean z) {
        dn dnVar = new dn(context);
        try {
            dnVar.a(str, str2, z);
            return dnVar;
        } catch (dj e) {
            return null;
        }
    }

    @NonNull
    private File a(String str, File file, String str2) {
        File file2 = new File(String.format("%s/%s.jar", new Object[]{file, str2}));
        if (!file2.exists()) {
            byte[] a = this.k.a(this.l, str);
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(a, 0, a.length);
            fileOutputStream.close();
        }
        return file2;
    }

    private void a(File file) {
        if (file.exists()) {
            file.delete();
            return;
        }
        Log.d(h, String.format("File %s not found. No need for deletion", new Object[]{file.getAbsolutePath()}));
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x009b A:{SYNTHETIC, Splitter:B:27:0x009b} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A:{SYNTHETIC, Splitter:B:30:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009b A:{SYNTHETIC, Splitter:B:27:0x009b} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A:{SYNTHETIC, Splitter:B:30:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ac A:{SYNTHETIC, Splitter:B:36:0x00ac} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b1 A:{SYNTHETIC, Splitter:B:39:0x00b1} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009b A:{SYNTHETIC, Splitter:B:27:0x009b} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A:{SYNTHETIC, Splitter:B:30:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009b A:{SYNTHETIC, Splitter:B:27:0x009b} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A:{SYNTHETIC, Splitter:B:30:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009b A:{SYNTHETIC, Splitter:B:27:0x009b} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00a0 A:{SYNTHETIC, Splitter:B:30:0x00a0} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00ac A:{SYNTHETIC, Splitter:B:36:0x00ac} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b1 A:{SYNTHETIC, Splitter:B:39:0x00b1} */
    private void a(java.io.File r12, java.lang.String r13) {
        /*
        r11 = this;
        r1 = 0;
        r7 = 2;
        r6 = 1;
        r5 = 0;
        r3 = new java.io.File;
        r0 = "%s/%s.tmp";
        r2 = new java.lang.Object[r7];
        r2[r5] = r12;
        r2[r6] = r13;
        r0 = java.lang.String.format(r0, r2);
        r3.<init>(r0);
        r0 = r3.exists();
        if (r0 == 0) goto L_0x001c;
    L_0x001b:
        return;
    L_0x001c:
        r4 = new java.io.File;
        r0 = "%s/%s.dex";
        r2 = new java.lang.Object[r7];
        r2[r5] = r12;
        r2[r6] = r13;
        r0 = java.lang.String.format(r0, r2);
        r4.<init>(r0);
        r0 = r4.exists();
        if (r0 == 0) goto L_0x001b;
    L_0x0033:
        r6 = r4.length();
        r8 = 0;
        r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r0 <= 0) goto L_0x001b;
    L_0x003d:
        r0 = (int) r6;
        r0 = new byte[r0];
        r2 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x00de, NoSuchAlgorithmException -> 0x00d4, a -> 0x0097, all -> 0x00a8 }
        r2.<init>(r4);	 Catch:{ IOException -> 0x00de, NoSuchAlgorithmException -> 0x00d4, a -> 0x0097, all -> 0x00a8 }
        r5 = r2.read(r0);	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        if (r5 > 0) goto L_0x0052;
    L_0x004b:
        r2.close();	 Catch:{ IOException -> 0x00b8 }
    L_0x004e:
        r11.a(r4);
        goto L_0x001b;
    L_0x0052:
        r5 = new com.google.android.gms.c.aw$d;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r5.<init>();	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r6 = android.os.Build.VERSION.SDK;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r6 = r6.getBytes();	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r5.d = r6;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r6 = r13.getBytes();	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r5.c = r6;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r6 = r11.k;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r7 = r11.l;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r0 = r6.a(r7, r0);	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r0 = r0.getBytes();	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r5.a = r0;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r0 = com.google.android.gms.c.ba.a(r0);	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r5.b = r0;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r3.createNewFile();	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r0 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r0.<init>(r3);	 Catch:{ IOException -> 0x00e1, NoSuchAlgorithmException -> 0x00d7, a -> 0x00cd, all -> 0x00c6 }
        r1 = com.google.android.gms.c.eq.a(r5);	 Catch:{ IOException -> 0x00e5, NoSuchAlgorithmException -> 0x00db, a -> 0x00d1, all -> 0x00c8 }
        r3 = 0;
        r5 = r1.length;	 Catch:{ IOException -> 0x00e5, NoSuchAlgorithmException -> 0x00db, a -> 0x00d1, all -> 0x00c8 }
        r0.write(r1, r3, r5);	 Catch:{ IOException -> 0x00e5, NoSuchAlgorithmException -> 0x00db, a -> 0x00d1, all -> 0x00c8 }
        r0.close();	 Catch:{ IOException -> 0x00e5, NoSuchAlgorithmException -> 0x00db, a -> 0x00d1, all -> 0x00c8 }
        r2.close();	 Catch:{ IOException -> 0x00ba }
    L_0x0090:
        r0.close();	 Catch:{ IOException -> 0x00bc }
    L_0x0093:
        r11.a(r4);
        goto L_0x001b;
    L_0x0097:
        r0 = move-exception;
        r0 = r1;
    L_0x0099:
        if (r1 == 0) goto L_0x009e;
    L_0x009b:
        r1.close();	 Catch:{ IOException -> 0x00be }
    L_0x009e:
        if (r0 == 0) goto L_0x00a3;
    L_0x00a0:
        r0.close();	 Catch:{ IOException -> 0x00c0 }
    L_0x00a3:
        r11.a(r4);
        goto L_0x001b;
    L_0x00a8:
        r0 = move-exception;
        r2 = r1;
    L_0x00aa:
        if (r2 == 0) goto L_0x00af;
    L_0x00ac:
        r2.close();	 Catch:{ IOException -> 0x00c2 }
    L_0x00af:
        if (r1 == 0) goto L_0x00b4;
    L_0x00b1:
        r1.close();	 Catch:{ IOException -> 0x00c4 }
    L_0x00b4:
        r11.a(r4);
        throw r0;
    L_0x00b8:
        r0 = move-exception;
        goto L_0x004e;
    L_0x00ba:
        r1 = move-exception;
        goto L_0x0090;
    L_0x00bc:
        r0 = move-exception;
        goto L_0x0093;
    L_0x00be:
        r1 = move-exception;
        goto L_0x009e;
    L_0x00c0:
        r0 = move-exception;
        goto L_0x00a3;
    L_0x00c2:
        r2 = move-exception;
        goto L_0x00af;
    L_0x00c4:
        r1 = move-exception;
        goto L_0x00b4;
    L_0x00c6:
        r0 = move-exception;
        goto L_0x00aa;
    L_0x00c8:
        r1 = move-exception;
        r10 = r1;
        r1 = r0;
        r0 = r10;
        goto L_0x00aa;
    L_0x00cd:
        r0 = move-exception;
        r0 = r1;
        r1 = r2;
        goto L_0x0099;
    L_0x00d1:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0099;
    L_0x00d4:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0099;
    L_0x00d7:
        r0 = move-exception;
        r0 = r1;
        r1 = r2;
        goto L_0x0099;
    L_0x00db:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0099;
    L_0x00de:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0099;
    L_0x00e1:
        r0 = move-exception;
        r0 = r1;
        r1 = r2;
        goto L_0x0099;
    L_0x00e5:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0099;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.dn.a(java.io.File, java.lang.String):void");
    }

    private void a(String str) {
        this.k = new cq(null);
        try {
            this.l = this.k.a(str);
        } catch (cq.a e) {
            throw new dj(e);
        }
    }

    private void a(boolean z) {
        this.n = z;
        if (z) {
            this.o = this.i.submit(new Runnable() {
                public void run() {
                    dn.this.s();
                }
            });
        }
    }

    private boolean a(String str, String str2, boolean z) {
        this.i = Executors.newCachedThreadPool();
        a(z);
        v();
        t();
        if (dp.b() && ((Boolean) is.bL.c()).booleanValue()) {
            throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
        }
        a(str);
        b(str2);
        this.s = new bc(this);
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d1 A:{SYNTHETIC, Splitter:B:51:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d6 A:{SYNTHETIC, Splitter:B:54:0x00d6} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c2 A:{SYNTHETIC, Splitter:B:42:0x00c2} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c7 A:{SYNTHETIC, Splitter:B:45:0x00c7} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00d1 A:{SYNTHETIC, Splitter:B:51:0x00d1} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00d6 A:{SYNTHETIC, Splitter:B:54:0x00d6} */
    private boolean b(java.io.File r11, java.lang.String r12) {
        /*
        r10 = this;
        r1 = 0;
        r6 = 2;
        r0 = 1;
        r2 = 0;
        r3 = new java.io.File;
        r4 = "%s/%s.tmp";
        r5 = new java.lang.Object[r6];
        r5[r2] = r11;
        r5[r0] = r12;
        r4 = java.lang.String.format(r4, r5);
        r3.<init>(r4);
        r4 = r3.exists();
        if (r4 != 0) goto L_0x001d;
    L_0x001b:
        r0 = r2;
    L_0x001c:
        return r0;
    L_0x001d:
        r5 = new java.io.File;
        r4 = "%s/%s.dex";
        r6 = new java.lang.Object[r6];
        r6[r2] = r11;
        r6[r0] = r12;
        r4 = java.lang.String.format(r4, r6);
        r5.<init>(r4);
        r4 = r5.exists();
        if (r4 == 0) goto L_0x0036;
    L_0x0034:
        r0 = r2;
        goto L_0x001c;
    L_0x0036:
        r6 = r3.length();	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r8 = 0;
        r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r4 > 0) goto L_0x0045;
    L_0x0040:
        r10.a(r3);	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r0 = r2;
        goto L_0x001c;
    L_0x0045:
        r4 = (int) r6;	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r6 = new byte[r4];	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r4 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r4.<init>(r3);	 Catch:{ IOException -> 0x0100, NoSuchAlgorithmException -> 0x00f5, a -> 0x00be, all -> 0x00cd }
        r7 = r4.read(r6);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        if (r7 > 0) goto L_0x0062;
    L_0x0053:
        r0 = h;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r5 = "Cannot read the cache data.";
        android.util.Log.d(r0, r5);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r10.a(r3);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r4.close();	 Catch:{ IOException -> 0x00da }
    L_0x0060:
        r0 = r2;
        goto L_0x001c;
    L_0x0062:
        r6 = com.google.android.gms.c.aw.d.a(r6);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7 = new java.lang.String;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = r6.c;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7.<init>(r8);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7 = r12.equals(r7);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        if (r7 == 0) goto L_0x008f;
    L_0x0073:
        r7 = r6.b;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = r6.a;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = com.google.android.gms.c.ba.a(r8);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7 = java.util.Arrays.equals(r7, r8);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        if (r7 == 0) goto L_0x008f;
    L_0x0081:
        r7 = r6.d;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = android.os.Build.VERSION.SDK;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = r8.getBytes();	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7 = java.util.Arrays.equals(r7, r8);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        if (r7 != 0) goto L_0x0097;
    L_0x008f:
        r10.a(r3);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r4.close();	 Catch:{ IOException -> 0x00dc }
    L_0x0095:
        r0 = r2;
        goto L_0x001c;
    L_0x0097:
        r3 = r10.k;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r7 = r10.l;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8 = new java.lang.String;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r6 = r6.a;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r8.<init>(r6);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r6 = r3.a(r7, r8);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r5.createNewFile();	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r3 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r3.<init>(r5);	 Catch:{ IOException -> 0x0103, NoSuchAlgorithmException -> 0x00f8, a -> 0x00ed, all -> 0x00e8 }
        r1 = 0;
        r5 = r6.length;	 Catch:{ IOException -> 0x0107, NoSuchAlgorithmException -> 0x00fc, a -> 0x00f1, all -> 0x00ea }
        r3.write(r6, r1, r5);	 Catch:{ IOException -> 0x0107, NoSuchAlgorithmException -> 0x00fc, a -> 0x00f1, all -> 0x00ea }
        r4.close();	 Catch:{ IOException -> 0x00de }
    L_0x00b6:
        r3.close();	 Catch:{ IOException -> 0x00bb }
        goto L_0x001c;
    L_0x00bb:
        r1 = move-exception;
        goto L_0x001c;
    L_0x00be:
        r0 = move-exception;
        r0 = r1;
    L_0x00c0:
        if (r1 == 0) goto L_0x00c5;
    L_0x00c2:
        r1.close();	 Catch:{ IOException -> 0x00e0 }
    L_0x00c5:
        if (r0 == 0) goto L_0x00ca;
    L_0x00c7:
        r0.close();	 Catch:{ IOException -> 0x00e2 }
    L_0x00ca:
        r0 = r2;
        goto L_0x001c;
    L_0x00cd:
        r0 = move-exception;
        r4 = r1;
    L_0x00cf:
        if (r4 == 0) goto L_0x00d4;
    L_0x00d1:
        r4.close();	 Catch:{ IOException -> 0x00e4 }
    L_0x00d4:
        if (r1 == 0) goto L_0x00d9;
    L_0x00d6:
        r1.close();	 Catch:{ IOException -> 0x00e6 }
    L_0x00d9:
        throw r0;
    L_0x00da:
        r0 = move-exception;
        goto L_0x0060;
    L_0x00dc:
        r0 = move-exception;
        goto L_0x0095;
    L_0x00de:
        r1 = move-exception;
        goto L_0x00b6;
    L_0x00e0:
        r1 = move-exception;
        goto L_0x00c5;
    L_0x00e2:
        r0 = move-exception;
        goto L_0x00ca;
    L_0x00e4:
        r2 = move-exception;
        goto L_0x00d4;
    L_0x00e6:
        r1 = move-exception;
        goto L_0x00d9;
    L_0x00e8:
        r0 = move-exception;
        goto L_0x00cf;
    L_0x00ea:
        r0 = move-exception;
        r1 = r3;
        goto L_0x00cf;
    L_0x00ed:
        r0 = move-exception;
        r0 = r1;
        r1 = r4;
        goto L_0x00c0;
    L_0x00f1:
        r0 = move-exception;
        r0 = r3;
        r1 = r4;
        goto L_0x00c0;
    L_0x00f5:
        r0 = move-exception;
        r0 = r1;
        goto L_0x00c0;
    L_0x00f8:
        r0 = move-exception;
        r0 = r1;
        r1 = r4;
        goto L_0x00c0;
    L_0x00fc:
        r0 = move-exception;
        r0 = r3;
        r1 = r4;
        goto L_0x00c0;
    L_0x0100:
        r0 = move-exception;
        r0 = r1;
        goto L_0x00c0;
    L_0x0103:
        r0 = move-exception;
        r0 = r1;
        r1 = r4;
        goto L_0x00c0;
    L_0x0107:
        r0 = move-exception;
        r0 = r3;
        r1 = r4;
        goto L_0x00c0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.dn.b(java.io.File, java.lang.String):boolean");
    }

    private boolean b(String str) {
        File file;
        String b;
        File a;
        try {
            File cacheDir = this.a.getCacheDir();
            if (cacheDir == null) {
                cacheDir = this.a.getDir("dex", 0);
                if (cacheDir == null) {
                    throw new dj();
                }
            }
            file = cacheDir;
            b = df.b();
            a = a(str, file, b);
            b(file, b);
            this.j = new DexClassLoader(a.getAbsolutePath(), file.getAbsolutePath(), null, this.a.getClassLoader());
            a(a);
            a(file, b);
            c(String.format("%s/%s.dex", new Object[]{file, b}));
            return true;
        } catch (FileNotFoundException e) {
            throw new dj(e);
        } catch (IOException e2) {
            throw new dj(e2);
        } catch (cq.a e3) {
            throw new dj(e3);
        } catch (NullPointerException e4) {
            throw new dj(e4);
        } catch (Throwable th) {
            a(a);
            a(file, b);
            c(String.format("%s/%s.dex", new Object[]{file, b}));
        }
    }

    private void c(String str) {
        a(new File(str));
    }

    private void s() {
        try {
            if (this.m == null && this.b != null) {
                a aVar = new a(this.b);
                aVar.a();
                this.m = aVar;
            }
        } catch (d | e | IOException e) {
            this.m = null;
        }
    }

    private void t() {
        if (((Boolean) is.bN.c()).booleanValue()) {
            n();
        }
    }

    private void u() {
        if (this.f) {
            try {
                this.p = bf.a(this.a, this.a.getPackageName(), Integer.toString(this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode));
            } catch (NameNotFoundException e) {
            }
        }
    }

    private void v() {
        boolean z = true;
        this.i.execute(new Runnable() {
            public void run() {
                is.a(dn.this.a);
            }
        });
        u = k.b();
        this.d = u.b(this.a) > 0;
        if (u.a(this.a) != 0) {
            z = false;
        }
        this.f = z;
        if (this.a.getApplicationContext() != null) {
            this.t = new GoogleApiClient.a(this.a).a(up.c).b();
        }
    }

    public Context a() {
        return this.a;
    }

    public Method a(String str, String str2) {
        fa faVar = (fa) this.v.get(new Pair(str, str2));
        return faVar == null ? null : faVar.a();
    }

    public boolean a(String str, String str2, List<Class> list) {
        if (this.v.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.v.put(new Pair(str, str2), new fa(this, str, str2, list));
        return true;
    }

    public Context b() {
        return this.b;
    }

    public ExecutorService c() {
        return this.i;
    }

    public DexClassLoader d() {
        return this.j;
    }

    public cq e() {
        return this.k;
    }

    public byte[] f() {
        return this.l;
    }

    public GoogleApiClient g() {
        return this.t;
    }

    public boolean h() {
        return this.d;
    }

    public boolean i() {
        return this.g;
    }

    public bc j() {
        return this.s;
    }

    public boolean k() {
        return this.f;
    }

    public aw.a l() {
        return this.p;
    }

    public Future m() {
        return this.q;
    }

    public void n() {
        synchronized (c) {
            if (!this.r) {
                this.q = this.i.submit(new Runnable() {
                    public void run() {
                        dn.this.u();
                        synchronized (dn.c) {
                            dn.this.r = false;
                        }
                    }
                });
                this.r = true;
            }
        }
    }

    public a o() {
        if (!this.n) {
            return null;
        }
        if (this.m != null) {
            return this.m;
        }
        if (this.o != null) {
            try {
                this.o.get(2000, TimeUnit.MILLISECONDS);
                this.o = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.o.cancel(true);
            }
        }
        return this.m;
    }

    /* JADX WARNING: Missing block: B:20:?, code skipped:
            return;
     */
    public void p() {
        /*
        r2 = this;
        r1 = e;
        monitor-enter(r1);
        r0 = r2.g;	 Catch:{ all -> 0x001b }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
    L_0x0008:
        return;
    L_0x0009:
        r0 = r2.f;	 Catch:{ all -> 0x001b }
        if (r0 == 0) goto L_0x001e;
    L_0x000d:
        r0 = r2.t;	 Catch:{ all -> 0x001b }
        if (r0 == 0) goto L_0x001e;
    L_0x0011:
        r0 = r2.t;	 Catch:{ all -> 0x001b }
        r0.connect();	 Catch:{ all -> 0x001b }
        r0 = 1;
        r2.g = r0;	 Catch:{ all -> 0x001b }
    L_0x0019:
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        goto L_0x0008;
    L_0x001b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x001b }
        throw r0;
    L_0x001e:
        r0 = 0;
        r2.g = r0;	 Catch:{ all -> 0x001b }
        goto L_0x0019;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.dn.p():void");
    }

    public void q() {
        synchronized (e) {
            if (this.g && this.t != null) {
                this.t.disconnect();
                this.g = false;
            }
        }
    }

    public int r() {
        bc j = j();
        return j != null ? j.a() : Integer.MIN_VALUE;
    }
}
