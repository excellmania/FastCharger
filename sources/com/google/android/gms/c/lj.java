package com.google.android.gms.c;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@pa
public class lj extends lg {
    private static final Set<String> d = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat e = new DecimalFormat("#,###");
    private File f;
    private boolean g;

    public lj(tr trVar) {
        super(trVar);
        File cacheDir = this.a.getCacheDir();
        if (cacheDir == null) {
            sz.e("Context.getCacheDir() returned null");
            return;
        }
        this.f = new File(cacheDir, "admobVideoStreams");
        String str;
        String valueOf;
        if (!this.f.isDirectory() && !this.f.mkdirs()) {
            str = "Could not create preload cache directory at ";
            valueOf = String.valueOf(this.f.getAbsolutePath());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.f = null;
        } else if (!this.f.setReadable(true, false) || !this.f.setExecutable(true, false)) {
            str = "Could not set cache file permissions at ";
            valueOf = String.valueOf(this.f.getAbsolutePath());
            sz.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.f = null;
        }
    }

    private File a(File file) {
        return new File(this.f, String.valueOf(file.getName()).concat(".done"));
    }

    private static void b(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x016e  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0443  */
    /* JADX WARNING: Missing block: B:39:0x00e8, code skipped:
            r5 = null;
            r10 = "error";
     */
    /* JADX WARNING: Missing block: B:41:?, code skipped:
            r3 = com.google.android.gms.ads.internal.v.r().a(r27, ((java.lang.Integer) com.google.android.gms.c.is.x.c()).intValue());
     */
    /* JADX WARNING: Missing block: B:42:0x0104, code skipped:
            if ((r3 instanceof java.net.HttpURLConnection) == false) goto L_0x01d6;
     */
    /* JADX WARNING: Missing block: B:43:0x0106, code skipped:
            r2 = r3.getResponseCode();
     */
    /* JADX WARNING: Missing block: B:44:0x0110, code skipped:
            if (r2 < org.apache.http.HttpStatus.SC_BAD_REQUEST) goto L_0x01d6;
     */
    /* JADX WARNING: Missing block: B:45:0x0112, code skipped:
            r4 = "badUrl";
     */
    /* JADX WARNING: Missing block: B:47:?, code skipped:
            r6 = "HTTP request failed. Code: ";
            r3 = java.lang.String.valueOf(java.lang.Integer.toString(r2));
     */
    /* JADX WARNING: Missing block: B:48:0x0122, code skipped:
            if (r3.length() == 0) goto L_0x01cc;
     */
    /* JADX WARNING: Missing block: B:49:0x0124, code skipped:
            r3 = r6.concat(r3);
     */
    /* JADX WARNING: Missing block: B:52:0x0156, code skipped:
            throw new java.io.IOException(new java.lang.StringBuilder(java.lang.String.valueOf(r27).length() + 32).append("HTTP status code ").append(r2).append(" at ").append(r27).toString());
     */
    /* JADX WARNING: Missing block: B:53:0x0157, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:55:0x015a, code skipped:
            if ((r2 instanceof java.lang.RuntimeException) != false) goto L_0x015c;
     */
    /* JADX WARNING: Missing block: B:56:0x015c, code skipped:
            com.google.android.gms.ads.internal.v.i().a(r2, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARNING: Missing block: B:58:?, code skipped:
            r5.close();
     */
    /* JADX WARNING: Missing block: B:60:0x016c, code skipped:
            if (r26.g != false) goto L_0x016e;
     */
    /* JADX WARNING: Missing block: B:61:0x016e, code skipped:
            com.google.android.gms.c.sz.d(new java.lang.StringBuilder(java.lang.String.valueOf(r27).length() + 26).append("Preload aborted for URL \"").append(r27).append("\"").toString());
     */
    /* JADX WARNING: Missing block: B:66:0x01a2, code skipped:
            r5 = "Could not delete partial cache file at ";
            r2 = java.lang.String.valueOf(r12.getAbsolutePath());
     */
    /* JADX WARNING: Missing block: B:67:0x01b0, code skipped:
            if (r2.length() != 0) goto L_0x01b2;
     */
    /* JADX WARNING: Missing block: B:68:0x01b2, code skipped:
            r2 = r5.concat(r2);
     */
    /* JADX WARNING: Missing block: B:69:0x01b6, code skipped:
            com.google.android.gms.c.sz.e(r2);
     */
    /* JADX WARNING: Missing block: B:70:0x01b9, code skipped:
            a(r27, r12.getAbsolutePath(), r4, r3);
            d.remove(r8);
     */
    /* JADX WARNING: Missing block: B:72:?, code skipped:
            r3 = new java.lang.String(r6);
     */
    /* JADX WARNING: Missing block: B:73:0x01d3, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:74:0x01d4, code skipped:
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:76:?, code skipped:
            r6 = r3.getContentLength();
     */
    /* JADX WARNING: Missing block: B:77:0x01da, code skipped:
            if (r6 >= 0) goto L_0x0210;
     */
    /* JADX WARNING: Missing block: B:78:0x01dc, code skipped:
            r3 = "Stream cache aborted, missing content-length header at ";
            r2 = java.lang.String.valueOf(r27);
     */
    /* JADX WARNING: Missing block: B:79:0x01e6, code skipped:
            if (r2.length() == 0) goto L_0x0205;
     */
    /* JADX WARNING: Missing block: B:80:0x01e8, code skipped:
            r2 = r3.concat(r2);
     */
    /* JADX WARNING: Missing block: B:81:0x01ec, code skipped:
            com.google.android.gms.c.sz.e(r2);
            a(r27, r12.getAbsolutePath(), "contentLengthMissing", null);
            d.remove(r8);
     */
    /* JADX WARNING: Missing block: B:82:0x0205, code skipped:
            r2 = new java.lang.String(r3);
     */
    /* JADX WARNING: Missing block: B:83:0x020b, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:84:0x020c, code skipped:
            r3 = null;
            r4 = r10;
     */
    /* JADX WARNING: Missing block: B:85:0x0210, code skipped:
            r4 = e.format((long) r6);
            r14 = ((java.lang.Integer) com.google.android.gms.c.is.s.c()).intValue();
     */
    /* JADX WARNING: Missing block: B:86:0x0223, code skipped:
            if (r6 <= r14) goto L_0x028a;
     */
    /* JADX WARNING: Missing block: B:87:0x0225, code skipped:
            com.google.android.gms.c.sz.e(new java.lang.StringBuilder((java.lang.String.valueOf(r4).length() + 33) + java.lang.String.valueOf(r27).length()).append("Content length ").append(r4).append(" exceeds limit at ").append(r27).toString());
            r3 = "File too big for full file cache. Size: ";
            r2 = java.lang.String.valueOf(r4);
     */
    /* JADX WARNING: Missing block: B:88:0x0264, code skipped:
            if (r2.length() == 0) goto L_0x027f;
     */
    /* JADX WARNING: Missing block: B:89:0x0266, code skipped:
            r2 = r3.concat(r2);
     */
    /* JADX WARNING: Missing block: B:90:0x026a, code skipped:
            a(r27, r12.getAbsolutePath(), "sizeExceeded", r2);
            d.remove(r8);
     */
    /* JADX WARNING: Missing block: B:91:0x027f, code skipped:
            r2 = new java.lang.String(r3);
     */
    /* JADX WARNING: Missing block: B:92:0x0285, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:93:0x0286, code skipped:
            r3 = null;
            r4 = r10;
     */
    /* JADX WARNING: Missing block: B:94:0x028a, code skipped:
            com.google.android.gms.c.sz.b(new java.lang.StringBuilder((java.lang.String.valueOf(r4).length() + 20) + java.lang.String.valueOf(r27).length()).append("Caching ").append(r4).append(" bytes from ").append(r27).toString());
            r15 = java.nio.channels.Channels.newChannel(r3.getInputStream());
            r11 = new java.io.FileOutputStream(r12);
     */
    /* JADX WARNING: Missing block: B:96:?, code skipped:
            r16 = r11.getChannel();
            r17 = java.nio.ByteBuffer.allocate(1048576);
            r18 = com.google.android.gms.ads.internal.v.k();
            r5 = 0;
            r20 = r18.a();
            r0 = new com.google.android.gms.c.su(((java.lang.Long) com.google.android.gms.c.is.w.c()).longValue());
            r22 = ((java.lang.Long) com.google.android.gms.c.is.v.c()).longValue();
     */
    /* JADX WARNING: Missing block: B:97:0x02fe, code skipped:
            r2 = r15.read(r17);
     */
    /* JADX WARNING: Missing block: B:98:0x0304, code skipped:
            if (r2 < 0) goto L_0x03b8;
     */
    /* JADX WARNING: Missing block: B:99:0x0306, code skipped:
            r5 = r5 + r2;
     */
    /* JADX WARNING: Missing block: B:100:0x0307, code skipped:
            if (r5 <= r14) goto L_0x0336;
     */
    /* JADX WARNING: Missing block: B:101:0x0309, code skipped:
            r4 = "sizeExceeded";
     */
    /* JADX WARNING: Missing block: B:103:?, code skipped:
            r2 = "File too big for full file cache. Size: ";
            r3 = java.lang.String.valueOf(java.lang.Integer.toString(r5));
     */
    /* JADX WARNING: Missing block: B:104:0x0319, code skipped:
            if (r3.length() == 0) goto L_0x032b;
     */
    /* JADX WARNING: Missing block: B:105:0x031b, code skipped:
            r3 = r2.concat(r3);
     */
    /* JADX WARNING: Missing block: B:108:0x0326, code skipped:
            throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARNING: Missing block: B:109:0x0327, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:110:0x0328, code skipped:
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:112:?, code skipped:
            r3 = new java.lang.String(r2);
     */
    /* JADX WARNING: Missing block: B:113:0x0331, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:114:0x0332, code skipped:
            r3 = null;
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:116:?, code skipped:
            r17.flip();
     */
    /* JADX WARNING: Missing block: B:118:0x033d, code skipped:
            if (r16.write(r17) > 0) goto L_0x0339;
     */
    /* JADX WARNING: Missing block: B:119:0x033f, code skipped:
            r17.clear();
     */
    /* JADX WARNING: Missing block: B:120:0x034e, code skipped:
            if ((r18.a() - r20) <= (1000 * r22)) goto L_0x0389;
     */
    /* JADX WARNING: Missing block: B:121:0x0350, code skipped:
            r4 = "downloadTimeout";
     */
    /* JADX WARNING: Missing block: B:123:?, code skipped:
            r2 = java.lang.String.valueOf(java.lang.Long.toString(r22));
            r3 = new java.lang.StringBuilder(java.lang.String.valueOf(r2).length() + 29).append("Timeout exceeded. Limit: ").append(r2).append(" sec").toString();
     */
    /* JADX WARNING: Missing block: B:126:0x0384, code skipped:
            throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARNING: Missing block: B:127:0x0385, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:128:0x0386, code skipped:
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:131:0x038d, code skipped:
            if (r26.g == false) goto L_0x039e;
     */
    /* JADX WARNING: Missing block: B:132:0x038f, code skipped:
            r4 = "externalAbort";
     */
    /* JADX WARNING: Missing block: B:135:0x0398, code skipped:
            throw new java.io.IOException("abort requested");
     */
    /* JADX WARNING: Missing block: B:136:0x0399, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:137:0x039a, code skipped:
            r3 = null;
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:140:0x03a2, code skipped:
            if (r0.a() == false) goto L_0x02fe;
     */
    /* JADX WARNING: Missing block: B:141:0x03a4, code skipped:
            a(r27, r12.getAbsolutePath(), r5, r6, false);
     */
    /* JADX WARNING: Missing block: B:142:0x03b2, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:143:0x03b3, code skipped:
            r3 = null;
            r4 = r10;
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:144:0x03b8, code skipped:
            r11.close();
     */
    /* JADX WARNING: Missing block: B:145:0x03c0, code skipped:
            if (com.google.android.gms.c.sz.a(3) == false) goto L_0x03fe;
     */
    /* JADX WARNING: Missing block: B:146:0x03c2, code skipped:
            r2 = e.format((long) r5);
            com.google.android.gms.c.sz.b(new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r27).length()).append("Preloaded ").append(r2).append(" bytes from ").append(r27).toString());
     */
    /* JADX WARNING: Missing block: B:147:0x03fe, code skipped:
            r12.setReadable(true, false);
            b(r13);
            a(r27, r12.getAbsolutePath(), r5);
            d.remove(r8);
     */
    /* JADX WARNING: Missing block: B:149:0x0419, code skipped:
            com.google.android.gms.c.sz.c(new java.lang.StringBuilder(java.lang.String.valueOf(r27).length() + 25).append("Preload failed for URL \"").append(r27).append("\"").toString(), r2);
     */
    /* JADX WARNING: Missing block: B:150:0x0443, code skipped:
            r2 = new java.lang.String(r5);
     */
    /* JADX WARNING: Missing block: B:152:0x0450, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:153:0x0451, code skipped:
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:154:0x0457, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:155:0x0458, code skipped:
            r3 = null;
            r4 = r10;
            r5 = r11;
     */
    /* JADX WARNING: Missing block: B:170:?, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:171:?, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:172:?, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:173:?, code skipped:
            return true;
     */
    public boolean a(java.lang.String r27) {
        /*
        r26 = this;
        r0 = r26;
        r2 = r0.f;
        if (r2 != 0) goto L_0x0013;
    L_0x0006:
        r2 = 0;
        r3 = "noCacheDir";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);
        r2 = 0;
    L_0x0012:
        return r2;
    L_0x0013:
        r3 = r26.c();
        r2 = com.google.android.gms.c.is.r;
        r2 = r2.c();
        r2 = (java.lang.Integer) r2;
        r2 = r2.intValue();
        if (r3 <= r2) goto L_0x003d;
    L_0x0025:
        r2 = r26.d();
        if (r2 != 0) goto L_0x0013;
    L_0x002b:
        r2 = "Unable to expire stream cache";
        com.google.android.gms.c.sz.e(r2);
        r2 = 0;
        r3 = "expireFailed";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);
        r2 = 0;
        goto L_0x0012;
    L_0x003d:
        r2 = r26.b(r27);
        r12 = new java.io.File;
        r0 = r26;
        r3 = r0.f;
        r12.<init>(r3, r2);
        r0 = r26;
        r13 = r0.a(r12);
        r2 = r12.isFile();
        if (r2 == 0) goto L_0x0087;
    L_0x0056:
        r2 = r13.isFile();
        if (r2 == 0) goto L_0x0087;
    L_0x005c:
        r2 = r12.length();
        r3 = (int) r2;
        r4 = "Stream cache hit at ";
        r2 = java.lang.String.valueOf(r27);
        r5 = r2.length();
        if (r5 == 0) goto L_0x0081;
    L_0x006d:
        r2 = r4.concat(r2);
    L_0x0071:
        com.google.android.gms.c.sz.b(r2);
        r2 = r12.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3);
        r2 = 1;
        goto L_0x0012;
    L_0x0081:
        r2 = new java.lang.String;
        r2.<init>(r4);
        goto L_0x0071;
    L_0x0087:
        r0 = r26;
        r2 = r0.f;
        r2 = r2.getAbsolutePath();
        r3 = java.lang.String.valueOf(r2);
        r2 = java.lang.String.valueOf(r27);
        r4 = r2.length();
        if (r4 == 0) goto L_0x00d5;
    L_0x009d:
        r2 = r3.concat(r2);
        r8 = r2;
    L_0x00a2:
        r3 = d;
        monitor-enter(r3);
        r2 = d;	 Catch:{ all -> 0x00d2 }
        r2 = r2.contains(r8);	 Catch:{ all -> 0x00d2 }
        if (r2 == 0) goto L_0x00e2;
    L_0x00ad:
        r4 = "Stream cache already in progress at ";
        r2 = java.lang.String.valueOf(r27);	 Catch:{ all -> 0x00d2 }
        r5 = r2.length();	 Catch:{ all -> 0x00d2 }
        if (r5 == 0) goto L_0x00dc;
    L_0x00b9:
        r2 = r4.concat(r2);	 Catch:{ all -> 0x00d2 }
    L_0x00bd:
        com.google.android.gms.c.sz.e(r2);	 Catch:{ all -> 0x00d2 }
        r2 = r12.getAbsolutePath();	 Catch:{ all -> 0x00d2 }
        r4 = "inProgress";
        r5 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r4, r5);	 Catch:{ all -> 0x00d2 }
        r2 = 0;
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        goto L_0x0012;
    L_0x00d2:
        r2 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        throw r2;
    L_0x00d5:
        r2 = new java.lang.String;
        r2.<init>(r3);
        r8 = r2;
        goto L_0x00a2;
    L_0x00dc:
        r2 = new java.lang.String;	 Catch:{ all -> 0x00d2 }
        r2.<init>(r4);	 Catch:{ all -> 0x00d2 }
        goto L_0x00bd;
    L_0x00e2:
        r2 = d;	 Catch:{ all -> 0x00d2 }
        r2.add(r8);	 Catch:{ all -> 0x00d2 }
        monitor-exit(r3);	 Catch:{ all -> 0x00d2 }
        r5 = 0;
        r10 = "error";
        r9 = 0;
        r3 = com.google.android.gms.ads.internal.v.r();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = com.google.android.gms.c.is.x;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.c();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.intValue();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r3 = r3.a(r0, r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r3 instanceof java.net.HttpURLConnection;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r2 == 0) goto L_0x01d6;
    L_0x0106:
        r0 = r3;
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r0;
        r2 = r2.getResponseCode();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r2 < r4) goto L_0x01d6;
    L_0x0112:
        r4 = "badUrl";
        r6 = "HTTP request failed. Code: ";
        r3 = java.lang.Integer.toString(r2);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r7 = r3.length();	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        if (r7 == 0) goto L_0x01cc;
    L_0x0124:
        r3 = r6.concat(r3);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
    L_0x0128:
        r6 = new java.io.IOException;	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r7 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = java.lang.String.valueOf(r27);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = r9.length();	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = r9 + 32;
        r7.<init>(r9);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r9 = "HTTP status code ";
        r7 = r7.append(r9);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r2 = r7.append(r2);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r7 = " at ";
        r2 = r2.append(r7);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r2 = r2.toString();	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        r6.<init>(r2);	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
        throw r6;	 Catch:{ IOException | RuntimeException -> 0x0157, RuntimeException -> 0x0454 }
    L_0x0157:
        r2 = move-exception;
    L_0x0158:
        r6 = r2 instanceof java.lang.RuntimeException;
        if (r6 == 0) goto L_0x0165;
    L_0x015c:
        r6 = com.google.android.gms.ads.internal.v.i();
        r7 = "VideoStreamFullFileCache.preload";
        r6.a(r2, r7);
    L_0x0165:
        r5.close();	 Catch:{ IOException | NullPointerException -> 0x044a, NullPointerException -> 0x044d }
    L_0x0168:
        r0 = r26;
        r5 = r0.g;
        if (r5 == 0) goto L_0x0419;
    L_0x016e:
        r2 = new java.lang.StringBuilder;
        r5 = java.lang.String.valueOf(r27);
        r5 = r5.length();
        r5 = r5 + 26;
        r2.<init>(r5);
        r5 = "Preload aborted for URL \"";
        r2 = r2.append(r5);
        r0 = r27;
        r2 = r2.append(r0);
        r5 = "\"";
        r2 = r2.append(r5);
        r2 = r2.toString();
        com.google.android.gms.c.sz.d(r2);
    L_0x0196:
        r2 = r12.exists();
        if (r2 == 0) goto L_0x01b9;
    L_0x019c:
        r2 = r12.delete();
        if (r2 != 0) goto L_0x01b9;
    L_0x01a2:
        r5 = "Could not delete partial cache file at ";
        r2 = r12.getAbsolutePath();
        r2 = java.lang.String.valueOf(r2);
        r6 = r2.length();
        if (r6 == 0) goto L_0x0443;
    L_0x01b2:
        r2 = r5.concat(r2);
    L_0x01b6:
        com.google.android.gms.c.sz.e(r2);
    L_0x01b9:
        r2 = r12.getAbsolutePath();
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r4, r3);
        r2 = d;
        r2.remove(r8);
        r2 = 0;
        goto L_0x0012;
    L_0x01cc:
        r3 = new java.lang.String;	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        r3.<init>(r6);	 Catch:{ IOException -> 0x01d3, RuntimeException -> 0x0450 }
        goto L_0x0128;
    L_0x01d3:
        r2 = move-exception;
        r3 = r9;
        goto L_0x0158;
    L_0x01d6:
        r6 = r3.getContentLength();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r6 >= 0) goto L_0x0210;
    L_0x01dc:
        r3 = "Stream cache aborted, missing content-length header at ";
        r2 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r4 == 0) goto L_0x0205;
    L_0x01e8:
        r2 = r3.concat(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
    L_0x01ec:
        com.google.android.gms.c.sz.e(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "contentLengthMissing";
        r4 = 0;
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r3, r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = d;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.remove(r8);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = 0;
        goto L_0x0012;
    L_0x0205:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        goto L_0x01ec;
    L_0x020b:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        goto L_0x0158;
    L_0x0210:
        r2 = e;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r14 = (long) r6;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.format(r14);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = com.google.android.gms.c.is.s;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.c();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r14 = r2.intValue();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r6 <= r14) goto L_0x028a;
    L_0x0225:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3 + 33;
        r6 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r6 = r6.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = r3 + r6;
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "Content length ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = " exceeds limit at ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        com.google.android.gms.c.sz.e(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r3 = "File too big for full file cache. Size: ";
        r2 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = r2.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        if (r4 == 0) goto L_0x027f;
    L_0x0266:
        r2 = r3.concat(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
    L_0x026a:
        r3 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = "sizeExceeded";
        r0 = r26;
        r1 = r27;
        r0.a(r1, r3, r4, r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = d;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.remove(r8);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = 0;
        goto L_0x0012;
    L_0x027f:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        goto L_0x026a;
    L_0x0285:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        goto L_0x0158;
    L_0x028a:
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = java.lang.String.valueOf(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7 + 20;
        r11 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11 = r11.length();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = r7 + r11;
        r2.<init>(r7);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r7 = "Caching ";
        r2 = r2.append(r7);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r4 = " bytes from ";
        r2 = r2.append(r4);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        com.google.android.gms.c.sz.b(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r2 = r3.getInputStream();	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r15 = java.nio.channels.Channels.newChannel(r2);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r11.<init>(r12);	 Catch:{ IOException -> 0x020b, RuntimeException -> 0x0285 }
        r16 = r11.getChannel();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r17 = java.nio.ByteBuffer.allocate(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r18 = com.google.android.gms.ads.internal.v.k();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r5 = 0;
        r20 = r18.a();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = com.google.android.gms.c.is.w;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.c();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.longValue();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r19 = new com.google.android.gms.c.su;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r19;
        r0.<init>(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = com.google.android.gms.c.is.v;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.c();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = (java.lang.Long) r2;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r22 = r2.longValue();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x02fe:
        r0 = r17;
        r2 = r15.read(r0);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 < 0) goto L_0x03b8;
    L_0x0306:
        r5 = r5 + r2;
        if (r5 <= r14) goto L_0x0336;
    L_0x0309:
        r4 = "sizeExceeded";
        r2 = "File too big for full file cache. Size: ";
        r3 = java.lang.Integer.toString(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r3.length();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        if (r5 == 0) goto L_0x032b;
    L_0x031b:
        r3 = r2.concat(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
    L_0x031f:
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        r5 = "stream cache file size limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        throw r2;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
    L_0x0327:
        r2 = move-exception;
        r5 = r11;
        goto L_0x0158;
    L_0x032b:
        r3 = new java.lang.String;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3.<init>(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        goto L_0x031f;
    L_0x0331:
        r2 = move-exception;
        r3 = r9;
        r5 = r11;
        goto L_0x0158;
    L_0x0336:
        r17.flip();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x0339:
        r2 = r16.write(r17);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 > 0) goto L_0x0339;
    L_0x033f:
        r17.clear();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r18.a();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2 - r20;
        r24 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r24 = r24 * r22;
        r2 = (r2 > r24 ? 1 : (r2 == r24 ? 0 : -1));
        if (r2 <= 0) goto L_0x0389;
    L_0x0350:
        r4 = "downloadTimeout";
        r2 = java.lang.Long.toString(r22);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r5.length();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = r5 + 29;
        r3.<init>(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r5 = "Timeout exceeded. Limit: ";
        r3 = r3.append(r5);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = " sec";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = r2.toString();	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        r5 = "stream cache time limit exceeded";
        r2.<init>(r5);	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
        throw r2;	 Catch:{ IOException -> 0x0327, RuntimeException -> 0x0385 }
    L_0x0385:
        r2 = move-exception;
        r5 = r11;
        goto L_0x0158;
    L_0x0389:
        r0 = r26;
        r2 = r0.g;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x039e;
    L_0x038f:
        r4 = "externalAbort";
        r2 = new java.io.IOException;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        r3 = "abort requested";
        r2.<init>(r3);	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
        throw r2;	 Catch:{ IOException -> 0x0331, RuntimeException -> 0x0399 }
    L_0x0399:
        r2 = move-exception;
        r3 = r9;
        r5 = r11;
        goto L_0x0158;
    L_0x039e:
        r2 = r19.a();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x02fe;
    L_0x03a4:
        r4 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r7 = 0;
        r2 = r26;
        r3 = r27;
        r2.a(r3, r4, r5, r6, r7);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        goto L_0x02fe;
    L_0x03b2:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        r5 = r11;
        goto L_0x0158;
    L_0x03b8:
        r11.close();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 3;
        r2 = com.google.android.gms.c.sz.a(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        if (r2 == 0) goto L_0x03fe;
    L_0x03c2:
        r2 = e;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r6 = (long) r5;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.format(r6);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = java.lang.String.valueOf(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4.length();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4 + 22;
        r6 = java.lang.String.valueOf(r27);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r6 = r6.length();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = r4 + r6;
        r3.<init>(r4);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r4 = "Preloaded ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r3.append(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r3 = " bytes from ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r27;
        r2 = r2.append(r0);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        com.google.android.gms.c.sz.b(r2);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
    L_0x03fe:
        r2 = 1;
        r3 = 0;
        r12.setReadable(r2, r3);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        b(r13);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = r12.getAbsolutePath();	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r0 = r26;
        r1 = r27;
        r0.a(r1, r2, r5);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = d;	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2.remove(r8);	 Catch:{ IOException -> 0x03b2, RuntimeException -> 0x0457 }
        r2 = 1;
        goto L_0x0012;
    L_0x0419:
        r5 = new java.lang.StringBuilder;
        r6 = java.lang.String.valueOf(r27);
        r6 = r6.length();
        r6 = r6 + 25;
        r5.<init>(r6);
        r6 = "Preload failed for URL \"";
        r5 = r5.append(r6);
        r0 = r27;
        r5 = r5.append(r0);
        r6 = "\"";
        r5 = r5.append(r6);
        r5 = r5.toString();
        com.google.android.gms.c.sz.c(r5, r2);
        goto L_0x0196;
    L_0x0443:
        r2 = new java.lang.String;
        r2.<init>(r5);
        goto L_0x01b6;
    L_0x044a:
        r5 = move-exception;
        goto L_0x0168;
    L_0x044d:
        r5 = move-exception;
        goto L_0x0168;
    L_0x0450:
        r2 = move-exception;
        r3 = r9;
        goto L_0x0158;
    L_0x0454:
        r2 = move-exception;
        goto L_0x0158;
    L_0x0457:
        r2 = move-exception;
        r3 = r9;
        r4 = r10;
        r5 = r11;
        goto L_0x0158;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.lj.a(java.lang.String):boolean");
    }

    public void b() {
        this.g = true;
    }

    public int c() {
        int i = 0;
        if (this.f != null) {
            for (File name : this.f.listFiles()) {
                if (!name.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean d() {
        if (this.f == null) {
            return false;
        }
        boolean delete;
        File file = null;
        long j = Long.MAX_VALUE;
        File[] listFiles = this.f.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            long lastModified;
            File file2;
            File file3 = listFiles[i];
            if (!file3.getName().endsWith(".done")) {
                lastModified = file3.lastModified();
                if (lastModified < j) {
                    file2 = file3;
                    i++;
                    file = file2;
                    j = lastModified;
                }
            }
            lastModified = j;
            file2 = file;
            i++;
            file = file2;
            j = lastModified;
        }
        if (file != null) {
            delete = file.delete();
            File a = a(file);
            if (a.isFile()) {
                delete &= a.delete();
            }
        } else {
            delete = false;
        }
        return delete;
    }
}
