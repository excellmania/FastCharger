package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.conn.HttpRoutedConnection;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
public class RequestProxyAuthentication implements HttpRequestInterceptor {
    private final Log log = LogFactory.getLog(getClass());

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else if (!httpRequest.containsHeader("Proxy-Authorization")) {
            HttpRoutedConnection httpRoutedConnection = (HttpRoutedConnection) httpContext.getAttribute(ExecutionContext.HTTP_CONNECTION);
            if (httpRoutedConnection == null) {
                this.log.debug("HTTP connection not set in the context");
            } else if (!httpRoutedConnection.getRoute().isTunnelled()) {
                AuthState authState = (AuthState) httpContext.getAttribute(ClientContext.PROXY_AUTH_STATE);
                if (authState == null) {
                    this.log.debug("Proxy auth state not set in the context");
                    return;
                }
                AuthScheme authScheme = authState.getAuthScheme();
                if (authScheme != null) {
                    Credentials credentials = authState.getCredentials();
                    if (credentials == null) {
                        this.log.debug("User credentials not available");
                    } else if (authState.getAuthScope() != null || !authScheme.isConnectionBased()) {
                        try {
                            httpRequest.addHeader(authScheme instanceof ContextAwareAuthScheme ? ((ContextAwareAuthScheme) authScheme).authenticate(credentials, httpRequest, httpContext) : authScheme.authenticate(credentials, httpRequest));
                        } catch (AuthenticationException e) {
                            if (this.log.isErrorEnabled()) {
                                this.log.error("Proxy authentication error: " + e.getMessage());
                            }
                        }
                    }
                }
            }
        }
    }
}
