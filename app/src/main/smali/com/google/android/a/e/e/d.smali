.class final Lcom/google/android/a/e/e/d;
.super Lcom/google/android/a/e/e/e;


# instance fields
.field private final b:Lcom/google/android/a/h/o;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/a/r;

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, -0x2

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, 0x2

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    iput v3, p0, Lcom/google/android/a/e/e/d;->c:I

    return-void
.end method

.method private a(Lcom/google/android/a/h/o;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/d;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/d;->d:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/a/h/o;->a([BII)V

    iget v1, p0, Lcom/google/android/a/e/e/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/d;->d:I

    iget v0, p0, Lcom/google/android/a/e/e/d;->d:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/h/o;)Z
    .locals 3

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/android/a/e/e/d;->e:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/android/a/e/e/d;->e:I

    iget v1, p0, Lcom/google/android/a/e/e/d;->e:I

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/a/e/e/d;->e:I

    iget v1, p0, Lcom/google/android/a/e/e/d;->e:I

    const v2, 0x7ffe8001

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/a/e/e/d;->e:I

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    iget-object v1, p0, Lcom/google/android/a/e/e/d;->g:Lcom/google/android/a/r;

    if-nez v1, :cond_0

    const-wide/16 v2, -0x1

    invoke-static {v0, v4, v2, v3, v4}, Lcom/google/android/a/h/e;->a([BLjava/lang/String;JLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/a/e/e/d;->g:Lcom/google/android/a/r;

    iget-object v1, p0, Lcom/google/android/a/e/e/d;->a:Lcom/google/android/a/e/m;

    iget-object v2, p0, Lcom/google/android/a/e/e/d;->g:Lcom/google/android/a/r;

    invoke-interface {v1, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/a/h/e;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/a/e/e/d;->h:I

    const-wide/32 v2, 0xf4240

    invoke-static {v0}, Lcom/google/android/a/h/e;->a([B)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/e/e/d;->g:Lcom/google/android/a/r;

    iget v2, v2, Lcom/google/android/a/r;->o:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/a/e/e/d;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/d;->c:I

    iput v0, p0, Lcom/google/android/a/e/e/d;->d:I

    iput v0, p0, Lcom/google/android/a/e/e/d;->e:I

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/d;->i:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 9

    const/16 v8, 0xf

    const/4 v4, 0x1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/a/e/e/d;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/d;->b(Lcom/google/android/a/h/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/a/e/e/d;->d:I

    iput v4, p0, Lcom/google/android/a/e/e/d;->c:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-direct {p0, p1, v0, v8}, Lcom/google/android/a/e/e/d;->a(Lcom/google/android/a/h/o;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/e/d;->c()V

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/d;->a:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/d;->b:Lcom/google/android/a/h/o;

    invoke-interface {v0, v1, v8}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/e/e/d;->c:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/d;->h:I

    iget v2, p0, Lcom/google/android/a/e/e/d;->d:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/d;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v1, p0, Lcom/google/android/a/e/e/d;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/d;->d:I

    iget v0, p0, Lcom/google/android/a/e/e/d;->d:I

    iget v1, p0, Lcom/google/android/a/e/e/d;->h:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/e/d;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/d;->i:J

    iget v5, p0, Lcom/google/android/a/e/e/d;->h:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/android/a/e/e/d;->i:J

    iget-wide v2, p0, Lcom/google/android/a/e/e/d;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/e/d;->i:J

    iput v6, p0, Lcom/google/android/a/e/e/d;->c:I

    goto :goto_0

    :cond_1
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
