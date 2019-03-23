.class public Lcom/facebook/ads/internal/h/d;
.super Lcom/facebook/ads/internal/h/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/h/d$a;,
        Lcom/facebook/ads/internal/h/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/h/d$b;

.field private b:Lcom/facebook/ads/internal/i/a;

.field private final c:J

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/d$b;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/d;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/d;->e:J

    iput-object p2, p0, Lcom/facebook/ads/internal/h/d;->a:Lcom/facebook/ads/internal/h/d$b;

    new-instance v0, Lcom/facebook/ads/internal/h/d$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/d$a;-><init>(Lcom/facebook/ads/internal/h/d;)V

    const-string v1, "AdControl"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/h/d;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/h;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/d;->c:J

    new-instance v0, Lcom/facebook/ads/internal/i/a;

    new-instance v1, Lcom/facebook/ads/internal/h/d$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/ads/internal/h/d$1;-><init>(Lcom/facebook/ads/internal/h/d;Lcom/facebook/ads/internal/h/d$b;)V

    invoke-direct {v0, p0, p3, v1}, Lcom/facebook/ads/internal/i/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/i/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/d;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/h/d;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/d;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/d;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/d;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/h/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/d;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/h/d;)Lcom/facebook/ads/internal/i/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/h/d;)Lcom/facebook/ads/internal/h/d$b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->a:Lcom/facebook/ads/internal/h/d$b;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/i/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/i/a;->b(I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/h/b;->destroy()V

    return-void
.end method

.method protected getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/h/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/d$2;-><init>(Lcom/facebook/ads/internal/h/d;)V

    return-object v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/h/b;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->a:Lcom/facebook/ads/internal/h/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->a:Lcom/facebook/ads/internal/h/d$b;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/d$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d;->b:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->b()V

    goto :goto_0
.end method
