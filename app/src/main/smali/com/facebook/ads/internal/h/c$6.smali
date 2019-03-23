.class Lcom/facebook/ads/internal/h/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c$6;->a:Lcom/facebook/ads/internal/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$6;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->f(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/util/w;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c$6;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/c;->b(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c/c/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/internal/h/c/c/e;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/w;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$6;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->g(Lcom/facebook/ads/internal/h/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$6;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->h(Lcom/facebook/ads/internal/h/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
