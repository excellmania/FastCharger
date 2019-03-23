.class final Lcom/google/android/a/e/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/k$1;,
        Lcom/google/android/a/e/k$b;,
        Lcom/google/android/a/e/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/g/b;

.field private final b:I

.field private final c:Lcom/google/android/a/e/k$a;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/a/e/k$b;

.field private final f:Lcom/google/android/a/h/o;

.field private g:J

.field private h:J

.field private i:Lcom/google/android/a/g/a;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/k;->a:Lcom/google/android/a/g/b;

    invoke-interface {p1}, Lcom/google/android/a/g/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/k;->b:I

    new-instance v0, Lcom/google/android/a/e/k$a;

    invoke-direct {v0}, Lcom/google/android/a/e/k$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/google/android/a/e/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/a/e/k$b;-><init>(Lcom/google/android/a/e/k$1;)V

    iput-object v0, p0, Lcom/google/android/a/e/k;->e:Lcom/google/android/a/e/k$b;

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    return-void
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 5

    :goto_0
    if-lez p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/a/e/k;->c(J)V

    iget-wide v0, p0, Lcom/google/android/a/e/k;->g:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    iget-object v3, v0, Lcom/google/android/a/g/a;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/android/a/g/a;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v0, v2

    add-long/2addr p1, v0

    sub-int/2addr p4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/a/e/k;->c(J)V

    iget-wide v2, p0, Lcom/google/android/a/e/k;->g:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/android/a/e/k;->b:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    iget-object v4, v0, Lcom/google/android/a/g/a;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/android/a/g/a;->a(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v3

    add-long/2addr p1, v4

    add-int v0, v1, v3

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/u;Lcom/google/android/a/e/k$b;)V
    .locals 12

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-wide v0, p2, Lcom/google/android/a/e/k$b;->a:J

    iget-object v2, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/google/android/a/e/k;->a(J[BI)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    aget-byte v1, v0, v4

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_5

    move v0, v6

    :goto_0
    and-int/lit8 v1, v1, 0x7f

    iget-object v5, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v5, v5, Lcom/google/android/a/d;->a:[B

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v5, Lcom/google/android/a/d;->a:[B

    :cond_0
    iget-object v5, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v5, v5, Lcom/google/android/a/d;->a:[B

    invoke-direct {p0, v2, v3, v5, v1}, Lcom/google/android/a/e/k;->a(J[BI)V

    int-to-long v8, v1

    add-long/2addr v2, v8

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    iget-object v1, v1, Lcom/google/android/a/h/o;->a:[B

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/google/android/a/e/k;->a(J[BI)V

    const-wide/16 v8, 0x2

    add-long/2addr v2, v8

    iget-object v1, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v1, v4}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v1, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->g()I

    move-result v1

    move-wide v8, v2

    :goto_1
    iget-object v2, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v2, v2, Lcom/google/android/a/d;->d:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    :cond_1
    new-array v2, v1, [I

    :cond_2
    iget-object v3, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v3, v3, Lcom/google/android/a/d;->e:[I

    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v1, :cond_4

    :cond_3
    new-array v3, v1, [I

    :cond_4
    if-eqz v0, :cond_7

    mul-int/lit8 v0, v1, 0x6

    iget-object v5, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-static {v5, v0}, Lcom/google/android/a/e/k;->b(Lcom/google/android/a/h/o;I)V

    iget-object v5, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    iget-object v5, v5, Lcom/google/android/a/h/o;->a:[B

    invoke-direct {p0, v8, v9, v5, v0}, Lcom/google/android/a/e/k;->a(J[BI)V

    int-to-long v10, v0

    add-long/2addr v8, v10

    iget-object v0, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/o;->b(I)V

    :goto_2
    if-ge v4, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->g()I

    move-result v0

    aput v0, v2, v4

    iget-object v0, p0, Lcom/google/android/a/e/k;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->s()I

    move-result v0

    aput v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    move v1, v6

    move-wide v8, v2

    goto :goto_1

    :cond_7
    aput v4, v2, v4

    iget v0, p1, Lcom/google/android/a/u;->c:I

    iget-wide v10, p2, Lcom/google/android/a/e/k$b;->a:J

    sub-long v10, v8, v10

    long-to-int v5, v10

    sub-int/2addr v0, v5

    aput v0, v3, v4

    :cond_8
    iget-object v0, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v4, p2, Lcom/google/android/a/e/k$b;->b:[B

    iget-object v5, p1, Lcom/google/android/a/u;->a:Lcom/google/android/a/d;

    iget-object v5, v5, Lcom/google/android/a/d;->a:[B

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/a/d;->a(I[I[I[B[BI)V

    iget-wide v0, p2, Lcom/google/android/a/e/k$b;->a:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    iget-wide v2, p2, Lcom/google/android/a/e/k$b;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/a/e/k$b;->a:J

    iget v1, p1, Lcom/google/android/a/u;->c:I

    sub-int v0, v1, v0

    iput v0, p1, Lcom/google/android/a/u;->c:I

    return-void
.end method

.method private b(I)I
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/k;->j:I

    iget v1, p0, Lcom/google/android/a/e/k;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    iget-object v0, p0, Lcom/google/android/a/e/k;->a:Lcom/google/android/a/g/b;

    invoke-interface {v0}, Lcom/google/android/a/g/b;->a()Lcom/google/android/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    iget v1, p0, Lcom/google/android/a/e/k;->j:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private b(J)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/a/e/k;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/a/e/k;->b:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/google/android/a/e/k;->b:I

    rem-int v2, v0, v2

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/google/android/a/e/k;->a:Lcom/google/android/a/g/b;

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    invoke-interface {v4, v0}, Lcom/google/android/a/g/b;->a(Lcom/google/android/a/g/a;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    iput-object v0, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    if-nez v2, :cond_1

    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    :goto_2
    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/a/h/o;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->c()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/android/a/h/o;->a([BI)V

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 9

    iget-wide v0, p0, Lcom/google/android/a/e/k;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/a/e/k;->b:I

    div-int v2, v0, v1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/a/e/k;->a:Lcom/google/android/a/g/b;

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    invoke-interface {v3, v0}, Lcom/google/android/a/g/b;->a(Lcom/google/android/a/g/a;)V

    iget-wide v4, p0, Lcom/google/android/a/e/k;->g:J

    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/a/e/k;->g:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;IZ)I
    .locals 6

    const/4 v0, -0x1

    invoke-direct {p0, p2}, Lcom/google/android/a/e/k;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget-object v2, v2, Lcom/google/android/a/g/a;->a:[B

    iget-object v3, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget v4, p0, Lcom/google/android/a/e/k;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/a/g/a;->a(I)I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/a/e/f;->a([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/a/e/k;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    iget-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/g/f;IZ)I
    .locals 6

    const/4 v0, -0x1

    invoke-direct {p0, p2}, Lcom/google/android/a/e/k;->b(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget-object v2, v2, Lcom/google/android/a/g/a;->a:[B

    iget-object v3, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget v4, p0, Lcom/google/android/a/e/k;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/a/g/a;->a(I)I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/a/g/f;->a([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/a/e/k;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    iget-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    move v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/k$a;->a()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/k;->a:Lcom/google/android/a/g/b;

    iget-object v0, p0, Lcom/google/android/a/e/k;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/a;

    invoke-interface {v1, v0}, Lcom/google/android/a/g/b;->a(Lcom/google/android/a/g/a;)V

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/google/android/a/e/k;->g:J

    iput-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget v0, p0, Lcom/google/android/a/e/k;->b:I

    iput v0, p0, Lcom/google/android/a/e/k;->j:I

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/k$a;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/k;->h:J

    iget-wide v0, p0, Lcom/google/android/a/e/k;->h:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/k;->b(J)V

    return-void
.end method

.method public a(JIJI[B)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/a/e/k$a;->a(JIJI[B)V

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;I)V
    .locals 6

    :goto_0
    if-lez p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/a/e/k;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget-object v1, v1, Lcom/google/android/a/g/a;->a:[B

    iget-object v2, p0, Lcom/google/android/a/e/k;->i:Lcom/google/android/a/g/a;

    iget v3, p0, Lcom/google/android/a/e/k;->j:I

    invoke-virtual {v2, v3}, Lcom/google/android/a/g/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/a/h/o;->a([BII)V

    iget v1, p0, Lcom/google/android/a/e/k;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/a/e/k;->j:I

    iget-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/k;->h:J

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/k$a;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/k;->c(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/u;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    iget-object v1, p0, Lcom/google/android/a/e/k;->e:Lcom/google/android/a/e/k$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/e/k$a;->a(Lcom/google/android/a/u;Lcom/google/android/a/e/k$b;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/k$a;->b()I

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/a/u;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    iget-object v1, p0, Lcom/google/android/a/e/k;->e:Lcom/google/android/a/e/k$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/e/k$a;->a(Lcom/google/android/a/u;Lcom/google/android/a/e/k$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/k;->e:Lcom/google/android/a/e/k$b;

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/e/k;->a(Lcom/google/android/a/u;Lcom/google/android/a/e/k$b;)V

    :cond_1
    iget v0, p1, Lcom/google/android/a/u;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/a/u;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/k;->e:Lcom/google/android/a/e/k$b;

    iget-wide v0, v0, Lcom/google/android/a/e/k$b;->a:J

    iget-object v2, p1, Lcom/google/android/a/u;->b:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/google/android/a/u;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/a/e/k;->a(JLjava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/k$a;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/k;->c(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/k$a;->c()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/k;->c:Lcom/google/android/a/e/k$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/k$a;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/k;->c(J)V

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/e/k;->h:J

    return-wide v0
.end method
