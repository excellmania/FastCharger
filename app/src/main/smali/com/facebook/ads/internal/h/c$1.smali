.class Lcom/facebook/ads/internal/h/c$1;
.super Lcom/facebook/ads/internal/i/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/c;->g()V
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

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->a(Lcom/facebook/ads/internal/h/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->b(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getTargetState()Lcom/facebook/ads/internal/h/c/c/g;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->b(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getTargetState()Lcom/facebook/ads/internal/h/c/c/g;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->e()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$1;->a:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->f()V

    return-void
.end method
