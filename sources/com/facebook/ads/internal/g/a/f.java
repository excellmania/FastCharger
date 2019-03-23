package com.facebook.ads.internal.g.a;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpHeaders;
import org.apache.http.protocol.HTTP;

public abstract class f implements p {
    private final q a;

    public f() {
        this(new g());
    }

    public f(q qVar) {
        this.a = qVar;
    }

    public OutputStream a(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getOutputStream();
    }

    public HttpURLConnection a(String str) {
        return (HttpURLConnection) new URL(str).openConnection();
    }

    public void a(OutputStream outputStream, byte[] bArr) {
        outputStream.write(bArr);
    }

    public void a(HttpURLConnection httpURLConnection, j jVar, String str) {
        httpURLConnection.setRequestMethod(jVar.c());
        httpURLConnection.setDoOutput(jVar.b());
        httpURLConnection.setDoInput(jVar.a());
        if (str != null) {
            httpURLConnection.setRequestProperty("Content-Type", str);
        }
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_CHARSET, HTTP.UTF_8);
    }

    public boolean a(m mVar) {
        n a = mVar.a();
        if (this.a.a()) {
            this.a.a("BasicRequestHandler.onError got");
            mVar.printStackTrace();
        }
        return a != null && a.a() > 0;
    }

    public byte[] a(InputStream inputStream) {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public InputStream b(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getInputStream();
    }
}
