.class Lcom/facebook/ads/internal/h/d$1;
.super Lcom/facebook/ads/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/d$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/d$b;

.field final synthetic b:Lcom/facebook/ads/internal/h/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/d;Lcom/facebook/ads/internal/h/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/d$1;->b:Lcom/facebook/ads/internal/h/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/h/d$1;->a:Lcom/facebook/ads/internal/h/d$b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$1;->b:Lcom/facebook/ads/internal/h/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/d;->a(Lcom/facebook/ads/internal/h/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$1;->b:Lcom/facebook/ads/internal/h/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/h/d;->a(Lcom/facebook/ads/internal/h/d;J)J

    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$1;->b:Lcom/facebook/ads/internal/h/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/d;->a(Lcom/facebook/ads/internal/h/d;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/d$1;->a:Lcom/facebook/ads/internal/h/d$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/d$b;->b()V

    return-void
.end method
