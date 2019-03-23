.class final Lcom/google/android/a/e/e/i;
.super Lcom/google/android/a/e/e/e;


# instance fields
.field private final b:Lcom/google/android/a/h/o;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    invoke-static {}, Lcom/google/android/a/r;->a()Lcom/google/android/a/r;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/e/i;->b:Lcom/google/android/a/h/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/i;->c:Z

    return-void
.end method

.method public a(JZ)V
    .locals 3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/e/i;->c:Z

    iput-wide p1, p0, Lcom/google/android/a/e/e/i;->d:J

    iput v1, p0, Lcom/google/android/a/e/e/i;->e:I

    iput v1, p0, Lcom/google/android/a/e/e/i;->f:I

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 7

    const/16 v6, 0xa

    iget-boolean v0, p0, Lcom/google/android/a/e/e/i;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/i;->f:I

    if-ge v1, v6, :cond_1

    iget v1, p0, Lcom/google/android/a/e/e/i;->f:I

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p1, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/a/e/e/i;->b:Lcom/google/android/a/h/o;

    iget-object v4, v4, Lcom/google/android/a/h/o;->a:[B

    iget v5, p0, Lcom/google/android/a/e/e/i;->f:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/a/e/e/i;->f:I

    add-int/2addr v1, v2

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/google/android/a/e/e/i;->b:Lcom/google/android/a/h/o;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/i;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->r()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/google/android/a/e/e/i;->e:I

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/e/i;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v1, p0, Lcom/google/android/a/e/e/i;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/i;->f:I

    goto :goto_0
.end method

.method public b()V
    .locals 8

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/e/i;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/e/e/i;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/e/e/i;->f:I

    iget v1, p0, Lcom/google/android/a/e/e/i;->e:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/e/i;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/i;->d:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/a/e/e/i;->e:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iput-boolean v6, p0, Lcom/google/android/a/e/e/i;->c:Z

    goto :goto_0
.end method
