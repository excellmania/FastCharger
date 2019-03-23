.class final Lcom/google/android/a/e/f/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/e/f/b;->a:I

    iput p2, p0, Lcom/google/android/a/e/f/b;->b:I

    iput p3, p0, Lcom/google/android/a/e/f/b;->c:I

    iput p4, p0, Lcom/google/android/a/e/f/b;->d:I

    iput p5, p0, Lcom/google/android/a/e/f/b;->e:I

    iput p6, p0, Lcom/google/android/a/e/f/b;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/e/f/b;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/a/e/f/b;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)J
    .locals 5

    iget v0, p0, Lcom/google/android/a/e/f/b;->c:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/a/e/f/b;->a:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/a/e/f/b;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/e/f/b;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/f/b;->g:J

    iput-wide p3, p0, Lcom/google/android/a/e/f/b;->h:J

    return-void
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/e/f/b;->h:J

    invoke-virtual {p0}, Lcom/google/android/a/e/f/b;->d()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/a/e/f/b;->c:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public c()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/e/f/b;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/a/e/f/b;->h()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/f/b;->d:I

    iget v1, p0, Lcom/google/android/a/e/f/b;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/f/b;->d:I

    return v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/f/b;->b:I

    iget v1, p0, Lcom/google/android/a/e/f/b;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/a/e/f/b;->a:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/f/b;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/f/b;->a:I

    return v0
.end method

.method public i()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/a/e/f/b;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/e/f/b;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/f/b;->f:I

    return v0
.end method
