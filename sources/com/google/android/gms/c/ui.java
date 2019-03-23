package com.google.android.gms.c;

import com.google.android.gms.c.dk.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHeaders;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class ui implements hy {
    protected static final boolean a = uh.b;
    private static int d = 3000;
    private static int e = 4096;
    protected final un b;
    protected final uj c;

    public ui(un unVar) {
        this(unVar, new uj(e));
    }

    public ui(un unVar, uj ujVar) {
        this.b = unVar;
        this.c = ujVar;
    }

    protected static Map<String, String> a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private void a(long j, mw<?> mwVar, byte[] bArr, StatusLine statusLine) {
        if (a || j > ((long) d)) {
            String str = "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]";
            Object[] objArr = new Object[5];
            objArr[0] = mwVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(mwVar.o().b());
            uh.b(str, objArr);
        }
    }

    private static void a(String str, mw<?> mwVar, uc ucVar) {
        qz o = mwVar.o();
        int n = mwVar.n();
        try {
            o.a(ucVar);
            mwVar.b(String.format("%s-retry [timeout=%s]", new Object[]{str, Integer.valueOf(n)}));
        } catch (uc e) {
            mwVar.b(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{str, Integer.valueOf(n)}));
            throw e;
        }
    }

    private void a(Map<String, String> map, a aVar) {
        if (aVar != null) {
            if (aVar.b != null) {
                map.put(HttpHeaders.IF_NONE_MATCH, aVar.b);
            }
            if (aVar.d > 0) {
                map.put(HttpHeaders.IF_MODIFIED_SINCE, DateUtils.formatDate(new Date(aVar.d)));
            }
        }
    }

    private byte[] a(HttpEntity httpEntity) {
        b bVar = new b(this.c, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new sa();
            }
            bArr = this.c.a(1024);
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    break;
                }
                bVar.write(bArr, 0, read);
            }
            byte[] toByteArray = bVar.toByteArray();
            return toByteArray;
        } finally {
            try {
                httpEntity.consumeContent();
            } catch (IOException e) {
                uh.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a(bArr);
            bVar.close();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0090 A:{ExcHandler: SocketTimeoutException (e java.net.SocketTimeoutException), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b1 A:{ExcHandler: ConnectTimeoutException (e org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00c0 A:{ExcHandler: MalformedURLException (r2_18 'e' java.lang.Throwable), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0128 A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0090 A:{ExcHandler: SocketTimeoutException (e java.net.SocketTimeoutException), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b1 A:{ExcHandler: ConnectTimeoutException (e org.apache.http.conn.ConnectTimeoutException), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00c0 A:{ExcHandler: MalformedURLException (r2_18 'e' java.lang.Throwable), Splitter:B:2:0x000a} */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0128 A:{SYNTHETIC} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:22:0x0091, code skipped:
            a("socket", r19, new com.google.android.gms.c.tb());
     */
    /* JADX WARNING: Missing block: B:29:0x00b2, code skipped:
            a("connection", r19, new com.google.android.gms.c.tb());
     */
    /* JADX WARNING: Missing block: B:30:0x00c0, code skipped:
            r2 = move-exception;
     */
    /* JADX WARNING: Missing block: B:31:0x00c1, code skipped:
            r3 = r2;
            r5 = "Bad URL ";
            r2 = java.lang.String.valueOf(r19.c());
     */
    /* JADX WARNING: Missing block: B:32:0x00d2, code skipped:
            if (r2.length() != 0) goto L_0x00d4;
     */
    /* JADX WARNING: Missing block: B:33:0x00d4, code skipped:
            r2 = r5.concat(r2);
     */
    /* JADX WARNING: Missing block: B:35:0x00db, code skipped:
            throw new java.lang.RuntimeException(r2, r3);
     */
    /* JADX WARNING: Missing block: B:36:0x00dc, code skipped:
            r2 = new java.lang.String(r5);
     */
    /* JADX WARNING: Missing block: B:37:0x00e2, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:38:0x00e3, code skipped:
            r5 = null;
     */
    /* JADX WARNING: Missing block: B:40:0x00e6, code skipped:
            r4 = r3.getStatusLine().getStatusCode();
            com.google.android.gms.c.uh.c("Unexpected response code %d for %s", java.lang.Integer.valueOf(r4), r19.c());
     */
    /* JADX WARNING: Missing block: B:41:0x0104, code skipped:
            if (r5 != null) goto L_0x0106;
     */
    /* JADX WARNING: Missing block: B:42:0x0106, code skipped:
            r3 = new com.google.android.gms.c.ku(r4, r5, r6, false, android.os.SystemClock.elapsedRealtime() - r16);
     */
    /* JADX WARNING: Missing block: B:43:0x0114, code skipped:
            if (r4 == org.apache.http.HttpStatus.SC_UNAUTHORIZED) goto L_0x011a;
     */
    /* JADX WARNING: Missing block: B:46:0x011a, code skipped:
            a("auth", r19, new com.google.android.gms.c.a(r3));
     */
    /* JADX WARNING: Missing block: B:48:0x012d, code skipped:
            throw new com.google.android.gms.c.lv(r2);
     */
    /* JADX WARNING: Missing block: B:50:0x0133, code skipped:
            throw new com.google.android.gms.c.sa(r3);
     */
    /* JADX WARNING: Missing block: B:52:0x013a, code skipped:
            throw new com.google.android.gms.c.jw(null);
     */
    /* JADX WARNING: Missing block: B:55:0x013f, code skipped:
            r2 = e;
     */
    /* JADX WARNING: Missing block: B:56:0x0140, code skipped:
            r5 = r11;
            r3 = r15;
     */
    public com.google.android.gms.c.ku a(com.google.android.gms.c.mw<?> r19) {
        /*
        r18 = this;
        r16 = android.os.SystemClock.elapsedRealtime();
    L_0x0004:
        r3 = 0;
        r14 = 0;
        r6 = java.util.Collections.emptyMap();
        r2 = new java.util.HashMap;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r2.<init>();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r4 = r19.e();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r0 = r18;
        r0.a(r2, r4);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r0 = r18;
        r4 = r0.b;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r0 = r19;
        r15 = r4.a(r0, r2);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x00e2 }
        r12 = r15.getStatusLine();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r4 = r12.getStatusCode();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r2 = r15.getAllHeaders();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r6 = a(r2);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r2 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        if (r4 != r2) goto L_0x0065;
    L_0x0036:
        r2 = r19.e();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        if (r2 != 0) goto L_0x004c;
    L_0x003c:
        r3 = new com.google.android.gms.c.ku;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r4 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r5 = 0;
        r7 = 1;
        r8 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r8 = r8 - r16;
        r3.<init>(r4, r5, r6, r7, r8);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
    L_0x004b:
        return r3;
    L_0x004c:
        r3 = r2.g;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r3.putAll(r6);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r7 = new com.google.android.gms.c.ku;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r8 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r9 = r2.a;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r10 = r2.g;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r11 = 1;
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r12 = r2 - r16;
        r7.<init>(r8, r9, r10, r11, r12);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r3 = r7;
        goto L_0x004b;
    L_0x0065:
        r2 = r15.getEntity();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        if (r2 == 0) goto L_0x009f;
    L_0x006b:
        r2 = r15.getEntity();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        r0 = r18;
        r11 = r0.a(r2);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
    L_0x0075:
        r2 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        r8 = r2 - r16;
        r7 = r18;
        r10 = r19;
        r7.a(r8, r10, r11, r12);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        r2 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r4 < r2) goto L_0x008a;
    L_0x0086:
        r2 = 299; // 0x12b float:4.19E-43 double:1.477E-321;
        if (r4 <= r2) goto L_0x00a3;
    L_0x008a:
        r2 = new java.io.IOException;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        r2.<init>();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        throw r2;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
    L_0x0090:
        r2 = move-exception;
        r2 = "socket";
        r3 = new com.google.android.gms.c.tb;
        r3.<init>();
        r0 = r19;
        a(r2, r0, r3);
        goto L_0x0004;
    L_0x009f:
        r2 = 0;
        r11 = new byte[r2];	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013b }
        goto L_0x0075;
    L_0x00a3:
        r3 = new com.google.android.gms.c.ku;	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        r7 = 0;
        r8 = android.os.SystemClock.elapsedRealtime();	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        r8 = r8 - r16;
        r5 = r11;
        r3.<init>(r4, r5, r6, r7, r8);	 Catch:{ SocketTimeoutException -> 0x0090, ConnectTimeoutException -> 0x00b1, MalformedURLException -> 0x00c0, IOException -> 0x013f }
        goto L_0x004b;
    L_0x00b1:
        r2 = move-exception;
        r2 = "connection";
        r3 = new com.google.android.gms.c.tb;
        r3.<init>();
        r0 = r19;
        a(r2, r0, r3);
        goto L_0x0004;
    L_0x00c0:
        r2 = move-exception;
        r3 = r2;
        r4 = new java.lang.RuntimeException;
        r5 = "Bad URL ";
        r2 = r19.c();
        r2 = java.lang.String.valueOf(r2);
        r6 = r2.length();
        if (r6 == 0) goto L_0x00dc;
    L_0x00d4:
        r2 = r5.concat(r2);
    L_0x00d8:
        r4.<init>(r2, r3);
        throw r4;
    L_0x00dc:
        r2 = new java.lang.String;
        r2.<init>(r5);
        goto L_0x00d8;
    L_0x00e2:
        r2 = move-exception;
        r5 = r14;
    L_0x00e4:
        if (r3 == 0) goto L_0x0128;
    L_0x00e6:
        r2 = r3.getStatusLine();
        r4 = r2.getStatusCode();
        r2 = "Unexpected response code %d for %s";
        r3 = 2;
        r3 = new java.lang.Object[r3];
        r7 = 0;
        r8 = java.lang.Integer.valueOf(r4);
        r3[r7] = r8;
        r7 = 1;
        r8 = r19.c();
        r3[r7] = r8;
        com.google.android.gms.c.uh.c(r2, r3);
        if (r5 == 0) goto L_0x0134;
    L_0x0106:
        r3 = new com.google.android.gms.c.ku;
        r7 = 0;
        r8 = android.os.SystemClock.elapsedRealtime();
        r8 = r8 - r16;
        r3.<init>(r4, r5, r6, r7, r8);
        r2 = 401; // 0x191 float:5.62E-43 double:1.98E-321;
        if (r4 == r2) goto L_0x011a;
    L_0x0116:
        r2 = 403; // 0x193 float:5.65E-43 double:1.99E-321;
        if (r4 != r2) goto L_0x012e;
    L_0x011a:
        r2 = "auth";
        r4 = new com.google.android.gms.c.a;
        r4.<init>(r3);
        r0 = r19;
        a(r2, r0, r4);
        goto L_0x0004;
    L_0x0128:
        r3 = new com.google.android.gms.c.lv;
        r3.<init>(r2);
        throw r3;
    L_0x012e:
        r2 = new com.google.android.gms.c.sa;
        r2.<init>(r3);
        throw r2;
    L_0x0134:
        r2 = new com.google.android.gms.c.jw;
        r3 = 0;
        r2.<init>(r3);
        throw r2;
    L_0x013b:
        r2 = move-exception;
        r5 = r14;
        r3 = r15;
        goto L_0x00e4;
    L_0x013f:
        r2 = move-exception;
        r5 = r11;
        r3 = r15;
        goto L_0x00e4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.c.ui.a(com.google.android.gms.c.mw):com.google.android.gms.c.ku");
    }
}
