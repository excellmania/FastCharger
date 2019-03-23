.class public final Lcom/google/android/a/e/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;
.implements Lcom/google/android/a/e/l;


# instance fields
.field private a:Lcom/google/android/a/e/g;

.field private b:Lcom/google/android/a/e/m;

.field private c:Lcom/google/android/a/e/f/b;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 12

    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/a/e/f/c;->a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Error initializing WavHeader. Did you sniff first?"

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v0}, Lcom/google/android/a/e/f/b;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/f/a;->d:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v0}, Lcom/google/android/a/e/f/b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-static {p1, v0}, Lcom/google/android/a/e/f/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/f/b;)V

    iget-object v11, p0, Lcom/google/android/a/e/f/a;->b:Lcom/google/android/a/e/m;

    const/4 v0, 0x0

    const-string v1, "audio/raw"

    iget-object v2, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v2}, Lcom/google/android/a/e/f/b;->f()I

    move-result v2

    const v3, 0x8000

    iget-object v4, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v4}, Lcom/google/android/a/e/f/b;->a()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v6}, Lcom/google/android/a/e/f/b;->h()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v7}, Lcom/google/android/a/e/f/b;->g()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v10}, Lcom/google/android/a/e/f/b;->j()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/a/r;

    move-result-object v0

    invoke-interface {v11, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iget-object v0, p0, Lcom/google/android/a/e/f/a;->a:Lcom/google/android/a/e/g;

    invoke-interface {v0, p0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/f/a;->b:Lcom/google/android/a/e/m;

    const v1, 0x8000

    iget v2, p0, Lcom/google/android/a/e/f/a;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/google/android/a/e/f/a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/a/e/f/a;->e:I

    :cond_3
    iget v1, p0, Lcom/google/android/a/e/f/a;->e:I

    iget v2, p0, Lcom/google/android/a/e/f/a;->d:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/a/e/f/a;->d:I

    mul-int v5, v1, v2

    if-lez v5, :cond_4

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    iget v1, p0, Lcom/google/android/a/e/f/a;->e:I

    int-to-long v6, v1

    sub-long/2addr v2, v6

    iget v1, p0, Lcom/google/android/a/e/f/a;->e:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/a/e/f/a;->e:I

    iget-object v1, p0, Lcom/google/android/a/e/f/a;->b:Lcom/google/android/a/e/m;

    iget-object v4, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/a/e/f/b;->b(J)J

    move-result-wide v2

    const/4 v4, 0x1

    iget v6, p0, Lcom/google/android/a/e/f/a;->e:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/e/f/a;->a:Lcom/google/android/a/e/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/f/a;->b:Lcom/google/android/a/e/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-interface {p1}, Lcom/google/android/a/e/g;->a()V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/a/e/f/c;->a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/e/f/a;->c:Lcom/google/android/a/e/f/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/f/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/f/a;->e:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
