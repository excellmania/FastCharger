package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
public class DefaultRedirectStrategy implements RedirectStrategy {
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    /* Access modifiers changed, original: protected */
    public URI createLocationURI(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid redirect URI: " + str, e);
        }
    }

    public URI getLocationURI(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        Header firstHeader = httpResponse.getFirstHeader("location");
        if (firstHeader == null) {
            throw new ProtocolException("Received redirect response " + httpResponse.getStatusLine() + " but no location header");
        }
        String value = firstHeader.getValue();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Redirect requested to location '" + value + "'");
        }
        URI createLocationURI = createLocationURI(value);
        HttpParams params = httpResponse.getParams();
        if (!createLocationURI.isAbsolute()) {
            if (params.isParameterTrue(ClientPNames.REJECT_RELATIVE_REDIRECT)) {
                throw new ProtocolException("Relative redirect location '" + createLocationURI + "' not allowed");
            }
            HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
            if (httpHost == null) {
                throw new IllegalStateException("Target host not available in the HTTP context");
            }
            try {
                createLocationURI = URIUtils.resolve(URIUtils.rewriteURI(new URI(httpRequest.getRequestLine().getUri()), httpHost, true), createLocationURI);
            } catch (URISyntaxException e) {
                throw new ProtocolException(e.getMessage(), e);
            }
        }
        if (params.isParameterFalse(ClientPNames.ALLOW_CIRCULAR_REDIRECTS)) {
            URI rewriteURI;
            RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute(REDIRECT_LOCATIONS);
            if (redirectLocations == null) {
                redirectLocations = new RedirectLocations();
                httpContext.setAttribute(REDIRECT_LOCATIONS, redirectLocations);
            }
            if (createLocationURI.getFragment() != null) {
                try {
                    rewriteURI = URIUtils.rewriteURI(createLocationURI, new HttpHost(createLocationURI.getHost(), createLocationURI.getPort(), createLocationURI.getScheme()), true);
                } catch (URISyntaxException e2) {
                    throw new ProtocolException(e2.getMessage(), e2);
                }
            }
            rewriteURI = createLocationURI;
            if (redirectLocations.contains(rewriteURI)) {
                throw new CircularRedirectException("Circular redirect to '" + rewriteURI + "'");
            }
            redirectLocations.add(rewriteURI);
        }
        return createLocationURI;
    }

    public HttpUriRequest getRedirect(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        URI locationURI = getLocationURI(httpRequest, httpResponse, httpContext);
        return httpRequest.getRequestLine().getMethod().equalsIgnoreCase(HttpHead.METHOD_NAME) ? new HttpHead(locationURI) : new HttpGet(locationURI);
    }

    public boolean isRedirected(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        String method = httpRequest.getRequestLine().getMethod();
        Header firstHeader = httpResponse.getFirstHeader("location");
        switch (statusCode) {
            case HttpStatus.SC_MOVED_PERMANENTLY /*301*/:
            case HttpStatus.SC_TEMPORARY_REDIRECT /*307*/:
                return method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME);
            case HttpStatus.SC_MOVED_TEMPORARILY /*302*/:
                return (method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME)) && firstHeader != null;
            case HttpStatus.SC_SEE_OTHER /*303*/:
                return true;
            default:
                return false;
        }
    }
}
