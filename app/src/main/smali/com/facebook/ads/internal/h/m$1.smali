.class Lcom/facebook/ads/internal/h/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/m;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/m$1;->a:Lcom/facebook/ads/internal/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m$1;->a:Lcom/facebook/ads/internal/h/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/m;->a(Lcom/facebook/ads/internal/h/m;)Lcom/facebook/ads/internal/e/b;

    move-result-object v0

    invoke-static {}, Lcom/facebook/ads/internal/h/m;->g()Lcom/facebook/ads/internal/h/c/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m$1;->a:Lcom/facebook/ads/internal/h/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/m;->b(Lcom/facebook/ads/internal/h/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m$1;->a:Lcom/facebook/ads/internal/h/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/m;->c(Lcom/facebook/ads/internal/h/m;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
