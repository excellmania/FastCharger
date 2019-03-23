.class public Lcn/fanrunqi/waveprogress/WaveProgressView;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/graphics/Paint;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:F

.field private r:I

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/fanrunqi/waveprogress/WaveProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/fanrunqi/waveprogress/WaveProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->f:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    const-string v0, "#5be4ef"

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->h:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->k:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->l:Ljava/lang/String;

    const/16 v0, 0x29

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->m:I

    const/16 v0, 0x64

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    const/16 v0, 0xa

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->r:I

    new-instance v0, Lcn/fanrunqi/waveprogress/WaveProgressView$1;

    invoke-direct {v0, p0}, Lcn/fanrunqi/waveprogress/WaveProgressView$1;-><init>(Lcn/fanrunqi/waveprogress/WaveProgressView;)V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->s:Landroid/os/Handler;

    invoke-direct {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->a()V

    return-void
.end method

.method static synthetic a(Lcn/fanrunqi/waveprogress/WaveProgressView;)I
    .locals 1

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->r:I

    return v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "background is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->s:Landroid/os/Handler;

    const/16 v1, 0x777

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->m:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->n:I

    iget v6, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->o:I

    sub-int/2addr v2, v6

    mul-int/2addr v0, v2

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->n:I

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    iget v6, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    sub-float v0, v6, v0

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    :cond_0
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    sub-float v2, v12, v2

    iget v6, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    div-int/2addr v0, v2

    add-int/lit8 v6, v0, 0x1

    move v0, v1

    move v2, v1

    :goto_0
    mul-int/lit8 v7, v6, 0x3

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    add-int/lit8 v9, v2, 0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->f:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    add-int/lit8 v11, v2, 0x2

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v7, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    add-int/lit8 v9, v2, 0x3

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->f:F

    add-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    add-int/lit8 v11, v2, 0x4

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    iget v6, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->i:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    add-float/2addr v0, v2

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v2, v6

    rem-float/2addr v0, v2

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->q:F

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    int-to-float v2, v2

    iget v6, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    int-to-float v2, v2

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->c:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->c:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->k:Ljava/lang/String;

    iget v1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->j:Landroid/graphics/Paint;

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v4
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->f:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->g:F

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->o:I

    iput-object p2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->l:Ljava/lang/String;

    iput p2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->m:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->a:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->p:F

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->n:I

    return-void
.end method

.method public setWaveColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->h:Ljava/lang/String;

    return-void
.end method

.method public setmWaveSpeed(I)V
    .locals 0

    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->i:I

    return-void
.end method
