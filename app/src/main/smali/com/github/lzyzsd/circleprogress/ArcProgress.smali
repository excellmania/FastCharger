.class public Lcom/github/lzyzsd/circleprogress/ArcProgress;
.super Landroid/view/View;


# instance fields
.field private final A:F

.field private B:F

.field private final C:I

.field protected a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private f:F

.field private g:Ljava/lang/String;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:Ljava/lang/String;

.field private p:F

.field private q:F

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:F

.field private final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->c:Landroid/graphics/RectF;

    iput v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    const-string v0, "%"

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->r:I

    const/16 v0, 0x48

    const/16 v1, 0x6a

    const/16 v2, 0xb0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->s:I

    const/16 v0, 0x42

    const/16 v1, 0x91

    const/16 v2, 0xf1

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->t:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->z:I

    const/high16 v0, 0x43900000    # 288.0f

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->A:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v0, v1}, Lcom/github/lzyzsd/circleprogress/b;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->B:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v0, v1}, Lcom/github/lzyzsd/circleprogress/b;->a(Landroid/content/res/Resources;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->C:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/github/lzyzsd/circleprogress/b;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->B:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/github/lzyzsd/circleprogress/b;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->u:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/lzyzsd/circleprogress/b;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->v:F

    const-string v0, "%"

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/github/lzyzsd/circleprogress/b;->b(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->w:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/lzyzsd/circleprogress/b;->a(Landroid/content/res/Resources;F)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->x:F

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress:[I

    invoke-virtual {v0, p2, v1, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_finished_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->l:I

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_unfinished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->m:I

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->B:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_angle:I

    const/high16 v1, 0x43900000    # 288.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMax(I)V

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->x:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_suffix_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->e:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->y:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_suffix_text_padding:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->p:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_bottom_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->f:F

    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->g:Ljava/lang/String;

    return-void

    :cond_0
    sget v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress_arc_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArcAngle()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    return v0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomTextSize()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->f:F

    return v0
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->l:I

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->k:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixTextPadding()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->p:F

    return v0
.end method

.method public getSuffixTextSize()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->e:F

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->C:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->C:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->m:I

    return v0
.end method

.method public invalidate()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a()V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x43870000    # 270.0f

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    div-float/2addr v1, v7

    sub-float v2, v0, v1

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    mul-float v6, v0, v1

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->c:Landroid/graphics/RectF;

    iget v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->c:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v7

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    iget-object v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->e:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget-object v6, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v5

    iget v5, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->p:F

    add-float/2addr v0, v5

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->q:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    iget-object v3, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    div-float/2addr v2, v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->q:F

    invoke-virtual {p0, p1, p2}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "stroke_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    const-string v0, "suffix_text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->e:F

    const-string v0, "suffix_text_padding"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->p:F

    const-string v0, "bottom_text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->f:F

    const-string v0, "bottom_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->g:Ljava/lang/String;

    const-string v0, "text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setMax(I)V

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    const-string v0, "finished_stroke_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->l:I

    const-string v0, "unfinished_stroke_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->m:I

    const-string v0, "suffix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->a()V

    const-string v0, "saved_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "suffix_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "suffix_text_padding"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixTextPadding()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "bottom_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "bottom_text"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getFinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getUnfinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "arc_angle"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getArcAngle()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setArcAngle(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->n:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setBottomTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->f:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->l:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->k:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getMax()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->j:I

    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->d:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixTextPadding(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->p:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->e:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->i:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->h:F

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/lzyzsd/circleprogress/ArcProgress;->m:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->invalidate()V

    return-void
.end method
