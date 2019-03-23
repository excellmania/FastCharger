.class public Lcom/google/android/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/m;


# instance fields
.field private final a:Lcom/google/android/a/e/k;

.field private final b:Lcom/google/android/a/u;

.field private c:Z

.field private d:J

.field private e:J

.field private volatile f:J

.field private volatile g:Lcom/google/android/a/r;


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/b;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/a/e/k;

    invoke-direct {v0, p1}, Lcom/google/android/a/e/k;-><init>(Lcom/google/android/a/g/b;)V

    iput-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    new-instance v0, Lcom/google/android/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/a/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/c;->c:Z

    iput-wide v2, p0, Lcom/google/android/a/e/c;->d:J

    iput-wide v2, p0, Lcom/google/android/a/e/c;->e:J

    iput-wide v2, p0, Lcom/google/android/a/e/c;->f:J

    return-void
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    iget-object v2, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    invoke-virtual {v1, v2}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/u;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/a/e/c;->c:Z

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    invoke-virtual {v2}, Lcom/google/android/a/u;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v1}, Lcom/google/android/a/e/k;->d()V

    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    iget-object v2, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    invoke-virtual {v1, v2}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/u;)Z

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/a/e/c;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    iget-wide v2, v1, Lcom/google/android/a/u;->e:J

    iget-wide v4, p0, Lcom/google/android/a/e/c;->e:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/a/g/f;IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/g/f;IZ)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/k;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/c;->c:Z

    iput-wide v2, p0, Lcom/google/android/a/e/c;->d:J

    iput-wide v2, p0, Lcom/google/android/a/e/c;->e:J

    iput-wide v2, p0, Lcom/google/android/a/e/c;->f:J

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    iget-object v1, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    invoke-virtual {v0, v1}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    iget-wide v0, v0, Lcom/google/android/a/u;->e:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/a/e/c;->f:J

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    iget-object v1, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    invoke-virtual {v0, v1}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c;->b:Lcom/google/android/a/u;

    iget-wide v0, v0, Lcom/google/android/a/u;->e:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/k;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/c;->c:Z

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/e/c;->d:J

    return-void
.end method

.method public a(JIII[B)V
    .locals 9

    iget-wide v0, p0, Lcom/google/android/a/e/c;->f:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/c;->f:J

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v1}, Lcom/google/android/a/e/k;->e()J

    move-result-wide v2

    int-to-long v4, p4

    sub-long/2addr v2, v4

    int-to-long v4, p5

    sub-long v4, v2, v4

    move-wide v1, p1

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/a/e/k;->a(JIJI[B)V

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/h/o;I)V

    return-void
.end method

.method public a(Lcom/google/android/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/c;->g:Lcom/google/android/a/r;

    return-void
.end method

.method public a(Lcom/google/android/a/u;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/a/e/c;->h()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v1, p1}, Lcom/google/android/a/e/k;->b(Lcom/google/android/a/u;)Z

    iput-boolean v0, p0, Lcom/google/android/a/e/c;->c:Z

    iget-wide v0, p1, Lcom/google/android/a/u;->e:J

    iput-wide v0, p0, Lcom/google/android/a/e/c;->d:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/k;->b()I

    move-result v0

    return v0
.end method

.method public b(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/k;->a(J)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->a:Lcom/google/android/a/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/k;->c()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->g:Lcom/google/android/a/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/google/android/a/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c;->g:Lcom/google/android/a/r;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/e/c;->f:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/a/e/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
