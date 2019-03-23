.class public Lcom/google/android/a/m;
.super Lcom/google/android/a/o;

# interfaces
.implements Lcom/google/android/a/l;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/m$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/a/m$a;

.field private final d:Lcom/google/android/a/a/b;

.field private e:Z

.field private f:Landroid/media/MediaFormat;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/v;Lcom/google/android/a/n;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/a/m;-><init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;Z)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/m;-><init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/a/m;-><init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;Lcom/google/android/a/a/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;Lcom/google/android/a/a/a;I)V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/a/v;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/a/m;-><init>([Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;Lcom/google/android/a/a/a;I)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/m$a;Lcom/google/android/a/a/a;I)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/a/o;-><init>([Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/o$b;)V

    iput-object p6, p0, Lcom/google/android/a/m;->c:Lcom/google/android/a/m$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/m;->h:I

    new-instance v0, Lcom/google/android/a/a/b;

    invoke-direct {v0, p7, p8}, Lcom/google/android/a/a/b;-><init>(Lcom/google/android/a/a/a;I)V

    iput-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/m;)Lcom/google/android/a/m$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/m;->c:Lcom/google/android/a/m$a;

    return-object v0
.end method

.method private a(IJJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->c:Lcom/google/android/a/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/m$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/m$3;-><init>(Lcom/google/android/a/m;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/a/b$d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->c:Lcom/google/android/a/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/m$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/m$1;-><init>(Lcom/google/android/a/m;Lcom/google/android/a/a/b$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/a/b$f;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->c:Lcom/google/android/a/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/m$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/m$2;-><init>(Lcom/google/android/a/m;Lcom/google/android/a/a/b$f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {p0}, Lcom/google/android/a/m;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/b;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/a/m;->j:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/a/m;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/m;->j:Z

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/m;->i:J

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/a/m;->i:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/a/n;Ljava/lang/String;Z)Lcom/google/android/a/e;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/a/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/a/n;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/m;->e:Z

    new-instance v0, Lcom/google/android/a/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/m;->e:Z

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/a/o;->a(Lcom/google/android/a/n;Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/a/o;->a(ILjava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/b;->a(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    check-cast p2, Landroid/media/PlaybackParams;

    invoke-virtual {v0, p2}, Lcom/google/android/a/a/b;->a(Landroid/media/PlaybackParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/a/o;->a(J)V

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->j()V

    iput-wide p1, p0, Lcom/google/android/a/m;->i:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/m;->j:Z

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/a/m;->f:Landroid/media/MediaFormat;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/a/m;->f:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/google/android/a/m;->f:Landroid/media/MediaFormat;

    :cond_0
    const-string v1, "channel-count"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sample-rate"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    iget v4, p0, Lcom/google/android/a/m;->g:I

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;III)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "audio/raw"

    goto :goto_1
.end method

.method protected a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "mime"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/a/m;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const-string v1, "mime"

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/a/m;->f:Landroid/media/MediaFormat;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p3, v3, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v3, p0, Lcom/google/android/a/m;->f:Landroid/media/MediaFormat;

    goto :goto_0
.end method

.method protected a(Lcom/google/android/a/s;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/a/o;->a(Lcom/google/android/a/s;)V

    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget-object v1, v1, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget v0, v0, Lcom/google/android/a/r;->p:I

    :goto_0
    iput v0, p0, Lcom/google/android/a/m;->g:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/a/m;->e:Z

    if-eqz v0, :cond_0

    iget v0, p7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p9, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, p0, Lcom/google/android/a/m;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->g:I

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->f()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    iget v0, p0, Lcom/google/android/a/m;->h:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    iget v1, p0, Lcom/google/android/a/m;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/b;->a(I)I

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/m;->k:Z
    :try_end_0
    .catch Lcom/google/android/a/a/b$d; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/google/android/a/m;->u()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->e()V

    :cond_2
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    iget v2, p7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v1, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/a/a/b;->a(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/a/m;->l:J
    :try_end_1
    .catch Lcom/google/android/a/a/b$f; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/a/m;->i()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/a/m;->j:Z

    :cond_3
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p5, p8, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, p0, Lcom/google/android/a/m;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->f:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/m;->h:I

    iget v0, p0, Lcom/google/android/a/m;->h:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/m;->a(I)V
    :try_end_2
    .catch Lcom/google/android/a/a/b$d; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/a/m;->a(Lcom/google/android/a/a/b$d;)V

    new-instance v1, Lcom/google/android/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/a/m;->k:Z

    iget-object v1, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v1}, Lcom/google/android/a/a/b;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/a/m;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/a/m;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/m;->u()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/m;->l:J

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    const-wide/16 v2, -0x1

    :goto_3
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->c()I

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/m;->a(IJJ)V

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/a/m;->a(Lcom/google/android/a/a/b$f;)V

    new-instance v1, Lcom/google/android/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected a(Lcom/google/android/a/n;Lcom/google/android/a/r;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/a/h/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "audio/x-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/a/m;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/a/n;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-interface {p1, v1, v0}, Lcom/google/android/a/n;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0, p1}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b()Lcom/google/android/a/l;
    .locals 0

    return-object p0
.end method

.method protected c()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/a/o;->c()V

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->e()V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->i()V

    invoke-super {p0}, Lcom/google/android/a/o;->d()V

    return-void
.end method

.method protected e()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/a/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/a/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/m;->h:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/a/o;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/a/o;->g()V

    throw v0
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/m;->d:Lcom/google/android/a/a/b;

    invoke-virtual {v0}, Lcom/google/android/a/a/b;->g()V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method
