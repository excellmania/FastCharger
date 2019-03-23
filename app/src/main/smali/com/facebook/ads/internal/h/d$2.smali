.class Lcom/facebook/ads/internal/h/d$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/d;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p2    # Landroid/webkit/SslErrorHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/h/d;->b(Lcom/facebook/ads/internal/h/d;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/h/d;->c(Lcom/facebook/ads/internal/h/d;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/d;->d(Lcom/facebook/ads/internal/h/d;)Lcom/facebook/ads/internal/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->c()Lcom/facebook/ads/internal/i/b;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "vrc"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/b;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vp"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/b;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vh"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-static {v3}, Lcom/facebook/ads/internal/h/d;->d(Lcom/facebook/ads/internal/h/d;)Lcom/facebook/ads/internal/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$2;->a:Lcom/facebook/ads/internal/h/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/d;->e(Lcom/facebook/ads/internal/h/d;)Lcom/facebook/ads/internal/h/d$b;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/facebook/ads/internal/h/d$b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
