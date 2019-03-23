.class public Lcom/facebook/ads/internal/h/c;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/facebook/ads/internal/h/c/c/f;
.implements Lcom/facebook/ads/internal/h/c/c/h;
.implements Lcom/facebook/ads/internal/util/w$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/h/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/h/c/c/e;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/facebook/ads/internal/h/c$a;

.field private e:Lcom/facebook/ads/internal/util/w;

.field private f:Lcom/facebook/ads/internal/adapters/t;

.field private g:Lcom/facebook/ads/internal/i/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->n:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->o:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c;->g()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "useNativeCloseButton"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "viewType"

    sget-object v1, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "videoURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->h:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoMPD"

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->i:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoPlayReportURL"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getVideoPlayReportURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoTimeReportURL"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getVideoTimeReportURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "predefinedOrientationKey"

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "autoplay"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getAutoplay()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "videoSeekTime"

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v1}, Lcom/facebook/ads/internal/h/c/c/e;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c;)Z
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c;->i()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/internal/h/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Error occurred while loading fullscreen video activity."

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c/c/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/h/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/h/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c;->h()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/util/w;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->e:Lcom/facebook/ads/internal/util/w;

    return-object v0
.end method

.method private g()V
    .locals 8

    const/16 v7, 0x64

    const/16 v6, 0x11

    const/high16 v5, -0x1000000

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v5}, Lcom/facebook/ads/internal/h/c;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/h/c/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v2}, Lcom/facebook/ads/internal/h/c/c/e;->setRequestedVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/h/c/c/e;->setVideoStateChangeListener(Lcom/facebook/ads/internal/h/c/c/h;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/h/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->p:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->d()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/h/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/h/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/i/a;

    const/16 v1, 0x32

    new-instance v2, Lcom/facebook/ads/internal/h/c$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/h/c$1;-><init>(Lcom/facebook/ads/internal/h/c;)V

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/facebook/ads/internal/i/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/i/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->a()V

    new-instance v0, Lcom/facebook/ads/internal/h/c$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c$2;-><init>(Lcom/facebook/ads/internal/h/c;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/facebook/ads/internal/h/c$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c$3;-><init>(Lcom/facebook/ads/internal/h/c;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/internal/h/c$a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/h/c$a;-><init>(Lcom/facebook/ads/internal/h/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {v0, v7, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/h/c$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    new-instance v1, Lcom/facebook/ads/internal/h/c$4;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/h/c$4;-><init>(Lcom/facebook/ads/internal/h/c;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/c$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    new-instance v1, Lcom/facebook/ads/internal/h/c$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/h/c$5;-><init>(Lcom/facebook/ads/internal/h/c;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/c$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/t;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/t;-><init>(Lcom/facebook/ads/internal/h/c/c/f;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->f:Lcom/facebook/ads/internal/adapters/t;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->f:Lcom/facebook/ads/internal/adapters/t;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/t;->a()V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/c/c/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/h/c/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/h/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/h/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 1

    const-class v0, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c;->a(Ljava/lang/Class;)Z

    return-void
.end method

.method private i()Z
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/q;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/util/q$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/util/q$a;->c:Lcom/facebook/ads/internal/util/q$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->seekTo(I)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/h/c/c/g;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->c:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->e:Lcom/facebook/ads/internal/util/w;

    iget-object v4, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v4}, Lcom/facebook/ads/internal/h/c/c/e;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/util/w;->a(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/h/c$a;->a(Lcom/facebook/ads/internal/h/c$a;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->c:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->b:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->f:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v3, :cond_7

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_2
    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq p1, v3, :cond_3

    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    sget-object v4, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v4, :cond_4

    :goto_2
    invoke-static {v3, v0}, Lcom/facebook/ads/internal/h/c$a;->a(Lcom/facebook/ads/internal/h/c$a;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq p1, v3, :cond_6

    sget-object v3, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne p1, v3, :cond_0

    :cond_6
    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->n:Z

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/h/c$a;->a(Lcom/facebook/ads/internal/h/c$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->e:Lcom/facebook/ads/internal/util/w;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v3}, Lcom/facebook/ads/internal/h/c/c/e;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/util/w;->b(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->l:Z

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->o:Z

    return v0
.end method

.method public d()V
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c;->j:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/facebook/ads/internal/util/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c;->e:Lcom/facebook/ads/internal/util/w;

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c$a;->a(Lcom/facebook/ads/internal/h/c$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->start()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->p:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/h/c$6;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/h/c$6;-><init>(Lcom/facebook/ads/internal/h/c;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->d:Lcom/facebook/ads/internal/h/c$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c$a;->a(Lcom/facebook/ads/internal/h/c$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->pause()V

    return-void
.end method

.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c;->l:Z

    return v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/e;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaceholderView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVideoPlayReportURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTimeReportURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->g:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->b()V

    return-void
.end method

.method public setAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/c;->l:Z

    return-void
.end method

.method public setAutoplayOnMobile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/c;->m:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/c;->o:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoPlayReportURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c;->j:Ljava/lang/String;

    return-void
.end method

.method public setVideoTimeReportURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c;->k:Ljava/lang/String;

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/h/c/c/e;->setup(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c;->e()V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c;->a:Lcom/facebook/ads/internal/h/c/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/e;->setRequestedVolume(F)V

    return-void
.end method
