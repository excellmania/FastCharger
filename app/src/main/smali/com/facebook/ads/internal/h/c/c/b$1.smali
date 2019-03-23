.class Lcom/facebook/ads/internal/h/c/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/c/c/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/c/c/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/c/c/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/c/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/q;Lcom/google/android/a/m;)V
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/z;)Lcom/google/android/a/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/h/c/c/b;->b(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/z;)Lcom/google/android/a/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v3}, Lcom/google/android/a/h$b;->a(I)Lcom/google/android/a/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/h;)Lcom/google/android/a/h;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-interface {v0, v1}, Lcom/google/android/a/h;->a(Lcom/google/android/a/h$c;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    new-instance v1, Lcom/facebook/ads/internal/h/c/c/b$a;

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/h/c/c/b$a;-><init>(Lcom/facebook/ads/internal/h/c/c/b;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/facebook/ads/internal/h/c/c/b$a;)Lcom/facebook/ads/internal/h/c/c/b$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/h;

    move-result-object v0

    new-array v1, v3, [Lcom/google/android/a/z;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v3}, Lcom/facebook/ads/internal/h/c/c/b;->b(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/z;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/h/c/c/b;->c(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/z;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/google/android/a/h;->a([Lcom/google/android/a/z;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->d(Lcom/facebook/ads/internal/h/c/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    new-instance v1, Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/c/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->f(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/widget/MediaController;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->e(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->f(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/widget/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/c/c/b;->g(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/facebook/ads/internal/h/c/c/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->f(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/c/c/b;->c(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/z;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/h/c/c/b;->h(Lcom/facebook/ads/internal/h/c/c/b;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/google/android/a/h;->a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c/c/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/c/c/b;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Landroid/graphics/SurfaceTexture;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->e(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->i(Lcom/facebook/ads/internal/h/c/c/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c/c/b;->i(Lcom/facebook/ads/internal/h/c/c/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b$1;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/c/c/b;->j(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->setup(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
