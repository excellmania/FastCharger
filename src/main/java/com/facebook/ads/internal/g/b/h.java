package com.facebook.ads.internal.g.b;

import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;

public class h implements n {
    public final String a;
    private HttpURLConnection b;
    private InputStream c;
    private volatile int d;
    private volatile String e;

    public h(h hVar) {
        this.d = Integer.MIN_VALUE;
        this.a = hVar.a;
        this.e = hVar.e;
        this.d = hVar.d;
    }

    public h(String str) {
        this(str, m.a(str));
    }

    public h(String str, String str2) {
        this.d = Integer.MIN_VALUE;
        this.a = (String) j.a(str);
        this.e = str2;
    }

    private int a(HttpURLConnection httpURLConnection, int i, int i2) {
        int contentLength = httpURLConnection.getContentLength();
        return i2 == 200 ? contentLength : i2 == HttpStatus.SC_PARTIAL_CONTENT ? contentLength + i : this.d;
    }

    private HttpURLConnection a(int i, int i2) {
        HttpURLConnection httpURLConnection;
        String str = this.a;
        int i3 = 0;
        Object obj;
        do {
            Log.d("ProxyCache", "Open connection " + (i > 0 ? " with offset " + i : "") + " to " + str);
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (i > 0) {
                httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + i + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            obj = (responseCode == HttpStatus.SC_MOVED_PERMANENTLY || responseCode == HttpStatus.SC_MOVED_TEMPORARILY || responseCode == HttpStatus.SC_SEE_OTHER) ? 1 : null;
            if (obj != null) {
                str = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                i3++;
                httpURLConnection.disconnect();
            }
            if (i3 > 5) {
                throw new l("Too many redirects: " + i3);
            }
        } while (obj != null);
        return httpURLConnection;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0099  */
    private void d() {
        /*
        r6 = this;
        r1 = 0;
        r0 = "ProxyCache";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "Read content info from ";
        r2 = r2.append(r3);
        r3 = r6.a;
        r2 = r2.append(r3);
        r2 = r2.toString();
        android.util.Log.d(r0, r2);
        r0 = 0;
        r2 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r2 = r6.a(r0, r2);	 Catch:{ IOException -> 0x006d, all -> 0x0092 }
        r0 = r2.getContentLength();	 Catch:{ IOException -> 0x009f }
        r6.d = r0;	 Catch:{ IOException -> 0x009f }
        r0 = r2.getContentType();	 Catch:{ IOException -> 0x009f }
        r6.e = r0;	 Catch:{ IOException -> 0x009f }
        r1 = r2.getInputStream();	 Catch:{ IOException -> 0x009f }
        r0 = "ProxyCache";
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x009f }
        r3.<init>();	 Catch:{ IOException -> 0x009f }
        r4 = "Content info for `";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r4 = r6.a;	 Catch:{ IOException -> 0x009f }
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r4 = "`: mime: ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r4 = r6.e;	 Catch:{ IOException -> 0x009f }
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r4 = ", content-length: ";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r4 = r6.d;	 Catch:{ IOException -> 0x009f }
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x009f }
        r3 = r3.toString();	 Catch:{ IOException -> 0x009f }
        android.util.Log.i(r0, r3);	 Catch:{ IOException -> 0x009f }
        com.facebook.ads.internal.g.b.m.a(r1);
        if (r2 == 0) goto L_0x006c;
    L_0x0069:
        r2.disconnect();
    L_0x006c:
        return;
    L_0x006d:
        r0 = move-exception;
        r2 = r1;
    L_0x006f:
        r3 = "ProxyCache";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009d }
        r4.<init>();	 Catch:{ all -> 0x009d }
        r5 = "Error fetching info from ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x009d }
        r5 = r6.a;	 Catch:{ all -> 0x009d }
        r4 = r4.append(r5);	 Catch:{ all -> 0x009d }
        r4 = r4.toString();	 Catch:{ all -> 0x009d }
        android.util.Log.e(r3, r4, r0);	 Catch:{ all -> 0x009d }
        com.facebook.ads.internal.g.b.m.a(r1);
        if (r2 == 0) goto L_0x006c;
    L_0x008e:
        r2.disconnect();
        goto L_0x006c;
    L_0x0092:
        r0 = move-exception;
        r2 = r1;
    L_0x0094:
        com.facebook.ads.internal.g.b.m.a(r1);
        if (r2 == 0) goto L_0x009c;
    L_0x0099:
        r2.disconnect();
    L_0x009c:
        throw r0;
    L_0x009d:
        r0 = move-exception;
        goto L_0x0094;
    L_0x009f:
        r0 = move-exception;
        goto L_0x006f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.g.b.h.d():void");
    }

    public synchronized int a() {
        if (this.d == Integer.MIN_VALUE) {
            d();
        }
        return this.d;
    }

    public int a(byte[] bArr) {
        if (this.c == null) {
            throw new l("Error reading data from " + this.a + ": connection is absent!");
        }
        try {
            return this.c.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new i("Reading source " + this.a + " is interrupted", e);
        } catch (IOException e2) {
            throw new l("Error reading data from " + this.a, e2);
        }
    }

    public void a(int i) {
        try {
            this.b = a(i, -1);
            this.e = this.b.getContentType();
            this.c = new BufferedInputStream(this.b.getInputStream(), 8192);
            this.d = a(this.b, i, this.b.getResponseCode());
        } catch (IOException e) {
            throw new l("Error opening connection for " + this.a + " with offset " + i, e);
        }
    }

    public void b() {
        if (this.b != null) {
            try {
                this.b.disconnect();
            } catch (NullPointerException e) {
                throw new l("Error disconnecting HttpUrlConnection", e);
            }
        }
    }

    public synchronized String c() {
        if (TextUtils.isEmpty(this.e)) {
            d();
        }
        return this.e;
    }

    public String toString() {
        return "HttpUrlSource{url='" + this.a + "}";
    }
}
