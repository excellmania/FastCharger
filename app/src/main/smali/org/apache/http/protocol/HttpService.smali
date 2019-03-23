.class public Lorg/apache/http/protocol/HttpService;
.super Ljava/lang/Object;


# instance fields
.field private volatile connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private volatile expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

.field private volatile handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

.field private volatile params:Lorg/apache/http/params/HttpParams;

.field private volatile processor:Lorg/apache/http/protocol/HttpProcessor;

.field private volatile responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    invoke-virtual {p0, p1}, Lorg/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V

    invoke-virtual {p0, p3}, Lorg/apache/http/protocol/HttpService;->setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/protocol/HttpRequestHandlerResolver;Lorg/apache/http/params/HttpParams;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/protocol/HttpRequestHandlerResolver;Lorg/apache/http/protocol/HttpExpectationVerifier;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/protocol/HttpRequestHandlerResolver;Lorg/apache/http/protocol/HttpExpectationVerifier;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    iput-object v0, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iput-object p3, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    iput-object p4, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    iput-object p5, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    iput-object p6, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {v1, v0}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/protocol/HttpRequestHandler;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/http/MethodNotSupportedException;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f5

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v0, "text/plain; charset=US-ASCII"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/http/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    const/16 v0, 0x1f9

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/apache/http/ProtocolException;

    if-eqz v0, :cond_2

    const/16 v0, 0x190

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x1f4

    const/16 v9, 0xc8

    const-string v1, "http.connection"

    invoke-interface {p2, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/apache/http/HttpRequest;

    move-result-object v2

    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v2, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v1, v4}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object v5, v1

    :goto_0
    instance-of v1, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/16 v4, 0x64

    invoke-interface {v1, v5, v4, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    new-instance v4, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v4, v6, v7}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v1, v4}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    invoke-interface {v4, v2, v1, p2}, Lorg/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ge v4, v9, :cond_1

    invoke-interface {p1, v1}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {p1, v1}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    move-object v1, v3

    :cond_1
    :goto_2
    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    const/16 v3, 0xc8

    invoke-interface {v1, v5, v3, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    new-instance v3, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v1, v3}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string v3, "http.request"

    invoke-interface {p2, v3, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.response"

    invoke-interface {p2, v3, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v3, v2, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    invoke-virtual {p0, v2, v1, p2}, Lorg/apache/http/protocol/HttpService;->doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    :cond_2
    instance-of v3, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    invoke-interface {v2, v1, p2}, Lorg/apache/http/protocol/HttpProcessor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/apache/http/HttpResponse;)V

    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    iget-object v2, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    invoke-interface {v2, v1, p2}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->close()V

    :cond_4
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v4, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    const/16 v7, 0x1f4

    invoke-interface {v4, v6, v7, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    new-instance v6, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v4, v6}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, v1, v4}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    move-object v1, v4

    goto/16 :goto_1

    :cond_5
    move-object v0, v2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v1, v0

    invoke-interface {p1, v1}, Lorg/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_3
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    move-object v1, v3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    iget-object v1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-interface {v1, v3, v10, p2}, Lorg/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    new-instance v3, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v1, v3}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, v2, v1}, Lorg/apache/http/protocol/HttpService;->handleException(Lorg/apache/http/HttpException;Lorg/apache/http/HttpResponse;)V

    goto :goto_3

    :cond_7
    move-object v5, v1

    goto/16 :goto_0
.end method

.method public setConnReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection reuse strategy may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    return-void
.end method

.method public setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->handlerResolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    return-void
.end method

.method public setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP processor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->processor:Lorg/apache/http/protocol/HttpProcessor;

    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public setResponseFactory(Lorg/apache/http/HttpResponseFactory;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    return-void
.end method
