.class final Lcom/facebook/ads/internal/i/a$b;
.super Lcom/facebook/ads/internal/util/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/util/y",
        "<",
        "Lcom/facebook/ads/internal/i/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/i/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/util/y;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->a(Lcom/facebook/ads/internal/i/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->b(Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/a$a;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->c(Lcom/facebook/ads/internal/i/a;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/i/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/i/b;->a()Z

    move-result v6

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->d(Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/b;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->d(Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    invoke-static {v0, v5}, Lcom/facebook/ads/internal/i/a;->a(Lcom/facebook/ads/internal/i/a;Lcom/facebook/ads/internal/i/b;)Lcom/facebook/ads/internal/i/b;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/i/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->e(Lcom/facebook/ads/internal/i/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->e(Lcom/facebook/ads/internal/i/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->e(Lcom/facebook/ads/internal/i/a;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v4}, Lcom/facebook/ads/internal/i/a$a;->a()V

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->f(Lcom/facebook/ads/internal/i/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->i(Lcom/facebook/ads/internal/i/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->g(Lcom/facebook/ads/internal/i/a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->h(Lcom/facebook/ads/internal/i/a;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lcom/facebook/ads/internal/i/a$a;->b()V

    goto :goto_2
.end method
