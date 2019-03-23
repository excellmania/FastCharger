.class public Lcom/facebook/ads/internal/util/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/util/w$a;,
        Lcom/facebook/ads/internal/util/w$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/util/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/util/w$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/facebook/ads/internal/b/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/g;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/internal/util/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/internal/util/w$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->f:I

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->g:I

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->h:I

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->j:F

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->k:F

    iput-object p1, p0, Lcom/facebook/ads/internal/util/w;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/util/w;->b:Lcom/facebook/ads/internal/util/g;

    iput-object p3, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    iput-object p4, p0, Lcom/facebook/ads/internal/util/w;->d:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/util/w$1;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/internal/util/w$1;-><init>(Lcom/facebook/ads/internal/util/w;DDDZLcom/facebook/ads/internal/util/g;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/facebook/ads/internal/b/a;

    check-cast p3, Landroid/view/View;

    invoke-direct {v0, p1, p3, v10}, Lcom/facebook/ads/internal/b/a;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/util/w;->e:Lcom/facebook/ads/internal/b/a;

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/util/w$a;->a()Z

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/util/w$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/util/x;->a(Ljava/util/Map;ZZ)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/util/w;->a(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/util/w;->b(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/util/w;->c(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/util/w;->d(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/util/w;->e(Ljava/util/Map;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/util/w;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/util/w;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(IZ)V
    .locals 6

    const/4 v4, 0x0

    int-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->e:Lcom/facebook/ads/internal/b/a;

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->f:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/b/a;->a(D)V

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/x;->a(Landroid/content/Context;)F

    move-result v0

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->i:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->i:F

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->j:F

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->j:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    :cond_2
    iput v0, p0, Lcom/facebook/ads/internal/util/w;->j:F

    :cond_3
    iget v1, p0, Lcom/facebook/ads/internal/util/w;->k:F

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->k:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    :cond_4
    iput v0, p0, Lcom/facebook/ads/internal/util/w;->k:F

    :cond_5
    iget v1, p0, Lcom/facebook/ads/internal/util/w;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->h:I

    iput p1, p0, Lcom/facebook/ads/internal/util/w;->f:I

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->g:I

    sub-int v1, p1, v1

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_7

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->b:Lcom/facebook/ads/internal/util/g;

    sget-object v2, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/internal/util/w;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/util/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    iget v1, p0, Lcom/facebook/ads/internal/util/w;->g:I

    add-int/lit16 v1, v1, 0x1388

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/internal/util/w;->h:I

    iput v4, p0, Lcom/facebook/ads/internal/util/w;->i:F

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->j:F

    iput v0, p0, Lcom/facebook/ads/internal/util/w;->k:F

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->e:Lcom/facebook/ads/internal/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/a;->a()V

    :cond_7
    if-eqz p2, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/util/w;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "time"

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->b:Lcom/facebook/ads/internal/util/g;

    sget-object v2, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/util/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exoplayer"

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/util/w$a;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "prep"

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/util/w$a;->getInitialBufferTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->e:Lcom/facebook/ads/internal/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/a;->b()Lcom/facebook/ads/internal/b/c;

    move-result-object v0

    const-string v1, "vwa"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c;->a()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vwm"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/high16 v2, 0x447a0000    # 1000.0f

    const-string v0, "ptime"

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->g:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->g:I

    add-int/lit16 v1, v1, 0x1388

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/util/w$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vlm"

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->j:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vlmax"

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->k:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vla"

    iget v1, p0, Lcom/facebook/ads/internal/util/w;->i:F

    iget v2, p0, Lcom/facebook/ads/internal/util/w;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "vlm"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vlmax"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vla"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/util/w$a;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v1, "pt"

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pl"

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ph"

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/util/w$a;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pw"

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->c:Lcom/facebook/ads/internal/util/w$a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/util/w$a;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "vph"

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpw"

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/facebook/ads/internal/util/w$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/util/w;->a(IZ)V

    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/util/w;->a(IZ)V

    return-void
.end method
