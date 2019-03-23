package com.google.android.gms.c;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpHost;

@pa
public class tj {
    public HttpURLConnection a(String str, int i) {
        URL url = new URL(str);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(i);
                openConnection.setReadTimeout(i);
                if (openConnection instanceof HttpURLConnection) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                    httpURLConnection.setInstanceFollowRedirects(false);
                    if (httpURLConnection.getResponseCode() / 100 != 3) {
                        return httpURLConnection;
                    }
                    String headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    String protocol = url2.getProtocol();
                    if (protocol == null) {
                        throw new IOException("Protocol is null");
                    } else if (protocol.equals(HttpHost.DEFAULT_SCHEME_NAME) || protocol.equals("https")) {
                        String str2 = "Redirecting to ";
                        protocol = String.valueOf(headerField);
                        sz.b(protocol.length() != 0 ? str2.concat(protocol) : new String(str2));
                        httpURLConnection.disconnect();
                        i2 = i3;
                        url = url2;
                    } else {
                        String str3 = "Unsupported scheme: ";
                        String valueOf = String.valueOf(protocol);
                        throw new IOException(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                    }
                }
                throw new IOException("Invalid protocol.");
            }
            throw new IOException("Too many redirects (20)");
        }
    }
}
