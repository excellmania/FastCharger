.class public final Lcom/google/android/a/e/e/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/e/l$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/e/e/m;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/e/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/a/h/o;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/a/e/g;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/a/e/e/m;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/a/e/e/m;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/a/e/e/l;-><init>(Lcom/google/android/a/e/e/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/e/e/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/e/l;->a:Lcom/google/android/a/e/e/m;

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/l;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 8

    const/4 v7, 0x2

    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    const/4 v3, 0x4

    invoke-interface {p1, v2, v1, v3, v6}, Lcom/google/android/a/e/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    const/16 v3, 0x1b9

    if-eq v2, v3, :cond_0

    const/16 v0, 0x1ba

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/a/e/f;->c([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x1bb

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v0, v1, v7}, Lcom/google/android/a/e/f;->c([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_3
    and-int/lit16 v0, v2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v6, :cond_4

    invoke-interface {p1, v6}, Lcom/google/android/a/e/f;->b(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    and-int/lit16 v3, v2, 0xff

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/e/l$a;

    iget-boolean v2, p0, Lcom/google/android/a/e/e/l;->d:Z

    if-nez v2, :cond_9

    if-nez v0, :cond_6

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/google/android/a/e/e/l;->e:Z

    if-nez v4, :cond_a

    const/16 v4, 0xbd

    if-ne v3, v4, :cond_a

    new-instance v2, Lcom/google/android/a/e/e/a;

    iget-object v4, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    invoke-interface {v4, v3}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/google/android/a/e/e/a;-><init>(Lcom/google/android/a/e/m;Z)V

    iput-boolean v6, p0, Lcom/google/android/a/e/e/l;->e:Z

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    new-instance v0, Lcom/google/android/a/e/e/l$a;

    iget-object v4, p0, Lcom/google/android/a/e/e/l;->a:Lcom/google/android/a/e/e/m;

    invoke-direct {v0, v2, v4}, Lcom/google/android/a/e/e/l$a;-><init>(Lcom/google/android/a/e/e/e;Lcom/google/android/a/e/e/m;)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    iget-boolean v2, p0, Lcom/google/android/a/e/e/l;->e:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/a/e/e/l;->f:Z

    if-nez v2, :cond_8

    :cond_7
    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    :cond_8
    iput-boolean v6, p0, Lcom/google/android/a/e/e/l;->d:Z

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    invoke-interface {v2}, Lcom/google/android/a/e/g;->a()V

    :cond_9
    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v2, v1, v7}, Lcom/google/android/a/e/f;->c([BII)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    if-nez v0, :cond_c

    invoke-interface {p1, v2}, Lcom/google/android/a/e/f;->b(I)V

    :goto_2
    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/google/android/a/e/e/l;->e:Z

    if-nez v4, :cond_b

    and-int/lit16 v4, v3, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_b

    new-instance v2, Lcom/google/android/a/e/e/j;

    iget-object v4, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    invoke-interface {v4, v3}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/a/e/e/j;-><init>(Lcom/google/android/a/e/m;)V

    iput-boolean v6, p0, Lcom/google/android/a/e/e/l;->e:Z

    goto :goto_1

    :cond_b
    iget-boolean v4, p0, Lcom/google/android/a/e/e/l;->f:Z

    if-nez v4, :cond_5

    and-int/lit16 v4, v3, 0xf0

    const/16 v5, 0xe0

    if-ne v4, v5, :cond_5

    new-instance v2, Lcom/google/android/a/e/e/f;

    iget-object v4, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    invoke-interface {v4, v3}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/a/e/e/f;-><init>(Lcom/google/android/a/e/m;)V

    iput-boolean v6, p0, Lcom/google/android/a/e/e/l;->f:Z

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->e()I

    move-result v3

    if-ge v3, v2, :cond_d

    iget-object v3, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    new-array v4, v2, [B

    invoke-virtual {v3, v4, v2}, Lcom/google/android/a/h/o;->a([BI)V

    :cond_d
    iget-object v3, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v3, v3, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v3, v1, v2}, Lcom/google/android/a/e/f;->b([BII)V

    iget-object v3, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v3, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v3, v2}, Lcom/google/android/a/h/o;->a(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v3, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/e/e/l$a;->a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/g;)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/e/l;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->a(I)V

    goto :goto_2
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/e/e/l;->g:Lcom/google/android/a/e/g;

    sget-object v0, Lcom/google/android/a/e/l;->f:Lcom/google/android/a/e/l;

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xe

    new-array v2, v2, [B

    const/16 v3, 0xe

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/a/e/f;->c([BII)V

    const/16 v3, 0x1ba

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v5, v2, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, v2, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v2, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    aget-byte v3, v2, v7

    and-int/lit16 v3, v3, 0xc4

    const/16 v4, 0x44

    if-ne v3, v4, :cond_0

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_0

    const/16 v3, 0x8

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_0

    const/16 v3, 0x9

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    const/16 v3, 0xc

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3

    if-ne v3, v6, :cond_0

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x7

    invoke-interface {p1, v3}, Lcom/google/android/a/e/f;->c(I)V

    invoke-interface {p1, v2, v1, v6}, Lcom/google/android/a/e/f;->c([BII)V

    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->a:Lcom/google/android/a/e/e/m;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/m;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/l;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/e/l$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/l$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
