.class final Lcom/google/android/a/e/d/h;
.super Lcom/google/android/a/e/d/f;

# interfaces
.implements Lcom/google/android/a/e/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/d/h$a;
    }
.end annotation


# instance fields
.field private e:Lcom/google/android/a/e/d/h$a;

.field private g:I

.field private h:J

.field private i:Z

.field private final j:Lcom/google/android/a/e/d/d;

.field private k:J

.field private l:Lcom/google/android/a/e/d/i$d;

.field private m:Lcom/google/android/a/e/d/i$b;

.field private n:J

.field private o:J

.field private p:J

.field private q:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/a/e/d/f;-><init>()V

    new-instance v0, Lcom/google/android/a/e/d/d;

    invoke-direct {v0}, Lcom/google/android/a/e/d/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/d/h;->j:Lcom/google/android/a/e/d/d;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/d/h;->k:J

    return-void
.end method

.method private static a(BLcom/google/android/a/e/d/h$a;)I
    .locals 2

    iget v0, p1, Lcom/google/android/a/e/d/h$a;->e:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/a/e/d/e;->a(BII)I

    move-result v0

    iget-object v1, p1, Lcom/google/android/a/e/d/h$a;->d:[Lcom/google/android/a/e/d/i$c;

    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/google/android/a/e/d/i$c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget v0, v0, Lcom/google/android/a/e/d/i$d;->g:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget v0, v0, Lcom/google/android/a/e/d/i$d;->h:I

    goto :goto_0
.end method

.method static a(Lcom/google/android/a/h/o;J)V
    .locals 7

    const-wide/16 v4, 0xff

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method static a(Lcom/google/android/a/h/o;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, p0, v1}, Lcom/google/android/a/e/d/i;->a(ILcom/google/android/a/h/o;Z)Z
    :try_end_0
    .catch Lcom/google/android/a/t; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 16

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->p:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->n:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/e/d/h;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/d/h$a;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->o:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->d:Lcom/google/android/a/e/g;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/android/a/e/j;->a:J

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    :goto_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->p:J

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v2, v2, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget-object v2, v2, Lcom/google/android/a/e/d/i$d;->j:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v2, v2, Lcom/google/android/a/e/d/h$a;->c:[B

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-wide/16 v2, -0x1

    :goto_2
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->q:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/a/e/d/h;->c:Lcom/google/android/a/e/m;

    const/4 v2, 0x0

    const-string v3, "audio/vorbis"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v4, v4, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget v4, v4, Lcom/google/android/a/e/d/i$d;->e:I

    const v5, 0xfe01

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/e/d/h;->q:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v8, v8, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget v8, v8, Lcom/google/android/a/e/d/i$d;->b:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v9, v9, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget-wide v14, v9, Lcom/google/android/a/e/d/i$d;->c:J

    long-to-int v9, v14

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v2

    invoke-interface {v12, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->n:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->j:Lcom/google/android/a/e/d/d;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->n:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/e/d/h;->o:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/e/d/h;->p:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/a/e/d/d;->a(JJ)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->o:J

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/android/a/e/j;->a:J

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;)J

    move-result-wide v2

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->p:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v4, v4, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget-wide v4, v4, Lcom/google/android/a/e/d/i$d;->c:J

    div-long/2addr v2, v4

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/a/e/d/h;->i:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/a/e/d/h;->k:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->j:Lcom/google/android/a/e/d/d;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->k:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/a/e/d/d;->a(JLcom/google/android/a/e/f;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    iput-wide v2, v0, Lcom/google/android/a/e/j;->a:J

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->k:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->h:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->l:Lcom/google/android/a/e/d/i$d;

    iget v2, v2, Lcom/google/android/a/e/d/i$d;->g:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/a/e/d/h;->g:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/a/e/d/h;->i:Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    invoke-static {v2, v3}, Lcom/google/android/a/e/d/h;->a(BLcom/google/android/a/e/d/h$a;)I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/a/e/d/h;->i:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/a/e/d/h;->g:I

    add-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x4

    :goto_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->h:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/e/d/h;->k:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/google/android/a/e/d/h;->a(Lcom/google/android/a/h/o;J)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->h:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v3, v3, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget-wide v6, v3, Lcom/google/android/a/e/d/i$d;->c:J

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->c:Lcom/google/android/a/e/m;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v7}, Lcom/google/android/a/h/o;->c()I

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/e/d/h;->c:Lcom/google/android/a/e/m;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v7}, Lcom/google/android/a/h/o;->c()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/a/e/m;->a(JIII[B)V

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/a/e/d/h;->k:J

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/a/e/d/h;->i:Z

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/a/e/d/h;->h:J

    int-to-long v2, v2

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/a/e/d/h;->h:J

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/a/e/d/h;->g:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/d/h;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->a()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/d/h$a;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/d/h;->l:Lcom/google/android/a/e/d/i$d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z

    invoke-static {p2}, Lcom/google/android/a/e/d/i;->a(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/d/i$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/d/h;->l:Lcom/google/android/a/e/d/i$d;

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/d/h;->m:Lcom/google/android/a/e/d/i$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z

    invoke-static {p2}, Lcom/google/android/a/e/d/i;->b(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/d/i$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/d/h;->m:Lcom/google/android/a/e/d/i$b;

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/d/h;->b:Lcom/google/android/a/e/d/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->c()I

    move-result v0

    new-array v3, v0, [B

    iget-object v0, p2, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->c()I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/android/a/e/d/h;->l:Lcom/google/android/a/e/d/i$d;

    iget v0, v0, Lcom/google/android/a/e/d/i$d;->b:I

    invoke-static {p2, v0}, Lcom/google/android/a/e/d/i;->a(Lcom/google/android/a/h/o;I)[Lcom/google/android/a/e/d/i$c;

    move-result-object v4

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/a/e/d/i;->a(I)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->a()V

    new-instance v0, Lcom/google/android/a/e/d/h$a;

    iget-object v1, p0, Lcom/google/android/a/e/d/h;->l:Lcom/google/android/a/e/d/i$d;

    iget-object v2, p0, Lcom/google/android/a/e/d/h;->m:Lcom/google/android/a/e/d/i$b;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/d/h$a;-><init>(Lcom/google/android/a/e/d/i$d;Lcom/google/android/a/e/d/i$b;[B[Lcom/google/android/a/e/d/i$c;I)V

    return-object v0
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/e/d/h;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/d/h;->k:J

    iget-wide v0, p0, Lcom/google/android/a/e/d/h;->o:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/d/h;->e:Lcom/google/android/a/e/d/h$a;

    iget-object v0, v0, Lcom/google/android/a/e/d/h$a;->a:Lcom/google/android/a/e/d/i$d;

    iget-wide v0, v0, Lcom/google/android/a/e/d/i$d;->c:J

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/d/h;->k:J

    iget-wide v0, p0, Lcom/google/android/a/e/d/h;->o:J

    iget-wide v2, p0, Lcom/google/android/a/e/d/h;->n:J

    iget-wide v4, p0, Lcom/google/android/a/e/d/h;->o:J

    sub-long/2addr v2, v4

    mul-long/2addr v2, p1

    iget-wide v4, p0, Lcom/google/android/a/e/d/h;->q:J

    div-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/a/e/d/f;->b()V

    iput v2, p0, Lcom/google/android/a/e/d/h;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/e/d/h;->h:J

    iput-boolean v2, p0, Lcom/google/android/a/e/d/h;->i:Z

    return-void
.end method
