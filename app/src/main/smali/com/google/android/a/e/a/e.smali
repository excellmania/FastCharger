.class final Lcom/google/android/a/e/a/e;
.super Lcom/google/android/a/e/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/a/e$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/a/h/o;

.field private final c:Lcom/google/android/a/h/o;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/a/e/a/d;-><init>(Lcom/google/android/a/e/m;)V

    new-instance v0, Lcom/google/android/a/h/o;

    sget-object v1, Lcom/google/android/a/h/m;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/a/e;->b:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/a/e;->c:Lcom/google/android/a/h/o;

    return-void
.end method

.method private b(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/a/e$a;
    .locals 8

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    and-int/lit8 v6, v0, 0x1f

    move v0, v3

    :goto_1
    if-ge v0, v6, :cond_1

    invoke-static {p1}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/o;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v5

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_2

    invoke-static {p1}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/o;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v6, :cond_3

    new-instance v4, Lcom/google/android/a/h/n;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v4, v0}, Lcom/google/android/a/h/n;-><init>([B)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/google/android/a/h/n;->a(I)V

    invoke-static {v4}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$b;

    move-result-object v0

    iget v3, v0, Lcom/google/android/a/h/m$b;->b:I

    iget v4, v0, Lcom/google/android/a/h/m$b;->c:I

    iget v5, v0, Lcom/google/android/a/h/m$b;->d:F

    :goto_3
    new-instance v0, Lcom/google/android/a/e/a/e$a;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/a/e$a;-><init>(Ljava/util/List;IIIF)V

    return-object v0

    :cond_3
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method protected a(Lcom/google/android/a/h/o;J)V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->j()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    add-long v8, p2, v4

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/a/e/a/e;->e:Z

    if-nez v3, :cond_1

    new-instance v1, Lcom/google/android/a/h/o;

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Lcom/google/android/a/h/o;-><init>([B)V

    iget-object v3, v1, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v4

    invoke-virtual {p1, v3, v6, v4}, Lcom/google/android/a/h/o;->a([BII)V

    invoke-direct {p0, v1}, Lcom/google/android/a/e/a/e;->b(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/a/e$a;

    move-result-object v3

    iget v1, v3, Lcom/google/android/a/e/a/e$a;->b:I

    iput v1, p0, Lcom/google/android/a/e/a/e;->d:I

    const-string v1, "video/avc"

    invoke-virtual {p0}, Lcom/google/android/a/e/a/e;->a()J

    move-result-wide v4

    iget v6, v3, Lcom/google/android/a/e/a/e$a;->d:I

    iget v7, v3, Lcom/google/android/a/e/a/e$a;->e:I

    iget-object v8, v3, Lcom/google/android/a/e/a/e$a;->a:Ljava/util/List;

    iget v10, v3, Lcom/google/android/a/e/a/e$a;->c:F

    move v3, v2

    move v9, v2

    invoke-static/range {v0 .. v10}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/a/e;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iput-boolean v11, p0, Lcom/google/android/a/e/a/e;->e:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v11, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/a/e;->c:Lcom/google/android/a/h/o;

    iget-object v1, v1, Lcom/google/android/a/h/o;->a:[B

    aput-byte v6, v1, v6

    aput-byte v6, v1, v11

    const/4 v2, 0x2

    aput-byte v6, v1, v2

    iget v1, p0, Lcom/google/android/a/e/a/e;->d:I

    rsub-int/lit8 v1, v1, 0x4

    move v5, v6

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/a/e/a/e;->c:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/e/a/e;->d:I

    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/a/h/o;->a([BII)V

    iget-object v2, p0, Lcom/google/android/a/e/a/e;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/a/e;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->s()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/a/e/a/e;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v3, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v3, p0, Lcom/google/android/a/e/a/e;->a:Lcom/google/android/a/e/m;

    iget-object v4, p0, Lcom/google/android/a/e/a/e;->b:Lcom/google/android/a/h/o;

    const/4 v7, 0x4

    invoke-interface {v3, v4, v7}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    add-int/lit8 v3, v5, 0x4

    iget-object v4, p0, Lcom/google/android/a/e/a/e;->a:Lcom/google/android/a/e/m;

    invoke-interface {v4, p1, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    add-int v5, v3, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/a/e/a/e;->a:Lcom/google/android/a/e/m;

    iget v2, p0, Lcom/google/android/a/e/a/e;->f:I

    if-ne v2, v11, :cond_3

    move v4, v11

    :goto_2
    move-wide v2, v8

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method protected a(Lcom/google/android/a/h/o;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    new-instance v1, Lcom/google/android/a/e/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/a/e/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput v1, p0, Lcom/google/android/a/e/a/e;->f:I

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
