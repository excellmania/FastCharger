.class public final Lcom/google/android/a/h/o;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/a/h/o;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/h/o;->a:[B

    array-length v0, p1

    iput v0, p0, Lcom/google/android/a/h/o;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/h/o;->a:[B

    iput p2, p0, Lcom/google/android/a/h/o;->c:I

    return-void
.end method


# virtual methods
.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/a/h/o;->b:I

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/h/o;->b:I

    iput v0, p0, Lcom/google/android/a/h/o;->c:I

    return-void
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->a(Z)V

    iput p1, p0, Lcom/google/android/a/h/o;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/h/n;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/a/h/n;->a:[B

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/a/h/o;->a([BII)V

    invoke-virtual {p1, v1}, Lcom/google/android/a/h/n;->a(I)V

    return-void
.end method

.method public a([BI)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/h/o;->a:[B

    iput p2, p0, Lcom/google/android/a/h/o;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/h/o;->b:I

    return-void
.end method

.method public a([BII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/a/h/o;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/a/h/o;->b:I

    return-void
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/google/android/a/h/o;->c:I

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/a/h/o;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->a(Z)V

    iput p1, p0, Lcom/google/android/a/h/o;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/h/o;->c:I

    return v0
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/a/h/o;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/h/o;->b:I

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/a/h/o;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public f()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public g()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public i()S
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public j()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public k()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public l()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public m()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public o()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public p()J
    .locals 8

    const-wide/16 v6, 0xff

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public q()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/a/h/o;->b:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/a/h/o;->b:I

    return v0
.end method

.method public r()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public s()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public t()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->n()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public u()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public v()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public w()J
    .locals 11

    const/4 v5, 0x7

    const/4 v10, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/a/h/o;->a:[B

    iget v3, p0, Lcom/google/android/a/h/o;->b:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    move v4, v5

    :goto_0
    if-ltz v4, :cond_0

    shl-int v6, v0, v4

    int-to-long v6, v6

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    if-ge v4, v10, :cond_1

    shl-int v1, v0, v4

    add-int/lit8 v1, v1, -0x1

    int-to-long v6, v1

    and-long/2addr v2, v6

    rsub-int/lit8 v1, v4, 0x7

    :cond_0
    :goto_1
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ne v4, v5, :cond_0

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    shl-long/2addr v2, v10

    and-int/lit8 v4, v4, 0x3f

    int-to-long v4, v4

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-ge v0, v1, :cond_5

    iget-object v4, p0, Lcom/google/android/a/h/o;->a:[B

    iget v5, p0, Lcom/google/android/a/h/o;->b:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    and-int/lit16 v5, v4, 0xc0

    const/16 v6, 0x80

    if-eq v5, v6, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lcom/google/android/a/h/o;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/h/o;->b:I

    return-wide v2
.end method
