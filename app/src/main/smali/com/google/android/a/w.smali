.class public abstract Lcom/google/android/a/w;
.super Lcom/google/android/a/z;


# instance fields
.field private final a:[Lcom/google/android/a/v$a;

.field private b:[I

.field private c:[I

.field private d:Lcom/google/android/a/v$a;

.field private e:I

.field private f:J


# direct methods
.method public varargs constructor <init>([Lcom/google/android/a/v;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/a/z;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/a/v$a;

    iput-object v0, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/android/a/v;->b_()Lcom/google/android/a/v$a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/v$a;)V
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/a/v$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/a/g;

    invoke-direct {v1, v0}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget v1, p0, Lcom/google/android/a/w;->e:I

    invoke-interface {v0, v1}, Lcom/google/android/a/v$a;->b(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/w;->a(J)V

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method protected final a(JLcom/google/android/a/s;Lcom/google/android/a/u;)I
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget v1, p0, Lcom/google/android/a/w;->e:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/a/v$a;->a(IJLcom/google/android/a/s;Lcom/google/android/a/u;)I

    move-result v0

    return v0
.end method

.method protected a(IJZ)V
    .locals 4

    invoke-virtual {p0, p2, p3}, Lcom/google/android/a/w;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    iget-object v3, p0, Lcom/google/android/a/w;->b:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget-object v2, p0, Lcom/google/android/a/w;->c:[I

    aget v2, v2, p1

    iput v2, p0, Lcom/google/android/a/w;->e:I

    iget-object v2, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget v3, p0, Lcom/google/android/a/w;->e:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/a/v$a;->a(IJ)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/w;->a(J)V

    return-void
.end method

.method protected abstract a(J)V
.end method

.method protected final a(JJ)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/w;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget v3, p0, Lcom/google/android/a/w;->e:I

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/a/v$a;->b(IJ)Z

    move-result v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/w;->b(J)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/a/w;->a(JJZ)V

    return-void
.end method

.method protected abstract a(JJZ)V
.end method

.method protected abstract a(Lcom/google/android/a/r;)Z
.end method

.method protected final b(I)Lcom/google/android/a/r;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    iget-object v1, p0, Lcom/google/android/a/w;->b:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/a/w;->c:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/google/android/a/v$a;->a(I)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0
.end method

.method protected final c(J)Z
    .locals 17

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v4, v4, v2

    move-wide/from16 v0, p1

    invoke-interface {v4, v0, v1}, Lcom/google/android/a/v$a;->a(J)Z

    move-result v4

    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/a/v$a;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    new-array v8, v3, [I

    new-array v9, v3, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    array-length v10, v2

    const/4 v2, 0x0

    move v3, v4

    move-wide v4, v6

    move v6, v2

    :goto_3
    if-ge v6, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v7, v2, v6

    invoke-interface {v7}, Lcom/google/android/a/v$a;->c()I

    move-result v11

    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_4
    if-ge v3, v11, :cond_6

    invoke-interface {v7, v3}, Lcom/google/android/a/v$a;->a(I)Lcom/google/android/a/r;

    move-result-object v12

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/a/w;->a(Lcom/google/android/a/r;)Z
    :try_end_0
    .catch Lcom/google/android/a/p$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_3

    aput v6, v8, v2

    aput v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v14, -0x1

    cmp-long v13, v4, v14

    if-nez v13, :cond_4

    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/android/a/g;

    invoke-direct {v3, v2}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    iget-wide v12, v12, Lcom/google/android/a/r;->e:J

    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-nez v14, :cond_5

    const-wide/16 v4, -0x1

    goto :goto_5

    :cond_5
    const-wide/16 v14, -0x2

    cmp-long v14, v12, v14

    if-eqz v14, :cond_3

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/a/w;->f:J

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/a/w;->b:[I

    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/a/w;->c:[I

    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method protected final d(J)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/w;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    invoke-interface {v2, v0, v1}, Lcom/google/android/a/v$a;->b(J)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/w;->b(J)J

    return-void
.end method

.method protected e(J)J
    .locals 1

    return-wide p1
.end method

.method protected g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    iget v1, p0, Lcom/google/android/a/w;->e:I

    invoke-interface {v0, v1}, Lcom/google/android/a/v$a;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    return-void
.end method

.method protected p()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    invoke-interface {v0}, Lcom/google/android/a/v$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected q()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/w;->f:J

    return-wide v0
.end method

.method protected r()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/w;->d:Lcom/google/android/a/v$a;

    invoke-direct {p0, v0}, Lcom/google/android/a/w;->a(Lcom/google/android/a/v$a;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/a/w;->a(Lcom/google/android/a/v$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected s()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/a/w;->a:[Lcom/google/android/a/v$a;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/a/v$a;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final t()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/w;->c:[I

    array-length v0, v0

    return v0
.end method
