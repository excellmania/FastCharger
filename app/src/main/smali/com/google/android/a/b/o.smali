.class public final Lcom/google/android/a/b/o;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/a/h/x;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/a/h/x;->d:Ljava/lang/String;

    const-string v1, "BRAVIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/a/b/o;->a(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, Lcom/google/android/a/b/o;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/google/android/a/b/o;->b(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    invoke-static {p0, v0}, Lcom/google/android/a/b/o;->c(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0}, Lcom/google/android/a/b/o;->d(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v2, v0

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v2, v0, :cond_0

    move v3, p1

    move p1, p2

    move p2, v3

    :cond_0
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lcom/google/android/a/h/x;->a(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    return-object v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lcom/google/android/a/h/x;->a(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private static a(Lcom/google/android/a/b/i;[Ljava/lang/String;Z)Z
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/a/h/x;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/google/android/a/b/i;->d:I

    const/16 v2, 0x500

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/a/b/i;->e:I

    const/16 v2, 0x2d0

    if-ge v0, v2, :cond_0

    :cond_2
    iget v0, p0, Lcom/google/android/a/b/i;->d:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/google/android/a/b/i;->e:I

    if-lez v0, :cond_6

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/h/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "video/x-unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "video/avc"

    :cond_3
    iget v2, p0, Lcom/google/android/a/b/i;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Lcom/google/android/a/b/i;->d:I

    iget v3, p0, Lcom/google/android/a/b/i;->e:I

    iget v4, p0, Lcom/google/android/a/b/i;->f:F

    float-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/a/p;->a(Ljava/lang/String;ZIID)Z

    move-result v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/a/b/i;->d:I

    iget v3, p0, Lcom/google/android/a/b/i;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/a/p;->a(Ljava/lang/String;ZII)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/a/b/i;->d:I

    iget v2, p0, Lcom/google/android/a/b/i;->e:I

    mul-int/2addr v0, v2

    invoke-static {}, Lcom/google/android/a/p;->a()I

    move-result v2

    if-gt v0, v2, :cond_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/a/b/k;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[I"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/a/b/o;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/a/b/o;->a(Ljava/util/List;[Ljava/lang/String;ZZII)[I

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;[Ljava/lang/String;ZZII)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/a/b/k;",
            ">;[",
            "Ljava/lang/String;",
            "ZZII)[I"
        }
    .end annotation

    const v1, 0x7fffffff

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/k;

    invoke-interface {v0}, Lcom/google/android/a/b/k;->a_()Lcom/google/android/a/b/i;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/google/android/a/b/o;->a(Lcom/google/android/a/b/i;[Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v5, Lcom/google/android/a/b/i;->d:I

    if-lez v0, :cond_3

    iget v0, v5, Lcom/google/android/a/b/i;->e:I

    if-lez v0, :cond_3

    if-lez p4, :cond_3

    if-lez p5, :cond_3

    iget v0, v5, Lcom/google/android/a/b/i;->d:I

    iget v6, v5, Lcom/google/android/a/b/i;->e:I

    invoke-static {p3, p4, p5, v0, v6}, Lcom/google/android/a/b/o;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v6

    iget v0, v5, Lcom/google/android/a/b/i;->d:I

    iget v7, v5, Lcom/google/android/a/b/i;->e:I

    mul-int/2addr v0, v7

    iget v7, v5, Lcom/google/android/a/b/i;->d:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    iget v5, v5, Lcom/google/android/a/b/i;->e:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f7ae148    # 0.98f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-lt v5, v6, :cond_3

    if-ge v0, v1, :cond_3

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-eq v1, v0, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/k;

    invoke-interface {v0}, Lcom/google/android/a/b/k;->a_()Lcom/google/android/a/b/i;

    move-result-object v0

    iget v4, v0, Lcom/google/android/a/b/i;->d:I

    if-lez v4, :cond_1

    iget v4, v0, Lcom/google/android/a/b/i;->e:I

    if-lez v4, :cond_1

    iget v4, v0, Lcom/google/android/a/b/i;->d:I

    iget v0, v0, Lcom/google/android/a/b/i;->e:I

    mul-int/2addr v0, v4

    if-le v0, v1, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/google/android/a/h/x;->a(Ljava/util/List;)[I

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static b(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static c(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private static d(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method
