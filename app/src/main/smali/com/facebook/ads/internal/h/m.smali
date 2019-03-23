.class public Lcom/facebook/ads/internal/h/m;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/facebook/ads/internal/h/c/c/f;
.implements Lcom/facebook/ads/internal/h/c/c/h;
.implements Lcom/facebook/ads/internal/util/w$a;


# static fields
.field private static final g:Lcom/facebook/ads/internal/h/c/a/c;

.field private static final h:Lcom/facebook/ads/internal/h/c/a/b;

.field private static final i:Lcom/facebook/ads/internal/h/c/a/a;

.field private static final j:Lcom/facebook/ads/internal/h/c/a/d;


# instance fields
.field private final a:Lcom/facebook/ads/internal/h/c/c/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/e/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/e/b",
            "<",
            "Lcom/facebook/ads/internal/e/c;",
            "Lcom/facebook/ads/internal/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/h/c/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/h/c/a/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/h/c/a/c;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/h/m;->g:Lcom/facebook/ads/internal/h/c/a/c;

    new-instance v0, Lcom/facebook/ads/internal/h/c/a/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/h/c/a/b;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/h/m;->h:Lcom/facebook/ads/internal/h/c/a/b;

    new-instance v0, Lcom/facebook/ads/internal/h/c/a/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/h/c/a/a;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/h/m;->i:Lcom/facebook/ads/internal/h/c/a/a;

    new-instance v0, Lcom/facebook/ads/internal/h/c/a/d;

    invoke-direct {v0}, Lcom/facebook/ads/internal/h/c/a/d;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/h/m;->j:Lcom/facebook/ads/internal/h/c/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/h/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/h/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/m;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/m;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/m;->e:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/m;->f:Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/h/c/c/e;->setRequestedVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/h/c/c/e;->setVideoStateChangeListener(Lcom/facebook/ads/internal/h/c/c/h;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/h/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/m;->k:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/e/b;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/c/c/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/h/c/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/m;)Lcom/facebook/ads/internal/e/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/m;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/h/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g()Lcom/facebook/ads/internal/h/c/a/d;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/m;->j:Lcom/facebook/ads/internal/h/c/a/d;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->seekTo(I)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/h/c/c/g;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->c:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    sget-object v1, Lcom/facebook/ads/internal/h/m;->g:Lcom/facebook/ads/internal/h/c/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/a;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/m;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/m;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/m;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    sget-object v1, Lcom/facebook/ads/internal/h/m;->h:Lcom/facebook/ads/internal/h/c/a/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/m;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    sget-object v1, Lcom/facebook/ads/internal/h/m;->i:Lcom/facebook/ads/internal/h/c/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/a;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/m;->e:Z

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/m;->f:Z

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->pause()V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->start()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->k:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/h/m$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/h/m$1;-><init>(Lcom/facebook/ads/internal/h/m;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->a()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/internal/e/b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/internal/e/b",
            "<",
            "Lcom/facebook/ads/internal/e/c;",
            "Lcom/facebook/ads/internal/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->b:Lcom/facebook/ads/internal/e/b;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/internal/h/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getState()Lcom/facebook/ads/internal/h/c/c/g;

    move-result-object v0

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->a()V

    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/m;->e:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setControlsAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/m;->f:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setFullScreen(Z)V

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/h/c/b/a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/m;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/h/c/b/a;->b(Lcom/facebook/ads/internal/h/m;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setup(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/m;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/m;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setRequestedVolume(F)V

    return-void
.end method
