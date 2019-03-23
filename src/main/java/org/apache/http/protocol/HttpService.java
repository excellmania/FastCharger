package org.apache.http.protocol;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.HttpStatus;
import org.apache.http.MethodNotSupportedException;
import org.apache.http.ProtocolException;
import org.apache.http.UnsupportedHttpVersionException;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EncodingUtils;

public class HttpService {
    private volatile ConnectionReuseStrategy connStrategy;
    private volatile HttpExpectationVerifier expectationVerifier;
    private volatile HttpRequestHandlerResolver handlerResolver;
    private volatile HttpParams params;
    private volatile HttpProcessor processor;
    private volatile HttpResponseFactory responseFactory;

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory) {
        this.params = null;
        this.processor = null;
        this.handlerResolver = null;
        this.connStrategy = null;
        this.responseFactory = null;
        this.expectationVerifier = null;
        setHttpProcessor(httpProcessor);
        setConnReuseStrategy(connectionReuseStrategy);
        setResponseFactory(httpResponseFactory);
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpParams httpParams) {
        this(httpProcessor, connectionReuseStrategy, httpResponseFactory, httpRequestHandlerResolver, null, httpParams);
    }

    public HttpService(HttpProcessor httpProcessor, ConnectionReuseStrategy connectionReuseStrategy, HttpResponseFactory httpResponseFactory, HttpRequestHandlerResolver httpRequestHandlerResolver, HttpExpectationVerifier httpExpectationVerifier, HttpParams httpParams) {
        this.params = null;
        this.processor = null;
        this.handlerResolver = null;
        this.connStrategy = null;
        this.responseFactory = null;
        this.expectationVerifier = null;
        if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        } else if (connectionReuseStrategy == null) {
            throw new IllegalArgumentException("Connection reuse strategy may not be null");
        } else if (httpResponseFactory == null) {
            throw new IllegalArgumentException("Response factory may not be null");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        } else {
            this.processor = httpProcessor;
            this.connStrategy = connectionReuseStrategy;
            this.responseFactory = httpResponseFactory;
            this.handlerResolver = httpRequestHandlerResolver;
            this.expectationVerifier = httpExpectationVerifier;
            this.params = httpParams;
        }
    }

    /* Access modifiers changed, original: protected */
    public void doService(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        HttpRequestHandler httpRequestHandler = null;
        if (this.handlerResolver != null) {
            httpRequestHandler = this.handlerResolver.lookup(httpRequest.getRequestLine().getUri());
        }
        if (httpRequestHandler != null) {
            httpRequestHandler.handle(httpRequest, httpResponse, httpContext);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_NOT_IMPLEMENTED);
        }
    }

    public HttpParams getParams() {
        return this.params;
    }

    /* Access modifiers changed, original: protected */
    public void handleException(HttpException httpException, HttpResponse httpResponse) {
        if (httpException instanceof MethodNotSupportedException) {
            httpResponse.setStatusCode(HttpStatus.SC_NOT_IMPLEMENTED);
        } else if (httpException instanceof UnsupportedHttpVersionException) {
            httpResponse.setStatusCode(HttpStatus.SC_HTTP_VERSION_NOT_SUPPORTED);
        } else if (httpException instanceof ProtocolException) {
            httpResponse.setStatusCode(HttpStatus.SC_BAD_REQUEST);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_INTERNAL_SERVER_ERROR);
        }
        ByteArrayEntity byteArrayEntity = new ByteArrayEntity(EncodingUtils.getAsciiBytes(httpException.getMessage()));
        byteArrayEntity.setContentType("text/plain; charset=US-ASCII");
        httpResponse.setEntity(byteArrayEntity);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0076 A:{Catch:{ HttpException -> 0x00ed }} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00a2 A:{Catch:{ HttpException -> 0x00ed }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00c1  */
    public void handleRequest(org.apache.http.HttpServerConnection r12, org.apache.http.protocol.HttpContext r13) {
        /*
        r11 = this;
        r3 = 0;
        r10 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r9 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r1 = "http.connection";
        r13.setAttribute(r1, r12);
        r2 = r12.receiveRequestHeader();	 Catch:{ HttpException -> 0x00ed }
        r1 = new org.apache.http.params.DefaultedHttpParams;	 Catch:{ HttpException -> 0x00ed }
        r4 = r2.getParams();	 Catch:{ HttpException -> 0x00ed }
        r5 = r11.params;	 Catch:{ HttpException -> 0x00ed }
        r1.<init>(r4, r5);	 Catch:{ HttpException -> 0x00ed }
        r2.setParams(r1);	 Catch:{ HttpException -> 0x00ed }
        r1 = r2.getRequestLine();	 Catch:{ HttpException -> 0x00ed }
        r1 = r1.getProtocolVersion();	 Catch:{ HttpException -> 0x00ed }
        r4 = org.apache.http.HttpVersion.HTTP_1_1;	 Catch:{ HttpException -> 0x00ed }
        r4 = r1.lessEquals(r4);	 Catch:{ HttpException -> 0x00ed }
        if (r4 != 0) goto L_0x0109;
    L_0x002c:
        r1 = org.apache.http.HttpVersion.HTTP_1_1;	 Catch:{ HttpException -> 0x00ed }
        r5 = r1;
    L_0x002f:
        r1 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest;	 Catch:{ HttpException -> 0x00ed }
        if (r1 == 0) goto L_0x00eb;
    L_0x0033:
        r0 = r2;
        r0 = (org.apache.http.HttpEntityEnclosingRequest) r0;	 Catch:{ HttpException -> 0x00ed }
        r1 = r0;
        r1 = r1.expectContinue();	 Catch:{ HttpException -> 0x00ed }
        if (r1 == 0) goto L_0x00e4;
    L_0x003d:
        r1 = r11.responseFactory;	 Catch:{ HttpException -> 0x00ed }
        r4 = 100;
        r1 = r1.newHttpResponse(r5, r4, r13);	 Catch:{ HttpException -> 0x00ed }
        r4 = new org.apache.http.params.DefaultedHttpParams;	 Catch:{ HttpException -> 0x00ed }
        r6 = r1.getParams();	 Catch:{ HttpException -> 0x00ed }
        r7 = r11.params;	 Catch:{ HttpException -> 0x00ed }
        r4.<init>(r6, r7);	 Catch:{ HttpException -> 0x00ed }
        r1.setParams(r4);	 Catch:{ HttpException -> 0x00ed }
        r4 = r11.expectationVerifier;	 Catch:{ HttpException -> 0x00ed }
        if (r4 == 0) goto L_0x005c;
    L_0x0057:
        r4 = r11.expectationVerifier;	 Catch:{ HttpException -> 0x00c5 }
        r4.verify(r2, r1, r13);	 Catch:{ HttpException -> 0x00c5 }
    L_0x005c:
        r4 = r1.getStatusLine();	 Catch:{ HttpException -> 0x00ed }
        r4 = r4.getStatusCode();	 Catch:{ HttpException -> 0x00ed }
        if (r4 >= r9) goto L_0x0074;
    L_0x0066:
        r12.sendResponseHeader(r1);	 Catch:{ HttpException -> 0x00ed }
        r12.flush();	 Catch:{ HttpException -> 0x00ed }
        r0 = r2;
        r0 = (org.apache.http.HttpEntityEnclosingRequest) r0;	 Catch:{ HttpException -> 0x00ed }
        r1 = r0;
        r12.receiveRequestEntity(r1);	 Catch:{ HttpException -> 0x00ed }
        r1 = r3;
    L_0x0074:
        if (r1 != 0) goto L_0x009e;
    L_0x0076:
        r1 = r11.responseFactory;	 Catch:{ HttpException -> 0x00ed }
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r1 = r1.newHttpResponse(r5, r3, r13);	 Catch:{ HttpException -> 0x00ed }
        r3 = new org.apache.http.params.DefaultedHttpParams;	 Catch:{ HttpException -> 0x00ed }
        r4 = r1.getParams();	 Catch:{ HttpException -> 0x00ed }
        r5 = r11.params;	 Catch:{ HttpException -> 0x00ed }
        r3.<init>(r4, r5);	 Catch:{ HttpException -> 0x00ed }
        r1.setParams(r3);	 Catch:{ HttpException -> 0x00ed }
        r3 = "http.request";
        r13.setAttribute(r3, r2);	 Catch:{ HttpException -> 0x00ed }
        r3 = "http.response";
        r13.setAttribute(r3, r1);	 Catch:{ HttpException -> 0x00ed }
        r3 = r11.processor;	 Catch:{ HttpException -> 0x00ed }
        r3.process(r2, r13);	 Catch:{ HttpException -> 0x00ed }
        r11.doService(r2, r1, r13);	 Catch:{ HttpException -> 0x00ed }
    L_0x009e:
        r3 = r2 instanceof org.apache.http.HttpEntityEnclosingRequest;	 Catch:{ HttpException -> 0x00ed }
        if (r3 == 0) goto L_0x00ab;
    L_0x00a2:
        r2 = (org.apache.http.HttpEntityEnclosingRequest) r2;	 Catch:{ HttpException -> 0x00ed }
        r2 = r2.getEntity();	 Catch:{ HttpException -> 0x00ed }
        org.apache.http.util.EntityUtils.consume(r2);	 Catch:{ HttpException -> 0x00ed }
    L_0x00ab:
        r2 = r11.processor;
        r2.process(r1, r13);
        r12.sendResponseHeader(r1);
        r12.sendResponseEntity(r1);
        r12.flush();
        r2 = r11.connStrategy;
        r1 = r2.keepAlive(r1, r13);
        if (r1 != 0) goto L_0x00c4;
    L_0x00c1:
        r12.close();
    L_0x00c4:
        return;
    L_0x00c5:
        r1 = move-exception;
        r4 = r11.responseFactory;	 Catch:{ HttpException -> 0x00ed }
        r6 = org.apache.http.HttpVersion.HTTP_1_0;	 Catch:{ HttpException -> 0x00ed }
        r7 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        r4 = r4.newHttpResponse(r6, r7, r13);	 Catch:{ HttpException -> 0x00ed }
        r6 = new org.apache.http.params.DefaultedHttpParams;	 Catch:{ HttpException -> 0x00ed }
        r7 = r4.getParams();	 Catch:{ HttpException -> 0x00ed }
        r8 = r11.params;	 Catch:{ HttpException -> 0x00ed }
        r6.<init>(r7, r8);	 Catch:{ HttpException -> 0x00ed }
        r4.setParams(r6);	 Catch:{ HttpException -> 0x00ed }
        r11.handleException(r1, r4);	 Catch:{ HttpException -> 0x00ed }
        r1 = r4;
        goto L_0x005c;
    L_0x00e4:
        r0 = r2;
        r0 = (org.apache.http.HttpEntityEnclosingRequest) r0;	 Catch:{ HttpException -> 0x00ed }
        r1 = r0;
        r12.receiveRequestEntity(r1);	 Catch:{ HttpException -> 0x00ed }
    L_0x00eb:
        r1 = r3;
        goto L_0x0074;
    L_0x00ed:
        r1 = move-exception;
        r2 = r1;
        r1 = r11.responseFactory;
        r3 = org.apache.http.HttpVersion.HTTP_1_0;
        r1 = r1.newHttpResponse(r3, r10, r13);
        r3 = new org.apache.http.params.DefaultedHttpParams;
        r4 = r1.getParams();
        r5 = r11.params;
        r3.<init>(r4, r5);
        r1.setParams(r3);
        r11.handleException(r2, r1);
        goto L_0x00ab;
    L_0x0109:
        r5 = r1;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.protocol.HttpService.handleRequest(org.apache.http.HttpServerConnection, org.apache.http.protocol.HttpContext):void");
    }

    public void setConnReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        if (connectionReuseStrategy == null) {
            throw new IllegalArgumentException("Connection reuse strategy may not be null");
        }
        this.connStrategy = connectionReuseStrategy;
    }

    public void setExpectationVerifier(HttpExpectationVerifier httpExpectationVerifier) {
        this.expectationVerifier = httpExpectationVerifier;
    }

    public void setHandlerResolver(HttpRequestHandlerResolver httpRequestHandlerResolver) {
        this.handlerResolver = httpRequestHandlerResolver;
    }

    public void setHttpProcessor(HttpProcessor httpProcessor) {
        if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        this.processor = httpProcessor;
    }

    public void setParams(HttpParams httpParams) {
        this.params = httpParams;
    }

    public void setResponseFactory(HttpResponseFactory httpResponseFactory) {
        if (httpResponseFactory == null) {
            throw new IllegalArgumentException("Response factory may not be null");
        }
        this.responseFactory = httpResponseFactory;
    }
}
