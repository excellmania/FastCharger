.class public final Lcom/google/android/a/e/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# static fields
.field private static final a:I


# instance fields
.field private final b:J

.field private final c:Lcom/google/android/a/h/o;

.field private d:Lcom/google/android/a/e/e/c;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/e/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/e/b;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/e/e/b;->b:J

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/e/b;->c:Lcom/google/android/a/h/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/a/e/e/b;->c:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    const/16 v3, 0xc8

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/a/e/f;->a([BII)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/b;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/b;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->a(I)V

    iget-boolean v0, p0, Lcom/google/android/a/e/e/b;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/e/b;->d:Lcom/google/android/a/e/e/c;

    iget-wide v2, p0, Lcom/google/android/a/e/e/b;->b:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/a/e/e/c;->a(JZ)V

    iput-boolean v4, p0, Lcom/google/android/a/e/e/b;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/b;->d:Lcom/google/android/a/e/e/c;

    iget-object v2, p0, Lcom/google/android/a/e/e/b;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/e/c;->a(Lcom/google/android/a/h/o;)V

    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 3

    new-instance v0, Lcom/google/android/a/e/e/c;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/c;-><init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/m;)V

    iput-object v0, p0, Lcom/google/android/a/e/e/b;->d:Lcom/google/android/a/e/e/c;

    invoke-interface {p1}, Lcom/google/android/a/e/g;->a()V

    sget-object v0, Lcom/google/android/a/e/l;->f:Lcom/google/android/a/e/l;

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 11

    const/16 v7, 0xa

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v1, 0x0

    new-instance v5, Lcom/google/android/a/h/o;

    invoke-direct {v5, v7}, Lcom/google/android/a/h/o;-><init>(I)V

    new-instance v6, Lcom/google/android/a/h/n;

    iget-object v0, v5, Lcom/google/android/a/h/o;->a:[B

    invoke-direct {v6, v0}, Lcom/google/android/a/h/n;-><init>([B)V

    move v0, v1

    :goto_0
    iget-object v2, v5, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v2, v1, v7}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-virtual {v5, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->j()I

    move-result v2

    sget v3, Lcom/google/android/a/e/e/b;->a:I

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->c(I)V

    move v2, v1

    move v3, v1

    move v4, v0

    :goto_1
    iget-object v7, v5, Lcom/google/android/a/h/o;->a:[B

    const/4 v8, 0x2

    invoke-interface {p1, v7, v1, v8}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-virtual {v5, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->g()I

    move-result v7

    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_3

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v2, v4, v0

    const/16 v3, 0x2000

    if-lt v2, v3, :cond_2

    :cond_0
    :goto_2
    return v1

    :cond_1
    iget-object v2, v5, Lcom/google/android/a/h/o;->a:[B

    aget-byte v2, v2, v10

    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x15

    iget-object v3, v5, Lcom/google/android/a/h/o;->a:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    iget-object v3, v5, Lcom/google/android/a/h/o;->a:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    iget-object v3, v5, Lcom/google/android/a/h/o;->a:[B

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    or-int/2addr v2, v3

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v0, v3

    invoke-interface {p1, v2}, Lcom/google/android/a/e/f;->c(I)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Lcom/google/android/a/e/f;->c(I)V

    move v2, v1

    move v3, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_4

    const/16 v7, 0xbc

    if-le v3, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, v5, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v7, v1, v9}, Lcom/google/android/a/e/f;->c([BII)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/google/android/a/h/n;->a(I)V

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v7

    if-le v7, v10, :cond_0

    add-int/lit8 v8, v7, -0x6

    invoke-interface {p1, v8}, Lcom/google/android/a/e/f;->c(I)V

    add-int/2addr v3, v7

    goto :goto_1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/b;->e:Z

    iget-object v0, p0, Lcom/google/android/a/e/e/b;->d:Lcom/google/android/a/e/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/c;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
