.class public abstract Lcom/facebook/ads/internal/h/c/b/a;
.super Landroid/widget/RelativeLayout;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/facebook/ads/internal/h/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/c/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/h/c/b/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/h/m;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/internal/h/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/h/m;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/b/a;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/h/c/b/a;->a(Lcom/facebook/ads/internal/h/m;)V

    return-void
.end method

.method protected getVideoView()Lcom/facebook/ads/internal/h/m;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-boolean v0, Lcom/facebook/ads/internal/h/c/b/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/b/a;->b:Lcom/facebook/ads/internal/h/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/b/a;->b:Lcom/facebook/ads/internal/h/m;

    return-object v0
.end method
