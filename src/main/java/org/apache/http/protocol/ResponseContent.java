package org.apache.http.protocol;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpStatus;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;

public class ResponseContent implements HttpResponseInterceptor {
    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        } else if (httpResponse.containsHeader("Transfer-Encoding")) {
            throw new ProtocolException("Transfer-encoding header already present");
        } else if (httpResponse.containsHeader("Content-Length")) {
            throw new ProtocolException("Content-Length header already present");
        } else {
            ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                long contentLength = entity.getContentLength();
                if (entity.isChunked() && !protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                    httpResponse.addHeader("Transfer-Encoding", HTTP.CHUNK_CODING);
                } else if (contentLength >= 0) {
                    httpResponse.addHeader("Content-Length", Long.toString(entity.getContentLength()));
                }
                if (!(entity.getContentType() == null || httpResponse.containsHeader("Content-Type"))) {
                    httpResponse.addHeader(entity.getContentType());
                }
                if (entity.getContentEncoding() != null && !httpResponse.containsHeader("Content-Encoding")) {
                    httpResponse.addHeader(entity.getContentEncoding());
                    return;
                }
                return;
            }
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode != HttpStatus.SC_NO_CONTENT && statusCode != HttpStatus.SC_NOT_MODIFIED && statusCode != HttpStatus.SC_RESET_CONTENT) {
                httpResponse.addHeader("Content-Length", "0");
            }
        }
    }
}
