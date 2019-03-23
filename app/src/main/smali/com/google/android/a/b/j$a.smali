.class public final Lcom/google/android/a/b/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/g/d;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/d;)V
    .locals 7

    const/16 v4, 0x61a8

    const v2, 0xc3500

    const/16 v3, 0x2710

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/b/j$a;-><init>(Lcom/google/android/a/g/d;IIIIF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/g/d;IIIIF)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/b/j$a;->a:Lcom/google/android/a/g/d;

    iput p2, p0, Lcom/google/android/a/b/j$a;->b:I

    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/b/j$a;->c:J

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/b/j$a;->d:J

    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/b/j$a;->e:J

    iput p6, p0, Lcom/google/android/a/b/j$a;->f:F

    return-void
.end method

.method private a([Lcom/google/android/a/b/i;J)Lcom/google/android/a/b/i;
    .locals 6

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/b/j$a;->b:I

    int-to-long v0, v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    iget v4, v3, Lcom/google/android/a/b/i;->c:I

    int-to-long v4, v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_1

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    long-to-float v0, p2

    iget v1, p0, Lcom/google/android/a/b/j$a;->f:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;J[Lcom/google/android/a/b/i;Lcom/google/android/a/b/j$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/a/b/m;",
            ">;J[",
            "Lcom/google/android/a/b/i;",
            "Lcom/google/android/a/b/j$b;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v3, p5, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    iget-object v4, p0, Lcom/google/android/a/b/j$a;->a:Lcom/google/android/a/g/d;

    invoke-interface {v4}, Lcom/google/android/a/g/d;->a()J

    move-result-wide v6

    invoke-direct {p0, p4, v6, v7}, Lcom/google/android/a/b/j$a;->a([Lcom/google/android/a/b/i;J)Lcom/google/android/a/b/i;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget v6, v4, Lcom/google/android/a/b/i;->c:I

    iget v7, v3, Lcom/google/android/a/b/i;->c:I

    if-le v6, v7, :cond_3

    move v6, v2

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget v7, v4, Lcom/google/android/a/b/i;->c:I

    iget v8, v3, Lcom/google/android/a/b/i;->c:I

    if-ge v7, v8, :cond_0

    move v5, v2

    :cond_0
    if-eqz v6, :cond_7

    iget-wide v6, p0, Lcom/google/android/a/b/j$a;->c:J

    cmp-long v5, v0, v6

    if-gez v5, :cond_4

    move-object v0, v3

    :goto_2
    if-eqz v3, :cond_1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    iput v1, p5, Lcom/google/android/a/b/j$b;->b:I

    :cond_1
    iput-object v0, p5, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/m;

    iget-wide v0, v0, Lcom/google/android/a/b/m;->i:J

    sub-long/2addr v0, p2

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    iget-wide v6, p0, Lcom/google/android/a/b/j$a;->e:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_8

    move v1, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/m;

    iget-wide v6, v0, Lcom/google/android/a/b/m;->h:J

    sub-long/2addr v6, p2

    iget-wide v8, p0, Lcom/google/android/a/b/j$a;->e:J

    cmp-long v2, v6, v8

    if-ltz v2, :cond_6

    iget-object v2, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget v2, v2, Lcom/google/android/a/b/i;->c:I

    iget v5, v4, Lcom/google/android/a/b/i;->c:I

    if-ge v2, v5, :cond_6

    iget-object v2, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget v2, v2, Lcom/google/android/a/b/i;->e:I

    iget v5, v4, Lcom/google/android/a/b/i;->e:I

    if-ge v2, v5, :cond_6

    iget-object v2, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget v2, v2, Lcom/google/android/a/b/i;->e:I

    const/16 v5, 0x2d0

    if-ge v2, v5, :cond_6

    iget-object v0, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget v0, v0, Lcom/google/android/a/b/i;->d:I

    const/16 v2, 0x500

    if-ge v0, v2, :cond_6

    iput v1, p5, Lcom/google/android/a/b/j$b;->a:I

    :cond_5
    move-object v0, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    iget-wide v6, p0, Lcom/google/android/a/b/j$a;->d:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_8

    move-object v0, v3

    goto :goto_2

    :cond_8
    move-object v0, v4

    goto :goto_2
.end method

.method public b()V
    .locals 0

    return-void
.end method
