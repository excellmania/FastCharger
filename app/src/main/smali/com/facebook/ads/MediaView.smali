.class public Lcom/facebook/ads/MediaView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private final c:Lcom/facebook/ads/internal/h/e;

.field private final d:Lcom/facebook/ads/internal/h/c;

.field private final e:Lcom/facebook/ads/internal/h/b/c;

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/MediaView;->a:Ljava/lang/String;

    const/16 v0, 0x33

    const/16 v1, 0x91

    const/16 v2, 0x96

    const/16 v3, 0xa5

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/MediaView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v1, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/facebook/ads/MediaView;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    iput-boolean v5, p0, Lcom/facebook/ads/MediaView;->h:Z

    sget v0, Lcom/facebook/ads/MediaView;->b:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/facebook/ads/internal/h/e;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/h/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/h/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/facebook/ads/internal/h/c;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/h/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    iget-boolean v2, p0, Lcom/facebook/ads/MediaView;->g:Z

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/c;->setAutoplay(Z)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    iget-boolean v2, p0, Lcom/facebook/ads/MediaView;->h:Z

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/c;->setAutoplayOnMobile(Z)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/c;->setVolume(F)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/h/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    new-instance v3, Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {p0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/ads/internal/h/b/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/h/b/c;->setChildSpacing(I)V

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v2, v5, v1, v5, v1}, Lcom/facebook/ads/internal/h/b/c;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/h/b/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    return v0
.end method

.method public setAutoplay(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->g:Z

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/h/c;->setAutoplay(Z)V

    return-void
.end method

.method public setAutoplayOnMobile(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/MediaView;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/h/c;->setAutoplayOnMobile(Z)V

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p1, v6}, Lcom/facebook/ads/NativeAd;->b(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->g:Z

    invoke-virtual {p1, v0}, Lcom/facebook/ads/NativeAd;->setMediaViewAutoplay(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/MediaView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v0, v1, v1}, Lcom/facebook/ads/internal/h/e;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/c;->setVideoURI(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/facebook/ads/MediaView;->f:Z

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/c;->getPlaceholderView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaView;->b(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/h/e;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/h/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/h/b/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/h/b/c;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    new-instance v1, Lcom/facebook/ads/internal/adapters/g;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->g()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/adapters/g;-><init>(Lcom/facebook/ads/internal/h/b/c;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/b/c;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaView;->a(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v3, v5}, Lcom/facebook/ads/internal/h/e;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/c;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v3, v5}, Lcom/facebook/ads/internal/h/b/c;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/facebook/ads/MediaView;->f:Z

    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    iget-boolean v4, p0, Lcom/facebook/ads/MediaView;->g:Z

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/c;->setAutoplay(Z)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    iget-boolean v4, p0, Lcom/facebook/ads/MediaView;->h:Z

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/c;->setAutoplayOnMobile(Z)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/c;->setVideoPlayReportURI(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/h/c;->setVideoTimeReportURI(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/h/c;->setVideoMPD(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/h/c;->setVideoURI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/c;->d()V

    if-eqz v0, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/util/l;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/c;->getPlaceholderView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/util/l;-><init>(Landroid/widget/ImageView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/l;->a([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/h/e;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->d:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/internal/h/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->e:Lcom/facebook/ads/internal/h/b/c;

    invoke-virtual {v1, v5}, Lcom/facebook/ads/internal/h/b/c;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/MediaView;->bringChildToFront(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/facebook/ads/MediaView;->f:Z

    new-instance v1, Lcom/facebook/ads/internal/util/l;

    iget-object v2, p0, Lcom/facebook/ads/MediaView;->c:Lcom/facebook/ads/internal/h/e;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/util/l;-><init>(Lcom/facebook/ads/internal/h/e;)V

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/l;->a([Ljava/lang/String;)V

    goto/16 :goto_1
.end method
