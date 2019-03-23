package org.apache.http.protocol;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;

public class ResponseConnControl implements HttpResponseInterceptor {
    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode == HttpStatus.SC_BAD_REQUEST || statusCode == HttpStatus.SC_REQUEST_TIMEOUT || statusCode == HttpStatus.SC_LENGTH_REQUIRED || statusCode == HttpStatus.SC_REQUEST_TOO_LONG || statusCode == HttpStatus.SC_REQUEST_URI_TOO_LONG || statusCode == HttpStatus.SC_SERVICE_UNAVAILABLE || statusCode == HttpStatus.SC_NOT_IMPLEMENTED) {
                httpResponse.setHeader("Connection", HTTP.CONN_CLOSE);
                return;
            }
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
                if (entity.getContentLength() < 0 && (!entity.isChunked() || protocolVersion.lessEquals(HttpVersion.HTTP_1_0))) {
                    httpResponse.setHeader("Connection", HTTP.CONN_CLOSE);
                    return;
                }
            }
            HttpRequest httpRequest = (HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST);
            if (httpRequest != null) {
                Header firstHeader = httpRequest.getFirstHeader("Connection");
                if (firstHeader != null) {
                    httpResponse.setHeader("Connection", firstHeader.getValue());
                }
            }
        }
    }
}
