package org.apache.http.impl.client;

import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.params.AuthPNames;
import org.apache.http.protocol.HttpContext;

@Immutable
public class DefaultTargetAuthenticationHandler extends AbstractAuthenticationHandler {
    /* Access modifiers changed, original: protected */
    public List<String> getAuthPreferences(HttpResponse httpResponse, HttpContext httpContext) {
        List list = (List) httpResponse.getParams().getParameter(AuthPNames.TARGET_AUTH_PREF);
        return list != null ? list : super.getAuthPreferences(httpResponse, httpContext);
    }

    public Map<String, Header> getChallenges(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            return parseChallenges(httpResponse.getHeaders("WWW-Authenticate"));
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    public boolean isAuthenticationRequested(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            return httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_UNAUTHORIZED;
        } else {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
    }
}
