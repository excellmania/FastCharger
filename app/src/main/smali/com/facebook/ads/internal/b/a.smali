.class public final Lcom/facebook/ads/internal/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/facebook/ads/internal/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/b/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/a;->a:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    new-instance v3, Lcom/facebook/ads/internal/b/d;

    invoke-direct {v3, v0}, Lcom/facebook/ads/internal/b/d;-><init>(Lcom/facebook/ads/internal/b/b;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/b/c;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/b/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    return-void
.end method

.method public a(D)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/b/e;->a(Landroid/view/View;Landroid/content/Context;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/facebook/ads/internal/b/c;->a(DD)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/b/d;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/facebook/ads/internal/b/d;->a(DD)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lcom/facebook/ads/internal/b/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/a;->d:Lcom/facebook/ads/internal/b/c;

    return-object v0
.end method
