.class public Lcom/facebook/ads/internal/i/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/i/a$b;,
        Lcom/facebook/ads/internal/i/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private final d:Landroid/view/View;

.field private final e:I

.field private final f:Lcom/facebook/ads/internal/i/a$a;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/lang/Runnable;

.field private final i:Z

.field private j:Lcom/facebook/ads/internal/i/b;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/i/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/facebook/ads/internal/i/a$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/ads/internal/i/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/i/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZLcom/facebook/ads/internal/i/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/i/a;->b:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/internal/i/a;->c:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a;->g:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/i/a$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/a$b;-><init>(Lcom/facebook/ads/internal/i/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a;->h:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->a:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a;->j:Lcom/facebook/ads/internal/i/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/a;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/view/View;

    iput p2, p0, Lcom/facebook/ads/internal/i/a;->e:I

    iput-object p4, p0, Lcom/facebook/ads/internal/i/a;->f:Lcom/facebook/ads/internal/i/a$a;

    iput-boolean p3, p0, Lcom/facebook/ads/internal/i/a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)Lcom/facebook/ads/internal/i/b;
    .locals 12

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "adView is null."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "adView has no parent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->d:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "adView window is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "adView is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->f:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView has invisible dimensions (w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->g:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 v0, 0x0

    const-string v1, "adView is too transparent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->h:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v0, 0x2

    new-array v3, v0, [I

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v0, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    add-int/2addr v9, v1

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/2addr v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v0, v6

    int-to-float v0, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    mul-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v0, v6

    :cond_7
    invoke-static {v4}, Lcom/facebook/ads/internal/h;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {v6, p0}, Lcom/facebook/ads/internal/i/a;->a(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v1, 0x0

    const-string v2, "adView is obstructed by another view."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->i:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const-string v1, "Cannot get location on screen."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/i/b;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->g:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;)V

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x0

    aget v6, v3, v6

    if-ltz v6, :cond_9

    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int/2addr v6, v7

    if-ge v6, v1, :cond_a

    :cond_9
    const/4 v1, 0x0

    const-string v2, "adView is not fully on screen horizontally."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->j:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    int-to-double v6, v2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    int-to-double v10, p1

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    const/4 v6, 0x1

    aget v6, v3, v6

    if-gez v6, :cond_b

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v1, :cond_b

    const/4 v1, 0x0

    const-string v2, "adView is not visible from the top."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->k:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x1

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_c

    const/4 v1, 0x0

    const-string v2, "adView is not visible from the bottom."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->l:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    invoke-static {v4}, Lcom/facebook/ads/internal/util/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    const-string v2, "Screen is not turned on."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->m:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x1

    const-string v2, "adView is visible."

    invoke-static {p0, v1, v2}, Lcom/facebook/ads/internal/i/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/internal/i/b;

    sget-object v2, Lcom/facebook/ads/internal/i/c;->b:Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/b;-><init>(Lcom/facebook/ads/internal/i/c;F)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/a;Lcom/facebook/ads/internal/i/b;)Lcom/facebook/ads/internal/i/b;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/a;->j:Lcom/facebook/ads/internal/i/b;

    return-object p1
.end method

.method private static a(Landroid/view/View;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static a(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/ads/internal/i/a;->b(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v0}, Lcom/facebook/ads/internal/i/a;->a(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->f:Lcom/facebook/ads/internal/i/a$a;

    return-object v0
.end method

.method private static b(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/ads/internal/i/a;->c(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/facebook/ads/internal/i/a;->b(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/i/a;->e:I

    return v0
.end method

.method private static c(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->j:Lcom/facebook/ads/internal/i/b;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/i/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/i/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/a;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/i/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/i/a;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/i/a;->c:I

    return v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/i/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a;->h:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/ads/internal/i/a;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/i/a;->b:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/i/a;->c:I

    return-void
.end method

.method public c()Lcom/facebook/ads/internal/i/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->j:Lcom/facebook/ads/internal/i/b;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->k:Ljava/util/Map;

    return-object v0
.end method
