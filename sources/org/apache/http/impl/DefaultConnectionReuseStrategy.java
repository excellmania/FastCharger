package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.TokenIterator;
import org.apache.http.message.BasicTokenIterator;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;

public class DefaultConnectionReuseStrategy implements ConnectionReuseStrategy {
    /* Access modifiers changed, original: protected */
    public TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        return new BasicTokenIterator(headerIterator);
    }

    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        boolean z = true;
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null.");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null.");
        } else {
            HttpConnection httpConnection = (HttpConnection) httpContext.getAttribute(ExecutionContext.HTTP_CONNECTION);
            if (httpConnection != null && !httpConnection.isOpen()) {
                return false;
            }
            HttpEntity entity = httpResponse.getEntity();
            ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
            if (entity != null && entity.getContentLength() < 0 && (!entity.isChunked() || protocolVersion.lessEquals(HttpVersion.HTTP_1_0))) {
                return false;
            }
            HeaderIterator headerIterator = httpResponse.headerIterator("Connection");
            if (!headerIterator.hasNext()) {
                headerIterator = httpResponse.headerIterator("Proxy-Connection");
            }
            if (headerIterator.hasNext()) {
                try {
                    TokenIterator createTokenIterator = createTokenIterator(headerIterator);
                    boolean z2 = false;
                    while (createTokenIterator.hasNext()) {
                        String nextToken = createTokenIterator.nextToken();
                        if (HTTP.CONN_CLOSE.equalsIgnoreCase(nextToken)) {
                            return false;
                        }
                        if (HTTP.CONN_KEEP_ALIVE.equalsIgnoreCase(nextToken)) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        return true;
                    }
                } catch (ParseException e) {
                    return false;
                }
            }
            if (protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                z = false;
            }
            return z;
        }
    }
}
