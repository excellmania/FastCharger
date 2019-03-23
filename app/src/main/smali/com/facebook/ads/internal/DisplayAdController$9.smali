.class Lcom/facebook/ads/internal/DisplayAdController$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/internal/d/d;Lcom/facebook/ads/internal/d/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/r;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/ads/internal/d/a;

.field final synthetic d:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/r;JLcom/facebook/ads/internal/d/a;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Lcom/facebook/ads/internal/adapters/r;

    iput-wide p3, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:J

    iput-object p5, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->c:Lcom/facebook/ads/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Lcom/facebook/ads/internal/adapters/r;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Lcom/facebook/ads/internal/adapters/r;

    instance-of v0, v0, Lcom/facebook/ads/internal/adapters/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->k(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Lcom/facebook/ads/internal/adapters/r;

    check-cast v0, Lcom/facebook/ads/internal/adapters/p;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/p;->C()Lcom/facebook/ads/internal/adapters/e;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/p;->a(Lcom/facebook/ads/internal/adapters/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Failed. Ad request timed out"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    const-string v2, "timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->c:Lcom/facebook/ads/internal/d/a;

    sget-object v3, Lcom/facebook/ads/internal/d/g;->a:Lcom/facebook/ads/internal/d/g;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/d/a;->a(Lcom/facebook/ads/internal/d/g;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method
