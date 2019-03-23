package org.apache.http.protocol;

import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.ProtocolVersion;

public class RequestContent implements HttpRequestInterceptor {
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (!(httpRequest instanceof HttpEntityEnclosingRequest)) {
        } else {
            if (httpRequest.containsHeader("Transfer-Encoding")) {
                throw new ProtocolException("Transfer-encoding header already present");
            } else if (httpRequest.containsHeader("Content-Length")) {
                throw new ProtocolException("Content-Length header already present");
            } else {
                ProtocolVersion protocolVersion = httpRequest.getRequestLine().getProtocolVersion();
                HttpEntity entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
                if (entity == null) {
                    httpRequest.addHeader("Content-Length", "0");
                    return;
                }
                if (!entity.isChunked() && entity.getContentLength() >= 0) {
                    httpRequest.addHeader("Content-Length", Long.toString(entity.getContentLength()));
                } else if (protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                    throw new ProtocolException(new StringBuffer().append("Chunked transfer encoding not allowed for ").append(protocolVersion).toString());
                } else {
                    httpRequest.addHeader("Transfer-Encoding", HTTP.CHUNK_CODING);
                }
                if (!(entity.getContentType() == null || httpRequest.containsHeader("Content-Type"))) {
                    httpRequest.addHeader(entity.getContentType());
                }
                if (entity.getContentEncoding() != null && !httpRequest.containsHeader("Content-Encoding")) {
                    httpRequest.addHeader(entity.getContentEncoding());
                }
            }
        }
    }
}
