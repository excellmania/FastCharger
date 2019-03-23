package com.google.android.a.g;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.a.g.n.a;
import com.google.android.a.g.n.c;
import com.google.android.a.h.b;
import com.google.android.a.h.r;
import com.google.android.a.h.x;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpHost;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HTTP;

public class k implements n {
    private static final Pattern b = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> c = new AtomicReference();
    private final boolean d;
    private final int e;
    private final int f;
    private final String g;
    private final r<String> h;
    private final HashMap<String, String> i = new HashMap();
    private final q j;
    private h k;
    private HttpURLConnection l;
    private InputStream m;
    private boolean n;
    private long o;
    private long p;
    private long q;
    private long r;

    public k(String str, r<String> rVar, q qVar, int i, int i2, boolean z) {
        this.g = b.a(str);
        this.h = rVar;
        this.j = qVar;
        this.e = i;
        this.f = i2;
        this.d = z;
    }

    private static long a(HttpURLConnection httpURLConnection) {
        long j = -1;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (!TextUtils.isEmpty(headerField)) {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException e) {
                Log.e("DefaultHttpDataSource", "Unexpected Content-Length [" + headerField + "]");
            }
        }
        String headerField2 = httpURLConnection.getHeaderField(HttpHeaders.CONTENT_RANGE);
        if (TextUtils.isEmpty(headerField2)) {
            return j;
        }
        Matcher matcher = b.matcher(headerField2);
        if (!matcher.find()) {
            return j;
        }
        try {
            long parseLong = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j < 0) {
                return parseLong;
            }
            if (j == parseLong) {
                return j;
            }
            Log.w("DefaultHttpDataSource", "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
            return Math.max(j, parseLong);
        } catch (NumberFormatException e2) {
            Log.e("DefaultHttpDataSource", "Unexpected Content-Range [" + headerField2 + "]");
            return j;
        }
    }

    private HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.e);
        httpURLConnection.setReadTimeout(this.f);
        synchronized (this.i) {
            for (Entry entry : this.i.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!(j == 0 && j2 == -1)) {
            String str = "bytes=" + j + "-";
            if (j2 != -1) {
                str = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.g);
        if (!z) {
            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, HTTP.IDENTITY_CODING);
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    private static URL a(URL url, String str) {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if ("https".equals(protocol) || HttpHost.DEFAULT_SCHEME_NAME.equals(protocol)) {
            return url2;
        }
        throw new ProtocolException("Unsupported protocol redirect: " + protocol);
    }

    private int b(byte[] bArr, int i, int i2) {
        if (this.p != -1) {
            i2 = (int) Math.min((long) i2, this.p - this.r);
        }
        if (i2 == 0) {
            return -1;
        }
        int read = this.m.read(bArr, i, i2);
        if (read != -1) {
            this.r += (long) read;
            if (this.j != null) {
                this.j.a(read);
            }
            return read;
        } else if (this.p == -1 || this.p == this.r) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    private HttpURLConnection b(h hVar) {
        URL url = new URL(hVar.a.toString());
        byte[] bArr = hVar.b;
        long j = hVar.d;
        long j2 = hVar.e;
        boolean z = (hVar.g & 1) != 0;
        if (!this.d) {
            return a(url, bArr, j, j2, z, true);
        }
        HttpURLConnection a;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i <= 20) {
                a = a(url, bArr, j, j2, z, false);
                int responseCode = a.getResponseCode();
                if (responseCode == HttpStatus.SC_MULTIPLE_CHOICES || responseCode == HttpStatus.SC_MOVED_PERMANENTLY || responseCode == HttpStatus.SC_MOVED_TEMPORARILY || responseCode == HttpStatus.SC_SEE_OTHER || (bArr == null && (responseCode == HttpStatus.SC_TEMPORARY_REDIRECT || responseCode == 308))) {
                    bArr = null;
                    String headerField = a.getHeaderField(HttpHeaders.LOCATION);
                    a.disconnect();
                    url = a(url, headerField);
                    i = i2;
                }
            } else {
                throw new NoRouteToHostException("Too many redirects: " + i2);
            }
        }
        return a;
    }

    private void d() {
        if (this.q != this.o) {
            byte[] bArr = (byte[]) c.getAndSet(null);
            if (bArr == null) {
                bArr = new byte[4096];
            }
            while (this.q != this.o) {
                int read = this.m.read(bArr, 0, (int) Math.min(this.o - this.q, (long) bArr.length));
                if (Thread.interrupted()) {
                    throw new InterruptedIOException();
                } else if (read == -1) {
                    throw new EOFException();
                } else {
                    this.q += (long) read;
                    if (this.j != null) {
                        this.j.a(read);
                    }
                }
            }
            c.set(bArr);
        }
    }

    private void e() {
        if (this.l != null) {
            try {
                this.l.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.l = null;
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        try {
            d();
            return b(bArr, i, i2);
        } catch (IOException e) {
            throw new a(e, this.k, 2);
        }
    }

    public long a(h hVar) {
        long j = 0;
        this.k = hVar;
        this.r = 0;
        this.q = 0;
        try {
            this.l = b(hVar);
            try {
                int responseCode = this.l.getResponseCode();
                if (responseCode < 200 || responseCode > 299) {
                    Map headerFields = this.l.getHeaderFields();
                    e();
                    throw new c(responseCode, headerFields, hVar);
                }
                String contentType = this.l.getContentType();
                if (this.h == null || this.h.a(contentType)) {
                    if (responseCode == 200 && hVar.d != 0) {
                        j = hVar.d;
                    }
                    this.o = j;
                    if ((hVar.g & 1) == 0) {
                        j = a(this.l);
                        j = hVar.e != -1 ? hVar.e : j != -1 ? j - this.o : -1;
                        this.p = j;
                    } else {
                        this.p = hVar.e;
                    }
                    try {
                        this.m = this.l.getInputStream();
                        this.n = true;
                        if (this.j != null) {
                            this.j.b();
                        }
                        return this.p;
                    } catch (IOException e) {
                        e();
                        throw new a(e, hVar, 1);
                    }
                }
                e();
                throw new n.b(contentType, hVar);
            } catch (IOException e2) {
                e();
                throw new a("Unable to connect to " + hVar.a.toString(), e2, hVar, 1);
            }
        } catch (IOException e22) {
            throw new a("Unable to connect to " + hVar.a.toString(), e22, hVar, 1);
        }
    }

    public String a() {
        return this.l == null ? null : this.l.getURL().toString();
    }

    public void b() {
        try {
            if (this.m != null) {
                x.a(this.l, c());
                this.m.close();
            }
            this.m = null;
            e();
            if (this.n) {
                this.n = false;
                if (this.j != null) {
                    this.j.c();
                }
            }
        } catch (IOException e) {
            throw new a(e, this.k, 3);
        } catch (Throwable th) {
            this.m = null;
            e();
            if (this.n) {
                this.n = false;
                if (this.j != null) {
                    this.j.c();
                }
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final long c() {
        return this.p == -1 ? this.p : this.p - this.r;
    }
}
