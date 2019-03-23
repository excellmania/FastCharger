.class final Lcom/google/android/a/e/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/d/e$a;,
        Lcom/google/android/a/e/d/e$b;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OggS"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/d/e;->a:I

    return-void
.end method

.method public static a(BII)I
    .locals 3

    shr-int v0, p0, p2

    const/16 v1, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/android/a/e/d/e$b;ILcom/google/android/a/e/d/e$a;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p2, Lcom/google/android/a/e/d/e$a;->b:I

    iput v0, p2, Lcom/google/android/a/e/d/e$a;->a:I

    :cond_0
    iget v0, p2, Lcom/google/android/a/e/d/e$a;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/a/e/d/e$b;->g:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/d/e$b;->j:[I

    iget v1, p2, Lcom/google/android/a/e/d/e$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lcom/google/android/a/e/d/e$a;->b:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/a/e/d/e$a;->a:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/a/e/d/e$a;->a:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/android/a/e/f;)V
    .locals 9

    const/16 v8, 0x67

    const/4 v2, 0x0

    const/16 v0, 0x800

    new-array v3, v0, [B

    array-length v0, v3

    :goto_0
    invoke-interface {p0}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-interface {p0}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-interface {p0, v3, v2, v0, v2}, Lcom/google/android/a/e/f;->b([BIIZ)Z

    move v1, v2

    :goto_1
    add-int/lit8 v4, v0, -0x3

    if-ge v1, v4, :cond_2

    aget-byte v4, v3, v1

    const/16 v5, 0x4f

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v3, v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v3, v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_1

    invoke-interface {p0, v1}, Lcom/google/android/a/e/f;->b(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, -0x3

    invoke-interface {p0, v1}, Lcom/google/android/a/e/f;->b(I)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->a()V

    invoke-virtual {p1}, Lcom/google/android/a/e/d/e$b;->a()V

    invoke-interface {p0}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/a/e/f;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1b

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/google/android/a/h/o;->a:[B

    const/16 v3, 0x1b

    invoke-interface {p0, v2, v0, v3, v1}, Lcom/google/android/a/e/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    if-eqz p3, :cond_4

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v2

    sget v4, Lcom/google/android/a/e/d/e;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    if-nez p3, :cond_2

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "expected OggS capture pattern at begin of page"

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/a/h/o;->f()I

    move-result v2

    iput v2, p1, Lcom/google/android/a/e/d/e$b;->a:I

    iget v2, p1, Lcom/google/android/a/e/d/e$b;->a:I

    if-eqz v2, :cond_7

    if-nez p3, :cond_2

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "unsupported bit stream revision"

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/a/h/o;->f()I

    move-result v2

    iput v2, p1, Lcom/google/android/a/e/d/e$b;->b:I

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->p()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/a/e/d/e$b;->c:J

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/a/e/d/e$b;->d:J

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/a/e/d/e$b;->e:J

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->l()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/google/android/a/e/d/e$b;->f:J

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->f()I

    move-result v2

    iput v2, p1, Lcom/google/android/a/e/d/e$b;->g:I

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->a()V

    iget v2, p1, Lcom/google/android/a/e/d/e$b;->g:I

    add-int/lit8 v2, v2, 0x1b

    iput v2, p1, Lcom/google/android/a/e/d/e$b;->h:I

    iget-object v2, p2, Lcom/google/android/a/h/o;->a:[B

    iget v3, p1, Lcom/google/android/a/e/d/e$b;->g:I

    invoke-interface {p0, v2, v0, v3}, Lcom/google/android/a/e/f;->c([BII)V

    :goto_2
    iget v2, p1, Lcom/google/android/a/e/d/e$b;->g:I

    if-ge v0, v2, :cond_8

    iget-object v2, p1, Lcom/google/android/a/e/d/e$b;->j:[I

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->f()I

    move-result v3

    aput v3, v2, v0

    iget v2, p1, Lcom/google/android/a/e/d/e$b;->i:I

    iget-object v3, p1, Lcom/google/android/a/e/d/e$b;->j:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/android/a/e/d/e$b;->i:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1
.end method
