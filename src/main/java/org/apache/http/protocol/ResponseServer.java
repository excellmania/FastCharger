package org.apache.http.protocol;

import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.params.CoreProtocolPNames;

public class ResponseServer implements HttpResponseInterceptor {
    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (!httpResponse.containsHeader("Server")) {
            String str = (String) httpResponse.getParams().getParameter(CoreProtocolPNames.ORIGIN_SERVER);
            if (str != null) {
                httpResponse.addHeader("Server", str);
            }
        }
    }
}
