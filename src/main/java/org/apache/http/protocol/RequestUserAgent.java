package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.params.HttpProtocolParams;

public class RequestUserAgent implements HttpRequestInterceptor {
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (!httpRequest.containsHeader("User-Agent")) {
            String userAgent = HttpProtocolParams.getUserAgent(httpRequest.getParams());
            if (userAgent != null) {
                httpRequest.addHeader("User-Agent", userAgent);
            }
        }
    }
}
