package com.google.android.gms.c;

import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class ul implements un {
    protected final HttpClient a;

    public static final class a extends HttpEntityEnclosingRequestBase {
        public a(String str) {
            setURI(URI.create(str));
        }

        public String getMethod() {
            return "PATCH";
        }
    }

    public ul(HttpClient httpClient) {
        this.a = httpClient;
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, mw<?> mwVar) {
        byte[] k = mwVar.k();
        if (k != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(k));
        }
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, (String) map.get(str));
        }
    }

    static HttpUriRequest b(mw<?> mwVar, Map<String, String> map) {
        HttpEntityEnclosingRequestBase httpPost;
        switch (mwVar.a()) {
            case -1:
                byte[] h = mwVar.h();
                if (h == null) {
                    return new HttpGet(mwVar.c());
                }
                HttpPost httpPost2 = new HttpPost(mwVar.c());
                httpPost2.addHeader("Content-Type", mwVar.g());
                httpPost2.setEntity(new ByteArrayEntity(h));
                return httpPost2;
            case 0:
                return new HttpGet(mwVar.c());
            case 1:
                httpPost = new HttpPost(mwVar.c());
                httpPost.addHeader("Content-Type", mwVar.j());
                a(httpPost, (mw) mwVar);
                return httpPost;
            case 2:
                httpPost = new HttpPut(mwVar.c());
                httpPost.addHeader("Content-Type", mwVar.j());
                a(httpPost, (mw) mwVar);
                return httpPost;
            case 3:
                return new HttpDelete(mwVar.c());
            case 4:
                return new HttpHead(mwVar.c());
            case 5:
                return new HttpOptions(mwVar.c());
            case 6:
                return new HttpTrace(mwVar.c());
            case 7:
                httpPost = new a(mwVar.c());
                httpPost.addHeader("Content-Type", mwVar.j());
                a(httpPost, (mw) mwVar);
                return httpPost;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    public HttpResponse a(mw<?> mwVar, Map<String, String> map) {
        HttpUriRequest b = b(mwVar, map);
        a(b, (Map) map);
        a(b, mwVar.f());
        HttpParams params = b.getParams();
        int n = mwVar.n();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, n);
        return this.a.execute(b);
    }
}
