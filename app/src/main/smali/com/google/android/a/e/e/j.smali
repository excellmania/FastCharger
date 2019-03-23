.class final Lcom/google/android/a/e/e/j;
.super Lcom/google/android/a/e/e/e;


# instance fields
.field private final b:Lcom/google/android/a/h/o;

.field private final c:Lcom/google/android/a/h/l;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    iput v2, p0, Lcom/google/android/a/e/e/j;->d:I

    new-instance v0, Lcom/google/android/a/h/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    iget-object v0, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    new-instance v0, Lcom/google/android/a/h/l;

    invoke-direct {v0}, Lcom/google/android/a/h/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    return-void
.end method

.method private b(Lcom/google/android/a/h/o;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v5, p1, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->c()I

    move-result v6

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/google/android/a/e/e/j;->g:Z

    if-eqz v3, :cond_1

    aget-byte v3, v5, v4

    and-int/lit16 v3, v3, 0xe0

    const/16 v7, 0xe0

    if-ne v3, v7, :cond_1

    move v3, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/a/e/e/j;->g:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->b(I)V

    iput-boolean v2, p0, Lcom/google/android/a/e/e/j;->g:Z

    iget-object v0, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    aget-byte v2, v5, v4

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/e/e/j;->e:I

    iput v1, p0, Lcom/google/android/a/e/e/j;->d:I

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/android/a/h/o;->b(I)V

    goto :goto_3
.end method

.method private c(Lcom/google/android/a/h/o;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v1

    iget v2, p0, Lcom/google/android/a/e/e/j;->e:I

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/e/e/j;->e:I

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/a/h/o;->a([BII)V

    iget v2, p0, Lcom/google/android/a/e/e/j;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/a/e/e/j;->e:I

    iget v1, p0, Lcom/google/android/a/e/e/j;->e:I

    if-ge v1, v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v1, v10}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->m()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    invoke-static {v1, v2}, Lcom/google/android/a/h/l;->a(ILcom/google/android/a/h/l;)Z

    move-result v1

    if-nez v1, :cond_1

    iput v10, p0, Lcom/google/android/a/e/e/j;->e:I

    iput v11, p0, Lcom/google/android/a/e/e/j;->d:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget v1, v1, Lcom/google/android/a/h/l;->c:I

    iput v1, p0, Lcom/google/android/a/e/e/j;->i:I

    iget-boolean v1, p0, Lcom/google/android/a/e/e/j;->f:Z

    if-nez v1, :cond_2

    const-wide/32 v2, 0xf4240

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget v1, v1, Lcom/google/android/a/h/l;->g:I

    int-to-long v4, v1

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget v1, v1, Lcom/google/android/a/h/l;->d:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/e/j;->h:J

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget-object v1, v1, Lcom/google/android/a/h/l;->b:Ljava/lang/String;

    const/4 v2, -0x1

    const/16 v3, 0x1000

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget v6, v6, Lcom/google/android/a/h/l;->e:I

    iget-object v7, p0, Lcom/google/android/a/e/e/j;->c:Lcom/google/android/a/h/l;

    iget v7, v7, Lcom/google/android/a/h/l;->d:I

    move-object v8, v0

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iput-boolean v11, p0, Lcom/google/android/a/e/e/j;->f:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v10}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/j;->a:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->b:Lcom/google/android/a/h/o;

    invoke-interface {v0, v1, v12}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/e/e/j;->d:I

    goto :goto_0
.end method

.method private d(Lcom/google/android/a/h/o;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/j;->i:I

    iget v2, p0, Lcom/google/android/a/e/e/j;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/j;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v1, p0, Lcom/google/android/a/e/e/j;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/j;->e:I

    iget v0, p0, Lcom/google/android/a/e/e/j;->e:I

    iget v1, p0, Lcom/google/android/a/e/e/j;->i:I

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/e/j;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/j;->j:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/a/e/e/j;->i:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/android/a/e/e/j;->j:J

    iget-wide v2, p0, Lcom/google/android/a/e/e/j;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/e/j;->j:J

    iput v6, p0, Lcom/google/android/a/e/e/j;->e:I

    iput v6, p0, Lcom/google/android/a/e/e/j;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/j;->d:I

    iput v0, p0, Lcom/google/android/a/e/e/j;->e:I

    iput-boolean v0, p0, Lcom/google/android/a/e/e/j;->g:Z

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/j;->j:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/e/e/j;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/j;->b(Lcom/google/android/a/h/o;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/j;->c(Lcom/google/android/a/h/o;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/j;->d(Lcom/google/android/a/h/o;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
