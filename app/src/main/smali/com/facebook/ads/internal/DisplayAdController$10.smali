.class Lcom/facebook/ads/internal/DisplayAdController$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/internal/d/d;Lcom/facebook/ads/internal/d/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:J

.field final synthetic f:Lcom/facebook/ads/internal/d/a;

.field final synthetic g:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;JLcom/facebook/ads/internal/d/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->d:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->e:J

    iput-object p5, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->f:Lcom/facebook/ads/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->f(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->a()V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->e:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->f:Lcom/facebook/ads/internal/d/a;

    sget-object v3, Lcom/facebook/ads/internal/d/g;->a:Lcom/facebook/ads/internal/d/g;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/d/a;->a(Lcom/facebook/ads/internal/d/g;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->f(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->e:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->f:Lcom/facebook/ads/internal/d/a;

    sget-object v3, Lcom/facebook/ads/internal/d/g;->a:Lcom/facebook/ads/internal/d/g;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/d/a;->a(Lcom/facebook/ads/internal/d/g;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_0
.end method

.method public b(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->f:Lcom/facebook/ads/internal/d/a;

    sget-object v2, Lcom/facebook/ads/internal/d/g;->b:Lcom/facebook/ads/internal/d/g;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/d/a;->a(Lcom/facebook/ads/internal/d/g;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/r;)V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->c:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->f:Lcom/facebook/ads/internal/d/a;

    sget-object v2, Lcom/facebook/ads/internal/d/g;->c:Lcom/facebook/ads/internal/d/g;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/d/a;->a(Lcom/facebook/ads/internal/d/g;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->b()V

    :cond_1
    return-void
.end method
