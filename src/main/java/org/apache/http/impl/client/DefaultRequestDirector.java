package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.AbortableHttpRequest;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.BasicManagedEntity;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.EntityUtils;

@NotThreadSafe
public class DefaultRequestDirector implements RequestDirector {
    protected final ClientConnectionManager connManager;
    private int execCount;
    protected final HttpProcessor httpProcessor;
    protected final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    protected ManagedClientConnection managedConn;
    private int maxRedirects;
    protected final HttpParams params;
    protected final AuthenticationHandler proxyAuthHandler;
    protected final AuthState proxyAuthState;
    private int redirectCount;
    @Deprecated
    protected final RedirectHandler redirectHandler;
    protected final RedirectStrategy redirectStrategy;
    protected final HttpRequestExecutor requestExec;
    protected final HttpRequestRetryHandler retryHandler;
    protected final ConnectionReuseStrategy reuseStrategy;
    protected final HttpRoutePlanner routePlanner;
    protected final AuthenticationHandler targetAuthHandler;
    protected final AuthState targetAuthState;
    protected final UserTokenHandler userTokenHandler;
    private HttpHost virtualHost;

    public DefaultRequestDirector(Log log, HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this.redirectHandler = null;
        if (log == null) {
            throw new IllegalArgumentException("Log may not be null.");
        } else if (httpRequestExecutor == null) {
            throw new IllegalArgumentException("Request executor may not be null.");
        } else if (clientConnectionManager == null) {
            throw new IllegalArgumentException("Client connection manager may not be null.");
        } else if (connectionReuseStrategy == null) {
            throw new IllegalArgumentException("Connection reuse strategy may not be null.");
        } else if (connectionKeepAliveStrategy == null) {
            throw new IllegalArgumentException("Connection keep alive strategy may not be null.");
        } else if (httpRoutePlanner == null) {
            throw new IllegalArgumentException("Route planner may not be null.");
        } else if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP protocol processor may not be null.");
        } else if (httpRequestRetryHandler == null) {
            throw new IllegalArgumentException("HTTP request retry handler may not be null.");
        } else if (redirectStrategy == null) {
            throw new IllegalArgumentException("Redirect strategy may not be null.");
        } else if (authenticationHandler == null) {
            throw new IllegalArgumentException("Target authentication handler may not be null.");
        } else if (authenticationHandler2 == null) {
            throw new IllegalArgumentException("Proxy authentication handler may not be null.");
        } else if (userTokenHandler == null) {
            throw new IllegalArgumentException("User token handler may not be null.");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else {
            this.log = log;
            this.requestExec = httpRequestExecutor;
            this.connManager = clientConnectionManager;
            this.reuseStrategy = connectionReuseStrategy;
            this.keepAliveStrategy = connectionKeepAliveStrategy;
            this.routePlanner = httpRoutePlanner;
            this.httpProcessor = httpProcessor;
            this.retryHandler = httpRequestRetryHandler;
            this.redirectStrategy = redirectStrategy;
            this.targetAuthHandler = authenticationHandler;
            this.proxyAuthHandler = authenticationHandler2;
            this.userTokenHandler = userTokenHandler;
            this.params = httpParams;
            this.managedConn = null;
            this.execCount = 0;
            this.redirectCount = 0;
            this.maxRedirects = this.params.getIntParameter(ClientPNames.MAX_REDIRECTS, 100);
            this.targetAuthState = new AuthState();
            this.proxyAuthState = new AuthState();
        }
    }

