.class final Lcom/google/android/a/e/d/a;
.super Lcom/google/android/a/e/d/f;


# instance fields
.field private e:Lcom/google/android/a/h/g;

.field private f:Lcom/google/android/a/h/f;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/a/e/d/f;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/a/h/o;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 11

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->b:Lcom/google/android/a/e/d/c;

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/a/e/d/c;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    iget-object v1, v1, Lcom/google/android/a/h/o;->a:[B

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/a/h/g;

    const/16 v4, 0x11

    invoke-direct {v2, v1, v4}, Lcom/google/android/a/h/g;-><init>([BI)V

    iput-object v2, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    const/16 v2, 0x9

    iget-object v4, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v4}, Lcom/google/android/a/h/o;->c()I

    move-result v4

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const/4 v2, 0x4

    const/16 v4, -0x80

    aput-byte v4, v1, v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v1, "audio/x-flac"

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    invoke-virtual {v2}, Lcom/google/android/a/h/g;->a()I

    move-result v2

    iget-object v4, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    invoke-virtual {v4}, Lcom/google/android/a/h/g;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    iget v6, v6, Lcom/google/android/a/h/g;->f:I

    iget-object v7, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    iget v7, v7, Lcom/google/android/a/h/g;->e:I

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->c:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->a()V

    move v3, v10

    goto :goto_0

    :cond_2
    aget-byte v2, v1, v10

    if-ne v2, v3, :cond_5

    iget-boolean v1, p0, Lcom/google/android/a/e/d/a;->g:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->f:Lcom/google/android/a/h/f;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->d:Lcom/google/android/a/e/g;

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->f:Lcom/google/android/a/h/f;

    iget-object v3, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    iget v3, v3, Lcom/google/android/a/h/g;->e:I

    int-to-long v8, v3

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/a/h/f;->a(JJ)Lcom/google/android/a/e/l;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    iput-object v0, p0, Lcom/google/android/a/e/d/a;->f:Lcom/google/android/a/h/f;

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/a/e/d/a;->g:Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/a/e/d/a;->c:Lcom/google/android/a/e/m;

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    iget-object v3, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->c()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v1, v10}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->e:Lcom/google/android/a/h/g;

    iget-object v2, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-static {v1, v2}, Lcom/google/android/a/h/h;->a(Lcom/google/android/a/h/g;Lcom/google/android/a/h/o;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/a/e/d/a;->c:Lcom/google/android/a/e/m;

    iget-object v5, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->c()I

    move-result v5

    move v6, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/a/e/d/a;->d:Lcom/google/android/a/e/g;

    sget-object v2, Lcom/google/android/a/e/l;->f:Lcom/google/android/a/e/l;

    invoke-interface {v1, v2}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    goto :goto_2

    :cond_5
    aget-byte v0, v1, v10

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/d/a;->f:Lcom/google/android/a/h/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/d/a;->a:Lcom/google/android/a/h/o;

    invoke-static {v0}, Lcom/google/android/a/h/f;->a(Lcom/google/android/a/h/o;)Lcom/google/android/a/h/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/d/a;->f:Lcom/google/android/a/h/f;

    goto :goto_1
.end method
