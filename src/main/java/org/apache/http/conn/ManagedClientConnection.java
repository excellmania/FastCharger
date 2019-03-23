package org.apache.http.conn;

import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public interface ManagedClientConnection extends HttpClientConnection, ConnectionReleaseTrigger, HttpRoutedConnection {
    HttpRoute getRoute();

    SSLSession getSSLSession();

    Object getState();

    boolean isMarkedReusable();

    boolean isSecure();

    void layerProtocol(HttpContext httpContext, HttpParams httpParams);

    void markReusable();

    void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams);

    void setIdleDuration(long j, TimeUnit timeUnit);

    void setState(Object obj);

    void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams);

    void tunnelTarget(boolean z, HttpParams httpParams);

    void unmarkReusable();
}
