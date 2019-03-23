.class public Lcom/google/android/a/c/a/i$c;
.super Lcom/google/android/a/c/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final g:Lcom/google/android/a/c/a/j;

.field final h:Lcom/google/android/a/c/a/j;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Lcom/google/android/a/c/a/j;Lcom/google/android/a/c/a/j;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/c/a/g;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;",
            "Lcom/google/android/a/c/a/j;",
            "Lcom/google/android/a/c/a/j;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/google/android/a/c/a/i$a;-><init>(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;)V

    iput-object p10, p0, Lcom/google/android/a/c/a/i$c;->g:Lcom/google/android/a/c/a/j;

    iput-object p11, p0, Lcom/google/android/a/c/a/i$c;->h:Lcom/google/android/a/c/a/j;

    iput-object p12, p0, Lcom/google/android/a/c/a/i$c;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/c/a/i$c;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/a/c/a/i$c;->e:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$c;->b:J

    div-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/a/c/a/i$c;->d:I

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/a/h/x;->a(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/c/a/h;)Lcom/google/android/a/c/a/g;
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->g:Lcom/google/android/a/c/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->g:Lcom/google/android/a/c/a/j;

    iget-object v1, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget-object v1, v1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget v3, v3, Lcom/google/android/a/b/i;->c:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/a/c/a/j;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/a/i$c;->i:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/a/c/a/i$a;->a(Lcom/google/android/a/c/a/h;)Lcom/google/android/a/c/a/g;

    move-result-object v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/c/a/h;I)Lcom/google/android/a/c/a/g;
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/a/c/a/i$c;->d:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/i$d;

    iget-wide v4, v0, Lcom/google/android/a/c/a/i$d;->a:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/c/a/i$c;->h:Lcom/google/android/a/c/a/j;

    iget-object v1, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget-object v1, v1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget v3, v2, Lcom/google/android/a/b/i;->c:I

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/a/c/a/j;->a(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/a/i$c;->i:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1

    :cond_0
    iget v0, p0, Lcom/google/android/a/c/a/i$c;->d:I

    sub-int v0, p2, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$c;->e:J

    mul-long v4, v0, v2

    goto :goto_0
.end method
