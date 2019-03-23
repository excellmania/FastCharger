package org.apache.http.impl.client;

import java.util.HashMap;
import org.apache.http.HttpHost;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthCache;

@NotThreadSafe
public class BasicAuthCache implements AuthCache {
    private final HashMap<HttpHost, AuthScheme> map = new HashMap();

    public void clear() {
        this.map.clear();
    }

    public AuthScheme get(HttpHost httpHost) {
        if (httpHost != null) {
            return (AuthScheme) this.map.get(httpHost);
        }
        throw new IllegalArgumentException("HTTP host may not be null");
    }

    public void put(HttpHost httpHost, AuthScheme authScheme) {
        if (httpHost == null) {
            throw new IllegalArgumentException("HTTP host may not be null");
        }
        this.map.put(httpHost, authScheme);
    }

    public void remove(HttpHost httpHost) {
        if (httpHost == null) {
            throw new IllegalArgumentException("HTTP host may not be null");
        }
        this.map.remove(httpHost);
    }

    public String toString() {
        return this.map.toString();
    }
}
