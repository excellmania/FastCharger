.class public Lcom/google/android/a/q;
.super Lcom/google/android/a/o;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/q$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/a/aa;

.field private final d:Lcom/google/android/a/q$a;

.field private final e:J

.field private final f:I

.field private final g:I

.field private h:Landroid/view/Surface;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/v;Lcom/google/android/a/n;IJLandroid/os/Handler;Lcom/google/android/a/q$a;I)V
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/android/a/q;-><init>(Landroid/content/Context;Lcom/google/android/a/v;Lcom/google/android/a/n;IJLcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/q$a;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/v;Lcom/google/android/a/n;IJLcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/q$a;I)V
    .locals 9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/a/o;-><init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/o$b;)V

    new-instance v2, Lcom/google/android/a/aa;

    invoke-direct {v2, p1}, Lcom/google/android/a/aa;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/a/q;->c:Lcom/google/android/a/aa;

    iput p4, p0, Lcom/google/android/a/q;->f:I

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p5

    iput-wide v2, p0, Lcom/google/android/a/q;->e:J

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/a/q;->d:Lcom/google/android/a/q$a;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/a/q;->g:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/a/q;->k:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/a/q;->q:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/a/q;->r:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/a/q;->t:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/a/q;->p:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/a/q;->u:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/a/q;->v:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/google/android/a/q;->x:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/q;)Lcom/google/android/a/q$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/q;->d:Lcom/google/android/a/q$a;

    return-object v0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/q;->d:Lcom/google/android/a/q$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/q;->u:I

    iget v1, p0, Lcom/google/android/a/q;->q:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/a/q;->v:I

    iget v1, p0, Lcom/google/android/a/q;->r:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/a/q;->w:I

    iget v1, p0, Lcom/google/android/a/q;->s:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/a/q;->x:F

    iget v1, p0, Lcom/google/android/a/q;->t:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/google/android/a/q;->q:I

    iget v3, p0, Lcom/google/android/a/q;->r:I

    iget v4, p0, Lcom/google/android/a/q;->s:I

    iget v5, p0, Lcom/google/android/a/q;->t:F

    iget-object v6, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/a/q$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/q$1;-><init>(Lcom/google/android/a/q;IIIF)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v2, p0, Lcom/google/android/a/q;->u:I

    iput v3, p0, Lcom/google/android/a/q;->v:I

    iput v4, p0, Lcom/google/android/a/q;->w:I

    iput v5, p0, Lcom/google/android/a/q;->x:F

    goto :goto_0
.end method

