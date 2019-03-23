.class public abstract Lcom/google/android/a/o;
.super Lcom/google/android/a/w;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/o$a;,
        Lcom/google/android/a/o$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field public final a:Lcom/google/android/a/c;

.field protected final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/a/n;

.field private final d:Lcom/google/android/a/d/b;

.field private final e:Z

.field private final f:Lcom/google/android/a/u;

.field private final g:Lcom/google/android/a/s;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/media/MediaCodec$BufferInfo;

.field private final j:Lcom/google/android/a/o$b;

.field private final k:Z

.field private l:Lcom/google/android/a/r;

.field private m:Lcom/google/android/a/d/a;

.field private n:Landroid/media/MediaCodec;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:[Ljava/nio/ByteBuffer;

.field private v:[Ljava/nio/ByteBuffer;

.field private w:J

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/o$b;)V
    .locals 7

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

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/o;-><init>([Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/o$b;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/a/v;Lcom/google/android/a/n;Lcom/google/android/a/d/b;ZLandroid/os/Handler;Lcom/google/android/a/o$b;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/a/w;-><init>([Lcom/google/android/a/v;)V

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-static {p2}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/n;

    iput-object v0, p0, Lcom/google/android/a/o;->c:Lcom/google/android/a/n;

    iput-object p3, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    iput-boolean p4, p0, Lcom/google/android/a/o;->e:Z

    iput-object p5, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/android/a/o;->j:Lcom/google/android/a/o$b;

    invoke-static {}, Lcom/google/android/a/o;->B()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/a/o;->k:Z

    new-instance v0, Lcom/google/android/a/c;

    invoke-direct {v0}, Lcom/google/android/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    new-instance v0, Lcom/google/android/a/u;

    invoke-direct {v0, v1}, Lcom/google/android/a/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    new-instance v0, Lcom/google/android/a/s;

    invoke-direct {v0}, Lcom/google/android/a/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/o;->g:Lcom/google/android/a/s;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    iput v1, p0, Lcom/google/android/a/o;->B:I

    iput v1, p0, Lcom/google/android/a/o;->C:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private A()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/o;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/o;->m()V

    invoke-virtual {p0}, Lcom/google/android/a/o;->j()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/o;->H:Z

    invoke-virtual {p0}, Lcom/google/android/a/o;->h()V

    goto :goto_0
.end method

.method private static B()Z
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "foster"

    sget-object v1, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/a/h/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/u;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    invoke-virtual {v0}, Lcom/google/android/a/d;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v3, p1

    aput v3, v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/a/o;)Lcom/google/android/a/o$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/o;->j:Lcom/google/android/a/o$b;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/o;->w:J

    iput v2, p0, Lcom/google/android/a/o;->x:I

    iput v2, p0, Lcom/google/android/a/o;->y:I

    iput-boolean v4, p0, Lcom/google/android/a/o;->J:Z

    iput-boolean v3, p0, Lcom/google/android/a/o;->I:Z

    iget-object v0, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/google/android/a/o;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/a/o;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/a/o;->E:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/o;->m()V

    invoke-virtual {p0}, Lcom/google/android/a/o;->j()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/a/o;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/google/android/a/o;->B:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/a/o;->C:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/a/o;->m()V

    invoke-virtual {p0}, Lcom/google/android/a/o;->j()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v3, p0, Lcom/google/android/a/o;->D:Z

    goto :goto_0
.end method

.method private a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->j:Lcom/google/android/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/o$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/o$2;-><init>(Lcom/google/android/a/o;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/o$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/a/o;->b(Lcom/google/android/a/o$a;)V

    new-instance v0, Lcom/google/android/a/g;

    invoke-direct {v0, p1}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->j:Lcom/google/android/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/o$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/o$3;-><init>(Lcom/google/android/a/o;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(JZ)Z
    .locals 13

    iget-boolean v0, p0, Lcom/google/android/a/o;->G:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/o;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/a/o;->x:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/o;->x:I

    iget v0, p0, Lcom/google/android/a/o;->x:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v1, p0, Lcom/google/android/a/o;->u:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/a/o;->x:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->d()V

    :cond_3
    iget v0, p0, Lcom/google/android/a/o;->C:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/google/android/a/o;->r:Z

    if-eqz v0, :cond_4

    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/o;->C:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/o;->E:Z

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/a/o;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/o;->x:I

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/a/o;->I:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x3

    :cond_6
    :goto_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/google/android/a/o;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v2, v2, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/o;->B:I

    :cond_9
    iget-object v0, p0, Lcom/google/android/a/o;->g:Lcom/google/android/a/s;

    iget-object v1, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/a/o;->a(JLcom/google/android/a/s;Lcom/google/android/a/u;)I

    move-result v0

    if-eqz p3, :cond_6

    iget v1, p0, Lcom/google/android/a/o;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/a/o;->F:I

    goto :goto_2

    :cond_a
    const/4 v1, -0x4

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/a/o;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->d()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/o;->B:I

    :cond_b
    iget-object v0, p0, Lcom/google/android/a/o;->g:Lcom/google/android/a/s;

    invoke-virtual {p0, v0}, Lcom/google/android/a/o;->a(Lcom/google/android/a/s;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/a/o;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->d()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/o;->B:I

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/o;->G:Z

    iget-boolean v0, p0, Lcom/google/android/a/o;->D:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/a/o;->A()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/a/o;->r:Z

    if-eqz v0, :cond_f

    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/o;->E:Z

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget v1, p0, Lcom/google/android/a/o;->x:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/o;->x:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/a/o;->a(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v1, Lcom/google/android/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/a/o;->J:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->d()V

    iget v0, p0, Lcom/google/android/a/o;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/o;->B:I

    :cond_11
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/o;->J:Z

    :cond_13
    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v0}, Lcom/google/android/a/u;->a()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/android/a/o;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/a/o;->I:Z

    iget-boolean v0, p0, Lcom/google/android/a/o;->I:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/a/o;->p:Z

    if-eqz v0, :cond_16

    if-nez v6, :cond_16

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v0, v0, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/a/h/m;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v0, v0, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/o;->p:Z

    :cond_16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v0, v0, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget v0, v0, Lcom/google/android/a/u;->c:I

    sub-int v0, v5, v0

    iget-object v1, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-wide v2, v1, Lcom/google/android/a/u;->e:J

    iget-object v1, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-virtual {v1}, Lcom/google/android/a/u;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    iget-object v4, v1, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/a/o;->a(JLjava/nio/ByteBuffer;IZ)V

    if-eqz v6, :cond_18

    iget-object v1, p0, Lcom/google/android/a/o;->f:Lcom/google/android/a/u;

    invoke-static {v1, v0}, Lcom/google/android/a/o;->a(Lcom/google/android/a/u;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v7

    iget-object v4, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/a/o;->x:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-wide v8, v2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/o;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/o;->D:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/o;->B:I

    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->c:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_18
    iget-object v6, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/a/o;->x:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v9, v5

    move-wide v10, v2

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/a/o;->a(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v1, Lcom/google/android/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const/16 v1, 0x12

    sget v0, Lcom/google/android/a/h/x;->a:I

    if-lt v0, v1, :cond_1

    sget v0, Lcom/google/android/a/h/x;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/a/h/x;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/a/r;)Z
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/a/o;->z:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v1}, Lcom/google/android/a/d/b;->b()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/google/android/a/g;

    iget-object v1, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v1}, Lcom/google/android/a/d/b;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/a/o;->e:Z

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/r;)Landroid/media/MediaFormat;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/a/r;->b()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/a/o;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "auto-frc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private b(Lcom/google/android/a/o$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->j:Lcom/google/android/a/o$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/o$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/o$1;-><init>(Lcom/google/android/a/o;Lcom/google/android/a/o$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private b(JJ)Z
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/a/o;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/a/o;->y:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/android/a/o;->o()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/o;->y:I

    :cond_1
    iget v0, p0, Lcom/google/android/a/o;->y:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/a/o;->z()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/a/o;->y:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/o;->v:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->e:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/a/o;->y:I

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/a/o;->r:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/a/o;->G:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/a/o;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/google/android/a/o;->A()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/a/o;->A()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/o;->h(J)I

    move-result v0

    iget-object v6, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/a/o;->v:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/a/o;->y:I

    aget-object v7, v1, v2

    iget-object v8, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v9, p0, Lcom/google/android/a/o;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/a/o;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/a/o;->i:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v2, v3}, Lcom/google/android/a/o;->b(J)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/o;->y:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static b(Ljava/lang/String;Lcom/google/android/a/r;)Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/a/r;->n:I

    if-ne v1, v0, :cond_0

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/o;->g:Lcom/google/android/a/s;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/a/o;->a(JLcom/google/android/a/s;Lcom/google/android/a/u;)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->g:Lcom/google/android/a/s;

    invoke-virtual {p0, v0}, Lcom/google/android/a/o;->a(Lcom/google/android/a/s;)V

    :cond_0
    return-void
.end method

.method private h(J)I
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private i()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/o;->w:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/a/o;->t:Z

    if-eqz v1, :cond_0

    const-string v1, "channel-count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/o;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->d:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/a/n;Ljava/lang/String;Z)Lcom/google/android/a/e;
    .locals 1

    invoke-interface {p1, p2, p3}, Lcom/google/android/a/n;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/o;->F:I

    iput-boolean v0, p0, Lcom/google/android/a/o;->G:Z

    iput-boolean v0, p0, Lcom/google/android/a/o;->H:Z

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/o;->a()V

    :cond_0
    return-void
.end method

.method protected a(JJZ)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p5, :cond_6

    iget v0, p0, Lcom/google/android/a/o;->F:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/a/o;->F:I

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/a/o;->g(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/o;->j()V

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/a/o;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/a/o;->a(JZ)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/a/o;->a(JZ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    invoke-virtual {v0}, Lcom/google/android/a/c;->a()V

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/a/o;->F:I

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method protected a(JLjava/nio/ByteBuffer;IZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
.end method

.method protected a(Lcom/google/android/a/s;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iget-object v1, p1, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iput-object v1, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iget-object v1, p1, Lcom/google/android/a/s;->b:Lcom/google/android/a/d/a;

    iput-object v1, p0, Lcom/google/android/a/o;->m:Lcom/google/android/a/d/a;

    iget-object v1, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget-boolean v2, p0, Lcom/google/android/a/o;->o:Z

    iget-object v3, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/a/o;->a(Landroid/media/MediaCodec;ZLcom/google/android/a/r;Lcom/google/android/a/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/google/android/a/o;->A:Z

    iput v4, p0, Lcom/google/android/a/o;->B:I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/a/o;->D:Z

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/google/android/a/o;->C:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/a/o;->m()V

    invoke-virtual {p0}, Lcom/google/android/a/o;->j()V

    goto :goto_0
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/android/a/r;Lcom/google/android/a/r;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract a(Lcom/google/android/a/n;Lcom/google/android/a/r;)Z
.end method

.method protected final a(Lcom/google/android/a/r;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/o;->c:Lcom/google/android/a/n;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/a/o;->a(Lcom/google/android/a/n;Lcom/google/android/a/r;)Z

    move-result v0

    return v0
.end method

.method protected b(J)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/o;->H:Z

    return v0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/a/o;->I:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/a/o;->F:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/o;->y:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/o;->i()Z

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
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iput-object v0, p0, Lcom/google/android/a/o;->m:Lcom/google/android/a/d/a;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/a/o;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/a/o;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v0}, Lcom/google/android/a/d/b;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/o;->z:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-super {p0}, Lcom/google/android/a/w;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/a/w;->g()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/a/o;->z:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v1}, Lcom/google/android/a/d/b;->a()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/a/o;->z:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-super {p0}, Lcom/google/android/a/w;->g()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lcom/google/android/a/w;->g()V

    throw v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected final j()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/o;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/a/o;->m:Lcom/google/android/a/d/a;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/a/g;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/android/a/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/a/o;->z:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    iget-object v1, p0, Lcom/google/android/a/o;->m:Lcom/google/android/a/d/a;

    invoke-interface {v0, v1}, Lcom/google/android/a/d/b;->a(Lcom/google/android/a/d/a;)V

    iput-boolean v9, p0, Lcom/google/android/a/o;->z:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v0}, Lcom/google/android/a/d/b;->b()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/a/g;

    iget-object v1, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v1}, Lcom/google/android/a/d/b;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    if-eq v0, v10, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v0}, Lcom/google/android/a/d/b;->c()Landroid/media/MediaCrypto;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/a/o;->d:Lcom/google/android/a/d/b;

    invoke-interface {v0, v3}, Lcom/google/android/a/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    move-object v0, v1

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/a/o;->c:Lcom/google/android/a/n;

    invoke-virtual {p0, v1, v3, v6}, Lcom/google/android/a/o;->a(Lcom/google/android/a/n;Ljava/lang/String;Z)Lcom/google/android/a/e;
    :try_end_0
    .catch Lcom/google/android/a/p$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    :goto_2
    if-nez v3, :cond_6

    new-instance v1, Lcom/google/android/a/o$a;

    iget-object v4, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    const v5, -0xc34f

    invoke-direct {v1, v4, v2, v6, v5}, Lcom/google/android/a/o$a;-><init>(Lcom/google/android/a/r;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/a/o;->a(Lcom/google/android/a/o$a;)V

    :cond_6
    iget-object v1, v3, Lcom/google/android/a/e;->a:Ljava/lang/String;

    iget-boolean v2, v3, Lcom/google/android/a/e;->c:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->o:Z

    iget-object v2, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    invoke-static {v1, v2}, Lcom/google/android/a/o;->a(Ljava/lang/String;Lcom/google/android/a/r;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/a/o;->p:Z

    invoke-static {v1}, Lcom/google/android/a/o;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/a/o;->q:Z

    invoke-static {v1}, Lcom/google/android/a/o;->b(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/a/o;->r:Z

    invoke-static {v1}, Lcom/google/android/a/o;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/a/o;->s:Z

    iget-object v2, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    invoke-static {v1, v2}, Lcom/google/android/a/o;->b(Ljava/lang/String;Lcom/google/android/a/r;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/a/o;->t:Z

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createByCodecName("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    iget-boolean v3, v3, Lcom/google/android/a/e;->c:Z

    iget-object v7, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    invoke-direct {p0, v7}, Lcom/google/android/a/o;->b(Lcom/google/android/a/r;)Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v7, v0}, Lcom/google/android/a/o;->a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/o;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/o;->u:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/o;->v:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/a/o;->u()I

    move-result v0

    if-ne v0, v10, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_4
    iput-wide v0, p0, Lcom/google/android/a/o;->w:J

    iput v8, p0, Lcom/google/android/a/o;->x:I

    iput v8, p0, Lcom/google/android/a/o;->y:I

    iput-boolean v9, p0, Lcom/google/android/a/o;->J:Z

    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->a:I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/google/android/a/o$a;

    iget-object v4, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    const v5, -0xc34e

    invoke-direct {v3, v4, v1, v6, v5}, Lcom/google/android/a/o$a;-><init>(Lcom/google/android/a/r;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v3}, Lcom/google/android/a/o;->a(Lcom/google/android/a/o$a;)V

    move-object v3, v2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/google/android/a/o$a;

    iget-object v3, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    invoke-direct {v2, v3, v0, v6, v1}, Lcom/google/android/a/o$a;-><init>(Lcom/google/android/a/r;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/a/o;->a(Lcom/google/android/a/o$a;)V

    goto :goto_3

    :cond_7
    const-wide/16 v0, -0x1

    goto :goto_4

    :cond_8
    move v6, v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method protected k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/o;->l:Lcom/google/android/a/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/o;->w:J

    iput v4, p0, Lcom/google/android/a/o;->x:I

    iput v4, p0, Lcom/google/android/a/o;->y:I

    iput-boolean v2, p0, Lcom/google/android/a/o;->I:Z

    iget-object v0, p0, Lcom/google/android/a/o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v3, p0, Lcom/google/android/a/o;->u:[Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lcom/google/android/a/o;->v:[Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/android/a/o;->A:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->D:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->o:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->p:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->q:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->r:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->s:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->t:Z

    iput-boolean v2, p0, Lcom/google/android/a/o;->E:Z

    iput v2, p0, Lcom/google/android/a/o;->B:I

    iput v2, p0, Lcom/google/android/a/o;->C:I

    iget-object v0, p0, Lcom/google/android/a/o;->a:Lcom/google/android/a/c;

    iget v1, v0, Lcom/google/android/a/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/c;->b:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v3, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/google/android/a/o;->n:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/o;->F:I

    return v0
.end method

.method protected o()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
