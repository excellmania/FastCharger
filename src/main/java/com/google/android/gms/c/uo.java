package com.google.android.gms.c;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class uo implements un {
    private final a a;
    private final SSLSocketFactory b;

    public interface a {
        String a(String str);
    }

    public uo() {
        this(null);
    }

    public uo(a aVar) {
        this(aVar, null);
    }

    public uo(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.a = aVar;
        this.b = sSLSocketFactory;
    }

    private HttpURLConnection a(URL url, mw<?> mwVar) {
        HttpURLConnection a = a(url);
        int n = mwVar.n();
        a.setConnectTimeout(n);
        a.setReadTimeout(n);
        a.setUseCaches(false);
        a.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.b != null) {
            ((HttpsURLConnection) a).setSSLSocketFactory(this.b);
        }
        return a;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            inputStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            inputStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(inputStream);
        basicHttpEntity.setContentLength((long) httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    static void a(HttpURLConnection httpURLConnection, mw<?> mwVar) {
        switch (mwVar.a()) {
            case -1:
                byte[] h = mwVar.h();
                if (h != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
                    httpURLConnection.addRequestProperty("Content-Type", mwVar.g());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(h);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod(HttpGet.METHOD_NAME);
                return;
            case 1:
                httpURLConnection.setRequestMethod(HttpPost.METHOD_NAME);
                b(httpURLConnection, mwVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod(HttpPut.METHOD_NAME);
                b(httpURLConnection, mwVar);
                return;
            case 3:
                httpURLConnection.setRequestMethod(HttpDelete.METHOD_NAME);
                return;
            case 4:
                httpURLConnection.setRequestMethod(HttpHead.METHOD_NAME);
                return;
            case 5:
                httpURLConnection.setRequestMethod(HttpOptions.METHOD_NAME);
                return;
            case 6:
                httpURLConnection.setRequestMethod(HttpTrace.METHOD_NAME);
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                b(httpURLConnection, mwVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, mw<?> mwVar) {
        byte[] k = mwVar.k();
        if (k != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", mwVar.j());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(k);
            dataOutputStream.close();
        }
    }

    /* Access modifiers changed, original: protected */
    public HttpURLConnection a(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    public HttpResponse a(mw<?> mwVar, Map<String, String> map) {
        String a;
        String c = mwVar.c();
        HashMap hashMap = new HashMap();
        hashMap.putAll(mwVar.f());
        hashMap.putAll(map);
        if (this.a != null) {
            a = this.a.a(c);
            if (a == null) {
                String str = "URL blocked by rewriter: ";
                a = String.valueOf(c);
                throw new IOException(a.length() != 0 ? str.concat(a) : new String(str));
            }
        }
        a = c;
        HttpURLConnection a2 = a(new URL(a), (mw) mwVar);
        for (String a3 : hashMap.keySet()) {
            a2.addRequestProperty(a3, (String) hashMap.get(a3));
        }
        a(a2, (mw) mwVar);
        ProtocolVersion protocolVersion = new ProtocolVersion(HttpVersion.HTTP, 1, 1);
        if (a2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, a2.getResponseCode(), a2.getResponseMessage()));
        basicHttpResponse.setEntity(a(a2));
        for (Entry entry : a2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return basicHttpResponse;
    }
}
