.class public final Lcom/google/android/a/b/l;
.super Lcom/google/android/a/b/c;

# interfaces
.implements Lcom/google/android/a/b/d$a;


# instance fields
.field private final a:Lcom/google/android/a/b/d;

.field private h:Lcom/google/android/a/r;

.field private i:Lcom/google/android/a/d/a;

.field private j:Lcom/google/android/a/e/l;

.field private volatile k:I

.field private volatile l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;Lcom/google/android/a/b/d;I)V
    .locals 7

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/b/c;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;IILcom/google/android/a/b/i;I)V

    iput-object p5, p0, Lcom/google/android/a/b/l;->a:Lcom/google/android/a/b/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;IZ)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JIII[B)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/a/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/l;->i:Lcom/google/android/a/d/a;

    return-void
.end method

.method public a(Lcom/google/android/a/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/l;->j:Lcom/google/android/a/e/l;

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;I)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/l;->h:Lcom/google/android/a/r;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->h:Lcom/google/android/a/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/google/android/a/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->h:Lcom/google/android/a/r;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->i:Lcom/google/android/a/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/google/android/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->i:Lcom/google/android/a/d/a;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget v0, p0, Lcom/google/android/a/b/l;->k:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/b/l;->l:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/b/l;->l:Z

    return v0
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/b/l;->e:Lcom/google/android/a/g/h;

    iget v1, p0, Lcom/google/android/a/b/l;->k:I

    invoke-static {v0, v1}, Lcom/google/android/a/h/x;->a(Lcom/google/android/a/g/h;I)Lcom/google/android/a/g/h;

    move-result-object v4

    :try_start_0
    new-instance v0, Lcom/google/android/a/e/b;

    iget-object v1, p0, Lcom/google/android/a/b/l;->g:Lcom/google/android/a/g/f;

    iget-wide v2, v4, Lcom/google/android/a/g/h;->c:J

    iget-object v5, p0, Lcom/google/android/a/b/l;->g:Lcom/google/android/a/g/f;

    invoke-interface {v5, v4}, Lcom/google/android/a/g/f;->a(Lcom/google/android/a/g/h;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/b;-><init>(Lcom/google/android/a/g/f;JJ)V

    iget v1, p0, Lcom/google/android/a/b/l;->k:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/b/l;->a:Lcom/google/android/a/b/d;

    invoke-virtual {v1, p0}, Lcom/google/android/a/b/d;->a(Lcom/google/android/a/b/d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/a/b/l;->l:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/b/l;->a:Lcom/google/android/a/b/d;

    invoke-virtual {v1, v0}, Lcom/google/android/a/b/d;->a(Lcom/google/android/a/e/f;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/b/l;->e:Lcom/google/android/a/g/h;

    iget-wide v2, v2, Lcom/google/android/a/g/h;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/a/b/l;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/a/b/l;->g:Lcom/google/android/a/g/f;

    invoke-interface {v0}, Lcom/google/android/a/g/f;->b()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/a/b/l;->e:Lcom/google/android/a/g/h;

    iget-wide v4, v0, Lcom/google/android/a/g/h;->c:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/a/b/l;->k:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/a/b/l;->g:Lcom/google/android/a/g/f;

    invoke-interface {v1}, Lcom/google/android/a/g/f;->b()V

    throw v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->j:Lcom/google/android/a/e/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/google/android/a/e/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/l;->j:Lcom/google/android/a/e/l;

    return-object v0
.end method