.method private a(Landroid/media/MediaFormat;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x2

    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_2

    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_3

    const-string v4, "max-width"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "max-width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3
    const-string v4, "mime"

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int v0, v1, v0

    const-string v1, "max-input-size"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    const-string v6, "video/3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "video/mp4v-es"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :sswitch_3
    const-string v6, "video/x-vnd.on2.vp8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "video/hevc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_1

    :sswitch_5
    const-string v6, "video/x-vnd.on2.vp9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x5

    goto :goto_1

    :pswitch_1
    const-string v3, "BRAVIA 4K 2015"

    sget-object v4, Lcom/google/android/a/h/x;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    move v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_2
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_2

    :pswitch_3
    mul-int/2addr v0, v1

    move v1, v0

    move v0, v3

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_0
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_1
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/q;->i:Z

    invoke-virtual {p0}, Lcom/google/android/a/q;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/a/q;->m()V

    invoke-virtual {p0}, Lcom/google/android/a/q;->j()V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/q;->d:Lcom/google/android/a/q$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/a/q;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/a/q$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/a/q$2;-><init>(Lcom/google/android/a/q;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/q;->i:Z

    goto :goto_0
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/q;->d:Lcom/google/android/a/q$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/q;->m:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/a/q;->m:I

    iget-wide v4, p0, Lcom/google/android/a/q;->l:J

    sub-long v4, v0, v4

    iget-object v3, p0, Lcom/google/android/a/q;->b:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/a/q$3;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/google/android/a/q$3;-><init>(Lcom/google/android/a/q;IJ)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/q;->m:I

    iput-wide v0, p0, Lcom/google/android/a/q;->l:J

    goto :goto_0
.end method


# virtual methods
.method protected a(IJZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/a/o;->a(IJZ)V

    if-eqz p4, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/q;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/q;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/q;->k:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/q;->c:Lcom/google/android/a/aa;

    invoke-virtual {v0}, Lcom/google/android/a/aa;->a()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/a/q;->a(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/a/o;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(J)V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/a/o;->a(J)V

    iput-boolean v0, p0, Lcom/google/android/a/q;->j:Z

    iput v0, p0, Lcom/google/android/a/q;->n:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/q;->k:J

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;I)V
    .locals 2

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    iget-object v0, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->g:I

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;IJ)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/android/a/q;->a()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    iget-object v0, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/q;->j:Z

    invoke-direct {p0}, Lcom/google/android/a/q;->i()V

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-left"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iput v0, p0, Lcom/google/android/a/q;->q:I

    if-eqz v1, :cond_4

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iput v0, p0, Lcom/google/android/a/q;->r:I

    iget v0, p0, Lcom/google/android/a/q;->p:F

    iput v0, p0, Lcom/google/android/a/q;->t:F

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/a/q;->o:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/q;->o:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/a/q;->q:I

    iget v1, p0, Lcom/google/android/a/q;->r:I

    iput v1, p0, Lcom/google/android/a/q;->q:I

    iput v0, p0, Lcom/google/android/a/q;->r:I

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/a/q;->t:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/q;->t:F

    :cond_1
    :goto_3
    iget v0, p0, Lcom/google/android/a/q;->f:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/google/android/a/q;->o:I

    iput v0, p0, Lcom/google/android/a/q;->s:I

    goto :goto_3
.end method

.method protected a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 2

    invoke-direct {p0, p3, p2}, Lcom/google/android/a/q;->a(Landroid/media/MediaFormat;Z)V

    iget-object v0, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected a(Lcom/google/android/a/s;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/a/o;->a(Lcom/google/android/a/s;)V

    iget-object v0, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget v0, v0, Lcom/google/android/a/r;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Lcom/google/android/a/q;->p:F

    iget-object v0, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget v0, v0, Lcom/google/android/a/r;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/google/android/a/q;->o:I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget v0, v0, Lcom/google/android/a/r;->m:F

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget v0, v0, Lcom/google/android/a/r;->l:I

    goto :goto_1
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 11

    if-eqz p9, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/q;->a(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/q;->n:I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/a/q;->j:Z

    if-nez v2, :cond_2

    sget v2, Lcom/google/android/a/h/x;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/a/q;->a(Landroid/media/MediaCodec;IJ)V

    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/q;->n:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/q;->c(Landroid/media/MediaCodec;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/a/q;->u()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, p3

    move-object/from16 v0, p7

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v4, p1

    sub-long v2, v4, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/google/android/a/q;->c:Lcom/google/android/a/aa;

    move-object/from16 v0, p7

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9, v2, v3}, Lcom/google/android/a/aa;->a(JJ)J

    move-result-wide v2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, -0x7530

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/q;->b(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    sget v6, Lcom/google/android/a/h/x;->a:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_5

    const-wide/32 v6, 0xc350

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/a/q;->a(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/q;->n:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x7530

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    const-wide/16 v2, 0x2af8

    cmp-long v2, v4, v2

    if-lez v2, :cond_6

    const-wide/16 v2, 0x2710

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    :try_start_0
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    move-object/from16 v0, p5

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/q;->c(Landroid/media/MediaCodec;I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/q;->n:I

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/a/r;Lcom/google/android/a/r;)Z
    .locals 2

    iget-object v0, p4, Lcom/google/android/a/r;->b:Ljava/lang/String;

    iget-object v1, p3, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p3, Lcom/google/android/a/r;->h:I

    iget v1, p4, Lcom/google/android/a/r;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p3, Lcom/google/android/a/r;->i:I

    iget v1, p4, Lcom/google/android/a/r;->i:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/a/n;Lcom/google/android/a/r;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/a/h/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "video/x-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1, v0}, Lcom/google/android/a/n;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected b(Landroid/media/MediaCodec;I)V
    .locals 3

    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    iget-object v0, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->h:I

    iget v0, p0, Lcom/google/android/a/q;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/q;->m:I

    iget v0, p0, Lcom/google/android/a/q;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/q;->n:I

    iget-object v0, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v1, p0, Lcom/google/android/a/q;->n:I

    iget-object v2, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v2, v2, Lcom/google/android/a/c;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/a/c;->i:I

    iget v0, p0, Lcom/google/android/a/q;->m:I

    iget v1, p0, Lcom/google/android/a/q;->g:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/q;->z()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/a/o;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/q;->m:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/q;->l:J

    return-void
.end method

.method protected c(Landroid/media/MediaCodec;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/a/q;->a()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    iget-object v0, p0, Lcom/google/android/a/q;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->f:I

    iput-boolean v2, p0, Lcom/google/android/a/q;->j:Z

    invoke-direct {p0}, Lcom/google/android/a/q;->i()V

    return-void
.end method

.method protected d()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/q;->k:J

    invoke-direct {p0}, Lcom/google/android/a/q;->z()V

    invoke-super {p0}, Lcom/google/android/a/o;->d()V

    return-void
.end method

.method protected f()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    invoke-super {p0}, Lcom/google/android/a/o;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/a/q;->j:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/q;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/q;->n()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iput-wide v6, p0, Lcom/google/android/a/q;->k:J

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/a/q;->k:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/a/q;->k:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iput-wide v6, p0, Lcom/google/android/a/q;->k:J

    move v0, v1

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/q;->q:I

    iput v0, p0, Lcom/google/android/a/q;->r:I

    iput v1, p0, Lcom/google/android/a/q;->t:F

    iput v1, p0, Lcom/google/android/a/q;->p:F

    iput v0, p0, Lcom/google/android/a/q;->u:I

    iput v0, p0, Lcom/google/android/a/q;->v:I

    iput v1, p0, Lcom/google/android/a/q;->x:F

    iget-object v0, p0, Lcom/google/android/a/q;->c:Lcom/google/android/a/aa;

    invoke-virtual {v0}, Lcom/google/android/a/aa;->b()V

    invoke-super {p0}, Lcom/google/android/a/o;->g()V

    return-void
.end method

.method protected k()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/a/o;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/q;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
