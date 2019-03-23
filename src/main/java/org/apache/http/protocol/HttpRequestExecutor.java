package org.apache.http.protocol;

import java.io.IOException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpHead;

public class HttpRequestExecutor {
    private static final void closeConnection(HttpClientConnection httpClientConnection) {
        try {
            httpClientConnection.close();
        } catch (IOException e) {
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean canResponseHaveBody(HttpRequest httpRequest, HttpResponse httpResponse) {
        if (HttpHead.METHOD_NAME.equalsIgnoreCase(httpRequest.getRequestLine().getMethod())) {
            return false;
        }
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        return (statusCode < 200 || statusCode == HttpStatus.SC_NO_CONTENT || statusCode == HttpStatus.SC_NOT_MODIFIED || statusCode == HttpStatus.SC_RESET_CONTENT) ? false : true;
    }

    /* Access modifiers changed, original: protected */
    public HttpResponse doReceiveResponse(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (httpClientConnection == null) {
            throw new IllegalArgumentException("HTTP connection may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else {
            HttpResponse httpResponse = null;
            int i = 0;
            while (true) {
                if (httpResponse != null && i >= 200) {
                    return httpResponse;
                }
                httpResponse = httpClientConnection.receiveResponseHeader();
                if (canResponseHaveBody(httpRequest, httpResponse)) {
                    httpClientConnection.receiveResponseEntity(httpResponse);
                }
                i = httpResponse.getStatusLine().getStatusCode();
            }
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x009f  */
    public org.apache.http.HttpResponse doSendRequest(org.apache.http.HttpRequest r6, org.apache.http.HttpClientConnection r7, org.apache.http.protocol.HttpContext r8) {
        /*
        r5 = this;
        r1 = 0;
        if (r6 != 0) goto L_0x000b;
    L_0x0003:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP request may not be null";
        r0.<init>(r1);
        throw r0;
    L_0x000b:
        if (r7 != 0) goto L_0x0015;
    L_0x000d:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP connection may not be null";
        r0.<init>(r1);
        throw r0;
    L_0x0015:
        if (r8 != 0) goto L_0x001f;
    L_0x0017:
        r0 = new java.lang.IllegalArgumentException;
        r1 = "HTTP context may not be null";
        r0.<init>(r1);
        throw r0;
    L_0x001f:
        r0 = "http.connection";
        r8.setAttribute(r0, r7);
        r0 = "http.request_sent";
        r2 = java.lang.Boolean.FALSE;
        r8.setAttribute(r0, r2);
        r7.sendRequestHeader(r6);
        r0 = r6 instanceof org.apache.http.HttpEntityEnclosingRequest;
        if (r0 == 0) goto L_0x00b6;
    L_0x0032:
        r2 = 1;
        r0 = r6.getRequestLine();
        r3 = r0.getProtocolVersion();
        r0 = r6;
        r0 = (org.apache.http.HttpEntityEnclosingRequest) r0;
        r0 = r0.expectContinue();
        if (r0 == 0) goto L_0x00b3;
    L_0x0044:
        r0 = org.apache.http.HttpVersion.HTTP_1_0;
        r0 = r3.lessEquals(r0);
        if (r0 != 0) goto L_0x00b3;
    L_0x004c:
        r7.flush();
        r0 = r6.getParams();
        r3 = "http.protocol.wait-for-continue";
        r4 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        r0 = r0.getIntParameter(r3, r4);
        r0 = r7.isResponseAvailable(r0);
        if (r0 == 0) goto L_0x00b3;
    L_0x0061:
        r3 = r7.receiveResponseHeader();
        r0 = r5.canResponseHaveBody(r6, r3);
        if (r0 == 0) goto L_0x006e;
    L_0x006b:
        r7.receiveResponseEntity(r3);
    L_0x006e:
        r0 = r3.getStatusLine();
        r0 = r0.getStatusCode();
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 >= r4) goto L_0x00af;
    L_0x007a:
        r4 = 100;
        if (r0 == r4) goto L_0x009b;
    L_0x007e:
        r0 = new java.net.ProtocolException;
        r1 = new java.lang.StringBuffer;
        r1.<init>();
        r2 = "Unexpected response: ";
        r1 = r1.append(r2);
        r2 = r3.getStatusLine();
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x009b:
        r0 = r1;
        r1 = r2;
    L_0x009d:
        if (r1 == 0) goto L_0x00a4;
    L_0x009f:
        r6 = (org.apache.http.HttpEntityEnclosingRequest) r6;
        r7.sendRequestEntity(r6);
    L_0x00a4:
        r7.flush();
        r1 = "http.request_sent";
        r2 = java.lang.Boolean.TRUE;
        r8.setAttribute(r1, r2);
        return r0;
    L_0x00af:
        r0 = 0;
        r1 = r0;
        r0 = r3;
        goto L_0x009d;
    L_0x00b3:
        r0 = r1;
        r1 = r2;
        goto L_0x009d;
    L_0x00b6:
        r0 = r1;
        goto L_0x00a4;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.HttpRequestExecutor.doSendRequest(org.apache.http.HttpRequest, org.apache.http.HttpClientConnection, org.apache.http.protocol.HttpContext):org.apache.http.HttpResponse");
    }

    public HttpResponse execute(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (httpClientConnection == null) {
            throw new IllegalArgumentException("Client connection may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else {
            try {
                HttpResponse doSendRequest = doSendRequest(httpRequest, httpClientConnection, httpContext);
                return doSendRequest == null ? doReceiveResponse(httpRequest, httpClientConnection, httpContext) : doSendRequest;
            } catch (IOException e) {
                closeConnection(httpClientConnection);
                throw e;
            } catch (HttpException e2) {
                closeConnection(httpClientConnection);
                throw e2;
            } catch (RuntimeException e3) {
                closeConnection(httpClientConnection);
                throw e3;
            }
        }
    }

    public void postProcess(HttpResponse httpResponse, HttpProcessor httpProcessor, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        } else if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else {
            httpContext.setAttribute(ExecutionContext.HTTP_RESPONSE, httpResponse);
            httpProcessor.process(httpResponse, httpContext);
        }
    }

    public void preProcess(HttpRequest httpRequest, HttpProcessor httpProcessor, HttpContext httpContext) {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        } else if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        } else {
            httpContext.setAttribute(ExecutionContext.HTTP_REQUEST, httpRequest);
            httpProcessor.process(httpRequest, httpContext);
        }
    }
}
