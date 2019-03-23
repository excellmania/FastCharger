package com.google.android.gms.c;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.v;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@pa
public class iu {
    BlockingQueue<jb> a;
    ExecutorService b;
    LinkedHashMap<String, String> c = new LinkedHashMap();
    Map<String, iy> d = new HashMap();
    String e;
    final Context f;
    final String g;
    private AtomicBoolean h;
    private File i;

    public iu(Context context, String str, String str2, Map<String, String> map) {
        this.f = context;
        this.g = str;
        this.e = str2;
        this.h = new AtomicBoolean(false);
        this.h.set(((Boolean) is.W.c()).booleanValue());
        if (this.h.get()) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                this.i = new File(externalStorageDirectory, "sdk_csi_data.txt");
            }
        }
        for (Entry entry : map.entrySet()) {
            this.c.put((String) entry.getKey(), (String) entry.getValue());
        }
        this.a = new ArrayBlockingQueue(30);
        this.b = Executors.newSingleThreadExecutor();
        this.b.execute(new Runnable() {
            public void run() {
                iu.this.a();
            }
        });
        this.d.put("action", iy.b);
        this.d.put("ad_format", iy.b);
        this.d.put("e", iy.c);
    }

    private void a() {
        while (true) {
            try {
                jb jbVar = (jb) this.a.take();
                String c = jbVar.c();
                if (!TextUtils.isEmpty(c)) {
                    a(a(this.c, jbVar.d()), c);
                }
            } catch (InterruptedException e) {
                sz.c("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0029 A:{SYNTHETIC, Splitter:B:15:0x0029} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0038 A:{SYNTHETIC, Splitter:B:22:0x0038} */
    private void a(@android.support.annotation.Nullable java.io.File r4, java.lang.String r5) {
        /*
        r3 = this;
        if (r4 == 0) goto L_0x0043;
    L_0x0002:
        r2 = 0;
        r1 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x0020, all -> 0x0034 }
        r0 = 1;
        r1.<init>(r4, r0);	 Catch:{ IOException -> 0x0020, all -> 0x0034 }
        r0 = r5.getBytes();	 Catch:{ IOException -> 0x004b }
        r1.write(r0);	 Catch:{ IOException -> 0x004b }
        r0 = 10;
        r1.write(r0);	 Catch:{ IOException -> 0x004b }
        r1.close();	 Catch:{ IOException -> 0x0019 }
    L_0x0018:
        return;
    L_0x0019:
        r0 = move-exception;
        r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
        com.google.android.gms.c.sz.c(r1, r0);
        goto L_0x0018;
    L_0x0020:
        r0 = move-exception;
        r1 = r2;
    L_0x0022:
        r2 = "CsiReporter: Cannot write to file: sdk_csi_data.txt.";
        com.google.android.gms.c.sz.c(r2, r0);	 Catch:{ all -> 0x0049 }
        if (r1 == 0) goto L_0x0018;
    L_0x0029:
        r1.close();	 Catch:{ IOException -> 0x002d }
        goto L_0x0018;
    L_0x002d:
        r0 = move-exception;
        r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
        com.google.android.gms.c.sz.c(r1, r0);
        goto L_0x0018;
    L_0x0034:
        r0 = move-exception;
        r1 = r2;
    L_0x0036:
        if (r1 == 0) goto L_0x003b;
    L_0x0038:
        r1.close();	 Catch:{ IOException -> 0x003c }
    L_0x003b:
        throw r0;
    L_0x003c:
        r1 = move-exception;
        r2 = "CsiReporter: Cannot close file: sdk_csi_data.txt.";
        com.google.android.gms.c.sz.c(r2, r1);
        goto L_0x003b;
    L_0x0043:
        r0 = "CsiReporter: File doesn't exists. Cannot write CSI data to file.";
        com.google.android.gms.c.sz.e(r0);
        goto L_0x0018;
    L_0x0049:
        r0 = move-exception;
        goto L_0x0036;
    L_0x004b:
        r0 = move-exception;
        goto L_0x0022;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.iu.a(java.io.File, java.lang.String):void");
    }

    private void a(Map<String, String> map, String str) {
        String a = a(this.e, map, str);
        if (this.h.get()) {
            a(this.i, a);
        } else {
            v.e().a(this.f, this.g, a);
        }
    }

    public iy a(String str) {
        iy iyVar = (iy) this.d.get(str);
        return iyVar != null ? iyVar : iy.a;
    }

    /* Access modifiers changed, original: 0000 */
    public String a(String str, Map<String, String> map, @NonNull String str2) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        for (Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        StringBuilder stringBuilder = new StringBuilder(buildUpon.build().toString());
        stringBuilder.append("&").append("it").append("=").append(str2);
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: 0000 */
    public Map<String, String> a(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Entry entry : map2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) linkedHashMap.get(str);
            linkedHashMap.put(str, a(str).a(str2, (String) entry.getValue()));
        }
        return linkedHashMap;
    }

    public void a(@Nullable List<String> list) {
        if (list != null && !list.isEmpty()) {
            this.c.put("e", TextUtils.join(",", list));
        }
    }

    public boolean a(jb jbVar) {
        return this.a.offer(jbVar);
    }
}
