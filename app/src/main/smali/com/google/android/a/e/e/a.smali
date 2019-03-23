.class final Lcom/google/android/a/e/e/a;
.super Lcom/google/android/a/e/e/e;


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/a/h/n;

.field private final d:Lcom/google/android/a/h/o;

.field private e:I

.field private f:I

.field private g:Z

.field private h:J

.field private i:Lcom/google/android/a/r;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    iput-boolean p2, p0, Lcom/google/android/a/e/e/a;->b:Z

    new-instance v0, Lcom/google/android/a/h/n;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    new-instance v0, Lcom/google/android/a/h/o;

    iget-object v1, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    iget-object v1, v1, Lcom/google/android/a/h/n;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/a;->e:I

    return-void
.end method

.method private a(Lcom/google/android/a/h/o;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/a;->f:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/a;->f:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/a/h/o;->a([BII)V

    iget v1, p0, Lcom/google/android/a/e/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/a;->f:I

    iget v0, p0, Lcom/google/android/a/e/e/a;->f:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/h/o;)Z
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/a/e/e/a;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/a/e/e/a;->g:Z

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    const/16 v3, 0x77

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/google/android/a/e/e/a;->g:Z

    :goto_2
    return v1

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/a/e/e/a;->g:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private c()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->i:Lcom/google/android/a/r;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/a/e/e/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    invoke-static {v0, v1, v2, v3, v1}, Lcom/google/android/a/h/a;->b(Lcom/google/android/a/h/n;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/a/e/e/a;->i:Lcom/google/android/a/r;

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->a:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/a;->i:Lcom/google/android/a/r;

    invoke-interface {v0, v1}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/a/e/e/a;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    iget-object v0, v0, Lcom/google/android/a/h/n;->a:[B

    invoke-static {v0}, Lcom/google/android/a/h/a;->b([B)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/android/a/e/e/a;->j:I

    iget-boolean v0, p0, Lcom/google/android/a/e/e/a;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    iget-object v0, v0, Lcom/google/android/a/h/n;->a:[B

    invoke-static {v0}, Lcom/google/android/a/h/a;->c([B)I

    move-result v0

    :goto_2
    const-wide/32 v2, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/e/e/a;->i:Lcom/google/android/a/r;

    iget v2, v2, Lcom/google/android/a/r;->o:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/a/e/e/a;->h:J

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    invoke-static {v0, v1, v2, v3, v1}, Lcom/google/android/a/h/a;->a(Lcom/google/android/a/h/n;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/e/a;->c:Lcom/google/android/a/h/n;

    iget-object v0, v0, Lcom/google/android/a/h/n;->a:[B

    invoke-static {v0}, Lcom/google/android/a/h/a;->a([B)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/a/h/a;->a()I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/a;->e:I

    iput v0, p0, Lcom/google/android/a/e/e/a;->f:I

    iput-boolean v0, p0, Lcom/google/android/a/e/e/a;->g:Z

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/a;->k:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/a/e/e/a;->e:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/a;->b(Lcom/google/android/a/h/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lcom/google/android/a/e/e/a;->e:I

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/16 v1, 0xb

    aput-byte v1, v0, v6

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v4

    iput v8, p0, Lcom/google/android/a/e/e/a;->f:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-direct {p0, p1, v0, v9}, Lcom/google/android/a/e/e/a;->a(Lcom/google/android/a/h/o;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/e/a;->c()V

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/a;->a:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/a;->d:Lcom/google/android/a/h/o;

    invoke-interface {v0, v1, v9}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iput v8, p0, Lcom/google/android/a/e/e/a;->e:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/a;->j:I

    iget v2, p0, Lcom/google/android/a/e/e/a;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/a;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v1, p0, Lcom/google/android/a/e/e/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/a;->f:I

    iget v0, p0, Lcom/google/android/a/e/e/a;->f:I

    iget v1, p0, Lcom/google/android/a/e/e/a;->j:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/e/a;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/a;->k:J

    iget v5, p0, Lcom/google/android/a/e/e/a;->j:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/android/a/e/e/a;->k:J

    iget-wide v2, p0, Lcom/google/android/a/e/e/a;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/e/a;->k:J

    iput v6, p0, Lcom/google/android/a/e/e/a;->e:I

    goto :goto_0

    :cond_1
    return-void

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