    @Deprecated
    public DefaultRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this(LogFactory.getLog(DefaultRequestDirector.class), httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, new DefaultRedirectStrategyAdaptor(redirectHandler), authenticationHandler, authenticationHandler2, userTokenHandler, httpParams);
    }

    private void abortConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            this.managedConn = null;
            try {
                managedClientConnection.abortConnection();
            } catch (IOException e) {
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e.getMessage(), e);
                }
            }
            try {
                managedClientConnection.releaseConnection();
            } catch (IOException e2) {
                this.log.debug("Error releasing connection", e2);
            }
        }
    }

    private void invalidateAuthIfSuccessful(AuthState authState) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme != null && authScheme.isConnectionBased() && authScheme.isComplete() && authState.getCredentials() != null) {
            authState.invalidate();
        }
    }

    private void processChallenges(Map<String, Header> map, AuthState authState, AuthenticationHandler authenticationHandler, HttpResponse httpResponse, HttpContext httpContext) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme == null) {
            authScheme = authenticationHandler.selectScheme(map, httpResponse, httpContext);
            authState.setAuthScheme(authScheme);
        }
        AuthScheme authScheme2 = authScheme;
        String schemeName = authScheme2.getSchemeName();
        Header header = (Header) map.get(schemeName.toLowerCase(Locale.ENGLISH));
        if (header == null) {
            throw new AuthenticationException(schemeName + " authorization challenge expected, but not found");
        }
        authScheme2.processChallenge(header);
        this.log.debug("Authorization challenge processed");
    }

    private void tryConnect(RoutedRequest routedRequest, HttpContext httpContext) {
        HttpRoute route = routedRequest.getRoute();
        int i = 0;
        while (true) {
            i++;
            try {
                if (this.managedConn.isOpen()) {
                    this.managedConn.setSocketTimeout(HttpConnectionParams.getSoTimeout(this.params));
                } else {
                    this.managedConn.open(route, httpContext, this.params);
                }
                establishRoute(route, httpContext);
                return;
            } catch (IOException e) {
                try {
                    this.managedConn.close();
                } catch (IOException e2) {
                }
                if (this.retryHandler.retryRequest(e, i, httpContext)) {
                    if (this.log.isInfoEnabled()) {
                        this.log.info("I/O exception (" + e.getClass().getName() + ") caught when connecting to the target host: " + e.getMessage());
                    }
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e.getMessage(), e);
                    }
                    this.log.info("Retrying connect");
                } else {
                    throw e;
                }
            }
        }
    }

    private HttpResponse tryExecute(RoutedRequest routedRequest, HttpContext httpContext) {
        RequestWrapper request = routedRequest.getRequest();
        HttpRoute route = routedRequest.getRoute();
        Throwable e = null;
        while (true) {
            this.execCount++;
            request.incrementExecCount();
            if (request.isRepeatable()) {
                try {
                    if (!this.managedConn.isOpen()) {
                        if (route.isTunnelled()) {
                            this.log.debug("Proxied connection. Need to start over.");
                            return null;
                        }
                        this.log.debug("Reopening the direct connection.");
                        this.managedConn.open(route, httpContext, this.params);
                    }
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Attempt " + this.execCount + " to execute request");
                    }
                    return this.requestExec.execute(request, this.managedConn, httpContext);
                } catch (IOException e2) {
                    e = e2;
                    this.log.debug("Closing the connection.");
                    try {
                        this.managedConn.close();
                    } catch (IOException e3) {
                    }
                    if (this.retryHandler.retryRequest(e, request.getExecCount(), httpContext)) {
                        if (this.log.isInfoEnabled()) {
                            this.log.info("I/O exception (" + e.getClass().getName() + ") caught when processing request: " + e.getMessage());
                        }
                        if (this.log.isDebugEnabled()) {
                            this.log.debug(e.getMessage(), e);
                        }
                        this.log.info("Retrying request");
                    } else {
                        throw e;
                    }
                }
            }
            this.log.debug("Cannot retry non-repeatable request");
            if (e != null) {
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", e);
            }
            throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
        }
    }

    private void updateAuthState(AuthState authState, HttpHost httpHost, CredentialsProvider credentialsProvider) {
        if (authState.isValid()) {
            String hostName = httpHost.getHostName();
            int port = httpHost.getPort();
            if (port < 0) {
                port = this.connManager.getSchemeRegistry().getScheme(httpHost).getDefaultPort();
            }
            AuthScheme authScheme = authState.getAuthScheme();
            AuthScope authScope = new AuthScope(hostName, port, authScheme.getRealm(), authScheme.getSchemeName());
            if (this.log.isDebugEnabled()) {
                this.log.debug("Authentication scope: " + authScope);
            }
            Credentials credentials = authState.getCredentials();
            if (credentials == null) {
                credentials = credentialsProvider.getCredentials(authScope);
                if (this.log.isDebugEnabled()) {
                    if (credentials != null) {
                        this.log.debug("Found credentials");
                    } else {
                        this.log.debug("Credentials not found");
                    }
                }
            } else if (authScheme.isComplete()) {
                this.log.debug("Authentication failed");
                credentials = null;
            }
            authState.setAuthScope(authScope);
            authState.setCredentials(credentials);
        }
    }

    private RequestWrapper wrapRequest(HttpRequest httpRequest) {
        return httpRequest instanceof HttpEntityEnclosingRequest ? new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest) : new RequestWrapper(httpRequest);
    }

    /* Access modifiers changed, original: protected */
    public HttpRequest createConnectRequest(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost targetHost = httpRoute.getTargetHost();
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = this.connManager.getSchemeRegistry().getScheme(targetHost.getSchemeName()).getDefaultPort();
        }
        StringBuilder stringBuilder = new StringBuilder(hostName.length() + 6);
        stringBuilder.append(hostName);
        stringBuilder.append(':');
        stringBuilder.append(Integer.toString(port));
        return new BasicHttpRequest("CONNECT", stringBuilder.toString(), HttpProtocolParams.getVersion(this.params));
    }

    /* Access modifiers changed, original: protected */
    public boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpContext httpContext) {
        throw new HttpException("Proxy chains are not supported.");
    }

    /* Access modifiers changed, original: protected */
    public boolean createTunnelToTarget(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpHost targetHost = httpRoute.getTargetHost();
        boolean z = false;
        HttpResponse httpResponse = null;
        while (!z) {
            z = true;
            if (!this.managedConn.isOpen()) {
                this.managedConn.open(httpRoute, httpContext, this.params);
            }
            HttpRequest createConnectRequest = createConnectRequest(httpRoute, httpContext);
            createConnectRequest.setParams(this.params);
            httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, targetHost);
            httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
            httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
            httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
            httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
            httpContext.setAttribute(ExecutionContext.HTTP_REQUEST, createConnectRequest);
            this.requestExec.preProcess(createConnectRequest, this.httpProcessor, httpContext);
            httpResponse = this.requestExec.execute(createConnectRequest, this.managedConn, httpContext);
            httpResponse.setParams(this.params);
            this.requestExec.postProcess(httpResponse, this.httpProcessor, httpContext);
            if (httpResponse.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + httpResponse.getStatusLine());
            }
            CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
            if (credentialsProvider != null && HttpClientParams.isAuthenticating(this.params)) {
                if (this.proxyAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                    boolean z2;
                    this.log.debug("Proxy requested authentication");
                    try {
                        processChallenges(this.proxyAuthHandler.getChallenges(httpResponse, httpContext), this.proxyAuthState, this.proxyAuthHandler, httpResponse, httpContext);
                    } catch (AuthenticationException e) {
                        if (this.log.isWarnEnabled()) {
                            this.log.warn("Authentication error: " + e.getMessage());
                            break;
                        }
                    }
                    updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                    if (this.proxyAuthState.getCredentials() == null) {
                        z2 = true;
                    } else if (this.reuseStrategy.keepAlive(httpResponse, httpContext)) {
                        this.log.debug("Connection kept alive");
                        EntityUtils.consume(httpResponse.getEntity());
                        z2 = false;
                    } else {
                        this.managedConn.close();
                        z2 = false;
                    }
                    z = z2;
                } else {
                    this.proxyAuthState.setAuthScope(null);
                }
            }
        }
        if (httpResponse.getStatusLine().getStatusCode() > 299) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                httpResponse.setEntity(new BufferedHttpEntity(entity));
            }
            this.managedConn.close();
            throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponse.getStatusLine(), httpResponse);
        }
        this.managedConn.markReusable();
        return false;
    }

    /* Access modifiers changed, original: protected */
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        HttpHost httpHost2 = httpHost == null ? (HttpHost) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HOST) : httpHost;
        if (httpHost2 != null) {
            return this.routePlanner.determineRoute(httpHost2, httpRequest, httpContext);
        }
        throw new IllegalStateException("Target host must not be null, or set in parameters.");
    }

    /* Access modifiers changed, original: protected */
    public void establishRoute(HttpRoute httpRoute, HttpContext httpContext) {
        BasicRouteDirector basicRouteDirector = new BasicRouteDirector();
        int nextStep;
        do {
            HttpRoute route = this.managedConn.getRoute();
            nextStep = basicRouteDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    break;
                case 1:
                case 2:
                    this.managedConn.open(httpRoute, httpContext, this.params);
                    continue;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(httpRoute, httpContext);
                    this.log.debug("Tunnel to target created.");
                    this.managedConn.tunnelTarget(createTunnelToTarget, this.params);
                    continue;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpContext);
                    this.log.debug("Tunnel to proxy created.");
                    this.managedConn.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy, this.params);
                    continue;
                case 5:
                    this.managedConn.layerProtocol(httpContext, this.params);
                    continue;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        InterruptedIOException interruptedIOException;
        RequestWrapper wrapRequest = wrapRequest(httpRequest);
        wrapRequest.setParams(this.params);
        HttpRoute determineRoute = determineRoute(httpHost, wrapRequest, httpContext);
        this.virtualHost = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.VIRTUAL_HOST);
        if (this.virtualHost != null && this.virtualHost.getPort() == -1) {
            int port = httpHost.getPort();
            if (port != -1) {
                this.virtualHost = new HttpHost(this.virtualHost.getHostName(), port, this.virtualHost.getSchemeName());
            }
        }
        RoutedRequest routedRequest = new RoutedRequest(wrapRequest, determineRoute);
        Object obj = null;
        HttpResponse httpResponse = null;
        boolean z = false;
        RoutedRequest routedRequest2 = routedRequest;
        while (obj == null) {
            try {
                RequestWrapper request = routedRequest2.getRequest();
                HttpRoute route = routedRequest2.getRoute();
                Object attribute = httpContext.getAttribute(ClientContext.USER_TOKEN);
                if (this.managedConn == null) {
                    ClientConnectionRequest requestConnection = this.connManager.requestConnection(route, attribute);
                    if (httpRequest instanceof AbortableHttpRequest) {
                        ((AbortableHttpRequest) httpRequest).setConnectionRequest(requestConnection);
                    }
                    this.managedConn = requestConnection.getConnection(ConnManagerParams.getTimeout(this.params), TimeUnit.MILLISECONDS);
                    if (HttpConnectionParams.isStaleCheckingEnabled(this.params) && this.managedConn.isOpen()) {
                        this.log.debug("Stale connection check");
                        if (this.managedConn.isStale()) {
                            this.log.debug("Stale connection detected");
                            this.managedConn.close();
                        }
                    }
                }
                if (httpRequest instanceof AbortableHttpRequest) {
                    ((AbortableHttpRequest) httpRequest).setReleaseTrigger(this.managedConn);
                }
                try {
                    tryConnect(routedRequest2, httpContext);
                    request.resetHeaders();
                    rewriteRequestURI(request, route);
                    Object obj2 = this.virtualHost;
                    if (obj2 == null) {
                        obj2 = route.getTargetHost();
                    }
                    HttpHost proxyHost = route.getProxyHost();
                    httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, obj2);
                    httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
                    httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
                    httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
                    httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
                    this.requestExec.preProcess(request, this.httpProcessor, httpContext);
                    HttpResponse tryExecute = tryExecute(routedRequest2, httpContext);
                    if (tryExecute == null) {
                        httpResponse = tryExecute;
                    } else {
                        RoutedRequest routedRequest3;
                        tryExecute.setParams(this.params);
                        this.requestExec.postProcess(tryExecute, this.httpProcessor, httpContext);
                        z = this.reuseStrategy.keepAlive(tryExecute, httpContext);
                        if (z) {
                            long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(tryExecute, httpContext);
                            if (this.log.isDebugEnabled()) {
                                this.log.debug("Connection can be kept alive " + (keepAliveDuration > 0 ? "for " + keepAliveDuration + " " + TimeUnit.MILLISECONDS : "indefinitely"));
                            }
                            this.managedConn.setIdleDuration(keepAliveDuration, TimeUnit.MILLISECONDS);
                        }
                        RoutedRequest handleResponse = handleResponse(routedRequest2, tryExecute, httpContext);
                        if (handleResponse == null) {
                            obj2 = 1;
                            routedRequest3 = routedRequest2;
                        } else {
                            if (z) {
                                EntityUtils.consume(tryExecute.getEntity());
                                this.managedConn.markReusable();
                            } else {
                                this.managedConn.close();
                                invalidateAuthIfSuccessful(this.proxyAuthState);
                                invalidateAuthIfSuccessful(this.targetAuthState);
                            }
                            if (!handleResponse.getRoute().equals(routedRequest2.getRoute())) {
                                releaseConnection();
                            }
                            Object obj3 = obj;
                            routedRequest3 = handleResponse;
                            obj2 = obj3;
                        }
                        if (this.managedConn != null && attribute == null) {
                            Object userToken = this.userTokenHandler.getUserToken(httpContext);
                            httpContext.setAttribute(ClientContext.USER_TOKEN, userToken);
                            if (userToken != null) {
                                this.managedConn.setState(userToken);
                            }
                        }
                        routedRequest2 = routedRequest3;
                        obj = obj2;
                        httpResponse = tryExecute;
                    }
                } catch (TunnelRefusedException e) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e.getMessage());
                    }
                    httpResponse = e.getResponse();
                }
            } catch (InterruptedException e2) {
                interruptedIOException = new InterruptedIOException();
                interruptedIOException.initCause(e2);
                throw interruptedIOException;
            } catch (ConnectionShutdownException e3) {
                interruptedIOException = new InterruptedIOException("Connection has been shut down");
                interruptedIOException.initCause(e3);
                throw interruptedIOException;
            } catch (HttpException e4) {
                abortConnection();
                throw e4;
            } catch (IOException e5) {
                abortConnection();
                throw e5;
            } catch (RuntimeException e6) {
                abortConnection();
                throw e6;
            }
        }
        if (httpResponse == null || httpResponse.getEntity() == null || !httpResponse.getEntity().isStreaming()) {
            if (z) {
                this.managedConn.markReusable();
            }
            releaseConnection();
        } else {
            httpResponse.setEntity(new BasicManagedEntity(httpResponse.getEntity(), this.managedConn, z));
        }
        return httpResponse;
    }

    /* Access modifiers changed, original: protected */
    public RoutedRequest handleResponse(RoutedRequest routedRequest, HttpResponse httpResponse, HttpContext httpContext) {
        HttpRoute route = routedRequest.getRoute();
        RequestWrapper request = routedRequest.getRequest();
        HttpParams params = request.getParams();
        if (!HttpClientParams.isRedirecting(params) || !this.redirectStrategy.isRedirected(request, httpResponse, httpContext)) {
            CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
            if (credentialsProvider != null && HttpClientParams.isAuthenticating(params)) {
                HttpHost targetHost;
                if (this.targetAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                    HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                    targetHost = httpHost == null ? route.getTargetHost() : httpHost;
                    this.log.debug("Target requested authentication");
                    try {
                        processChallenges(this.targetAuthHandler.getChallenges(httpResponse, httpContext), this.targetAuthState, this.targetAuthHandler, httpResponse, httpContext);
                    } catch (AuthenticationException e) {
                        if (this.log.isWarnEnabled()) {
                            this.log.warn("Authentication error: " + e.getMessage());
                            return null;
                        }
                    }
                    updateAuthState(this.targetAuthState, targetHost, credentialsProvider);
                    return this.targetAuthState.getCredentials() == null ? null : routedRequest;
                } else {
                    this.targetAuthState.setAuthScope(null);
                    if (this.proxyAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                        targetHost = route.getProxyHost();
                        this.log.debug("Proxy requested authentication");
                        try {
                            processChallenges(this.proxyAuthHandler.getChallenges(httpResponse, httpContext), this.proxyAuthState, this.proxyAuthHandler, httpResponse, httpContext);
                        } catch (AuthenticationException e2) {
                            if (this.log.isWarnEnabled()) {
                                this.log.warn("Authentication error: " + e2.getMessage());
                                return null;
                            }
                        }
                        updateAuthState(this.proxyAuthState, targetHost, credentialsProvider);
                        return this.proxyAuthState.getCredentials() == null ? null : routedRequest;
                    } else {
                        this.proxyAuthState.setAuthScope(null);
                    }
                }
            }
            return null;
        } else if (this.redirectCount >= this.maxRedirects) {
            throw new RedirectException("Maximum redirects (" + this.maxRedirects + ") exceeded");
        } else {
            this.redirectCount++;
            this.virtualHost = null;
            HttpUriRequest redirect = this.redirectStrategy.getRedirect(request, httpResponse, httpContext);
            redirect.setHeaders(request.getOriginal().getAllHeaders());
            URI uri = redirect.getURI();
            if (uri.getHost() == null) {
                throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
            }
            HttpHost httpHost2 = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
            this.targetAuthState.setAuthScope(null);
            this.proxyAuthState.setAuthScope(null);
            if (!route.getTargetHost().equals(httpHost2)) {
                this.targetAuthState.invalidate();
                AuthScheme authScheme = this.proxyAuthState.getAuthScheme();
                if (authScheme != null && authScheme.isConnectionBased()) {
                    this.proxyAuthState.invalidate();
                }
            }
            RequestWrapper wrapRequest = wrapRequest(redirect);
            wrapRequest.setParams(params);
            HttpRoute determineRoute = determineRoute(httpHost2, wrapRequest, httpContext);
            routedRequest = new RoutedRequest(wrapRequest, determineRoute);
            if (!this.log.isDebugEnabled()) {
                return routedRequest;
            }
            this.log.debug("Redirecting to '" + uri + "' via " + determineRoute);
            return routedRequest;
        }
    }

    /* Access modifiers changed, original: protected */
    public void releaseConnection() {
        try {
            this.managedConn.releaseConnection();
        } catch (IOException e) {
            this.log.debug("IOException releasing connection", e);
        }
        this.managedConn = null;
    }

    /* Access modifiers changed, original: protected */
    public void rewriteRequestURI(RequestWrapper requestWrapper, HttpRoute httpRoute) {
        try {
            URI uri = requestWrapper.getURI();
            if (httpRoute.getProxyHost() == null || httpRoute.isTunnelled()) {
                if (uri.isAbsolute()) {
                    requestWrapper.setURI(URIUtils.rewriteURI(uri, null));
                }
            } else if (!uri.isAbsolute()) {
                requestWrapper.setURI(URIUtils.rewriteURI(uri, httpRoute.getTargetHost()));
            }
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid URI: " + requestWrapper.getRequestLine().getUri(), e);
        }
    }
}
