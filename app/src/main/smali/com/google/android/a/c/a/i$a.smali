.class public abstract Lcom/google/android/a/c/a/i$a;
.super Lcom/google/android/a/c/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field final d:I

.field final e:J

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/c/a/g;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/google/android/a/c/a/i;-><init>(Lcom/google/android/a/c/a/g;JJ)V

    iput p6, p0, Lcom/google/android/a/c/a/i$a;->d:I

    iput-wide p7, p0, Lcom/google/android/a/c/a/i$a;->e:J

    iput-object p9, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a(J)I
.end method

.method public a(JJ)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/a/c/a/i$a;->b()I

    move-result v0

    invoke-virtual {p0, p3, p4}, Lcom/google/android/a/c/a/i$a;->a(J)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$a;->e:J

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/a/c/a/i$a;->b:J

    div-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/a/c/a/i$a;->d:I

    div-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v2, v4

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    if-le v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :goto_1
    if-gt v2, v1, :cond_4

    add-int v3, v2, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/a/c/a/i$a;->a(I)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-gez v6, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v1, v4, p1

    if-lez v1, :cond_3

    add-int/lit8 v1, v3, -0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    if-ne v2, v0, :cond_5

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_1
.end method

.method public final a(I)J
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/a/c/a/i$a;->d:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/i$d;

    iget-wide v0, v0, Lcom/google/android/a/c/a/i$d;->a:J

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$a;->c:J

    sub-long/2addr v0, v2

    :goto_0
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/a/c/a/i$a;->b:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/google/android/a/c/a/i$a;->d:I

    sub-int v0, p1, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$a;->e:J

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public final a(IJ)J
    .locals 4

    const-wide/32 v2, 0xf4240

    iget-object v0, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/android/a/c/a/i$a;->d:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/i$d;

    iget-wide v0, v0, Lcom/google/android/a/c/a/i$d;->b:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$a;->b:J

    div-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/google/android/a/c/a/i$a;->a(J)I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/a/c/a/i$a;->a(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/a/c/a/i$a;->e:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/c/a/i$a;->b:J

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public abstract a(Lcom/google/android/a/c/a/h;I)Lcom/google/android/a/c/a/g;
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/c/a/i$a;->d:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/i$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
