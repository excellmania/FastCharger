.class public final Lcom/google/android/a/e/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/b/c$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private final d:J

.field private final e:Lcom/google/android/a/h/o;

.field private final f:Lcom/google/android/a/h/l;

.field private g:Lcom/google/android/a/e/g;

.field private h:Lcom/google/android/a/e/m;

.field private i:I

.field private j:Lcom/google/android/a/e/i;

.field private k:Lcom/google/android/a/e/b/c$a;

.field private l:J

.field private m:J

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/b/c;->a:I

    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/b/c;->b:I

    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/b/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/b/c;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/e/b/c;->d:J

    new-instance v0, Lcom/google/android/a/h/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/l;

    invoke-direct {v0}, Lcom/google/android/a/h/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/b/c;->l:J

    return-void
.end method

.method private a(Lcom/google/android/a/e/f;Z)Z
    .locals 11

    const/4 v10, 0x4

    const v9, -0x1f400

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/google/android/a/e/b/b;->a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    invoke-interface {p1}, Lcom/google/android/a/e/f;->b()J

    move-result-wide v0

    long-to-int v0, v0

    if-nez p2, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    :cond_0
    move v6, v0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    if-eqz p2, :cond_2

    const/16 v0, 0x1000

    if-ne v4, v0, :cond_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    if-nez p2, :cond_3

    const/high16 v0, 0x20000

    if-ne v4, v0, :cond_3

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Searched too many bytes."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v0, v2, v10, v5}, Lcom/google/android/a/e/f;->b([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    if-eqz v1, :cond_4

    and-int v7, v0, v9

    and-int v8, v1, v9

    if-ne v7, v8, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/google/android/a/h/l;->a(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    :cond_5
    add-int/lit8 v0, v4, 0x1

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    add-int v1, v6, v0

    invoke-interface {p1, v1}, Lcom/google/android/a/e/f;->c(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_6
    invoke-interface {p1, v5}, Lcom/google/android/a/e/f;->b(I)V

    move v1, v2

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_8

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    invoke-static {v0, v1}, Lcom/google/android/a/h/l;->a(ILcom/google/android/a/h/l;)Z

    :goto_3
    add-int/lit8 v1, v7, -0x4

    invoke-interface {p1, v1}, Lcom/google/android/a/e/f;->c(I)V

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_8
    if-ne v3, v10, :cond_a

    if-eqz p2, :cond_9

    add-int v0, v6, v4

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    :goto_4
    iput v1, p0, Lcom/google/android/a/e/b/c;->i:I

    move v2, v5

    goto :goto_1

    :cond_9
    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v6, v2

    move v1, v2

    move v3, v2

    move v4, v2

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/e/f;)I
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v6, 0x0

    iget v1, p0, Lcom/google/android/a/e/b/c;->n:I

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/a/e/b/c;->c(Lcom/google/android/a/e/f;)Z

    move-result v1

    if-nez v1, :cond_1

    move v6, v0

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-wide v2, p0, Lcom/google/android/a/e/b/c;->l:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/a/e/b/c$a;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/a/e/b/c;->l:J

    iget-wide v2, p0, Lcom/google/android/a/e/b/c;->d:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/a/e/b/c$a;->a(J)J

    move-result-wide v2

    iget-wide v8, p0, Lcom/google/android/a/e/b/c;->l:J

    iget-wide v10, p0, Lcom/google/android/a/e/b/c;->d:J

    sub-long v2, v10, v2

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/a/e/b/c;->l:J

    :cond_2
    iget-object v1, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v1, v1, Lcom/google/android/a/h/l;->c:I

    iput v1, p0, Lcom/google/android/a/e/b/c;->n:I

    :cond_3
    iget-object v1, p0, Lcom/google/android/a/e/b/c;->h:Lcom/google/android/a/e/m;

    iget v2, p0, Lcom/google/android/a/e/b/c;->n:I

    invoke-interface {v1, p1, v2, v4}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v1

    if-ne v1, v0, :cond_4

    move v6, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/a/e/b/c;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/b/c;->n:I

    iget v0, p0, Lcom/google/android/a/e/b/c;->n:I

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/e/b/c;->l:J

    iget-wide v2, p0, Lcom/google/android/a/e/b/c;->m:J

    const-wide/32 v8, 0xf4240

    mul-long/2addr v2, v8

    iget-object v5, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v5, v5, Lcom/google/android/a/h/l;->d:I

    int-to-long v8, v5

    div-long/2addr v2, v8

    add-long/2addr v2, v0

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->h:Lcom/google/android/a/e/m;

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v5, v0, Lcom/google/android/a/h/l;->c:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/android/a/e/b/c;->m:J

    iget-object v2, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v2, v2, Lcom/google/android/a/h/l;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/b/c;->m:J

    iput v6, p0, Lcom/google/android/a/e/b/c;->n:I

    goto :goto_0
.end method

.method private c(Lcom/google/android/a/e/f;)Z
    .locals 6

    const v5, -0x1f400

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    iget-object v2, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    const/4 v3, 0x4

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/google/android/a/e/f;->b([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v2, v0}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    and-int v3, v2, v5

    iget v4, p0, Lcom/google/android/a/e/b/c;->i:I

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/google/android/a/h/l;->a(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    invoke-static {v2, v0}, Lcom/google/android/a/h/l;->a(ILcom/google/android/a/h/l;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/android/a/e/b/c;->i:I

    invoke-interface {p1, v1}, Lcom/google/android/a/e/f;->b(I)V

    invoke-direct {p0, p1}, Lcom/google/android/a/e/b/c;->d(Lcom/google/android/a/e/f;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Lcom/google/android/a/e/f;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/a/e/b/c;->a(Lcom/google/android/a/e/f;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e(Lcom/google/android/a/e/f;)V
    .locals 10

    const/16 v0, 0x24

    const/16 v6, 0x15

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v1, Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v2, v2, Lcom/google/android/a/h/l;->c:I

    invoke-direct {v1, v2}, Lcom/google/android/a/h/o;-><init>(I)V

    iget-object v2, v1, Lcom/google/android/a/h/o;->a:[B

    iget-object v3, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v3, v3, Lcom/google/android/a/h/l;->c:I

    invoke-interface {p1, v2, v9, v3}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v4

    iget-object v7, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v7, v7, Lcom/google/android/a/h/l;->a:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v7, v7, Lcom/google/android/a/h/l;->e:I

    if-eq v7, v8, :cond_0

    move v6, v0

    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->m()I

    move-result v7

    sget v8, Lcom/google/android/a/e/b/c;->a:I

    if-eq v7, v8, :cond_1

    sget v8, Lcom/google/android/a/e/b/c;->b:I

    if-ne v7, v8, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    invoke-static/range {v0 .. v5}, Lcom/google/android/a/e/b/e;->a(Lcom/google/android/a/h/l;Lcom/google/android/a/h/o;JJ)Lcom/google/android/a/e/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    add-int/lit16 v0, v6, 0x8d

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, 0x3

    invoke-interface {p1, v0, v9, v1}, Lcom/google/android/a/e/f;->c([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v9}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/i;->a(I)Lcom/google/android/a/e/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v0, v0, Lcom/google/android/a/h/l;->c:I

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v9, v1}, Lcom/google/android/a/e/f;->c([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v9}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    invoke-static {v0, v1}, Lcom/google/android/a/h/l;->a(ILcom/google/android/a/h/l;)Z

    new-instance v0, Lcom/google/android/a/e/b/a;

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v3, v3, Lcom/google/android/a/h/l;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/b/a;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    :cond_4
    return-void

    :cond_5
    iget-object v7, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v7, v7, Lcom/google/android/a/h/l;->e:I

    if-ne v7, v8, :cond_0

    const/16 v6, 0xd

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    sget v6, Lcom/google/android/a/e/b/c;->c:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    invoke-static/range {v0 .. v5}, Lcom/google/android/a/e/b/d;->a(Lcom/google/android/a/h/l;Lcom/google/android/a/h/o;JJ)Lcom/google/android/a/e/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    iget-object v0, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v0, v0, Lcom/google/android/a/h/l;->c:I

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 10

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/a/e/b/c;->i:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/a/e/b/c;->d(Lcom/google/android/a/e/f;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/a/e/b/c;->e(Lcom/google/android/a/e/f;)V

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->g:Lcom/google/android/a/e/g;

    iget-object v3, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    invoke-interface {v1, v3}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget-object v1, v1, Lcom/google/android/a/h/l;->b:Ljava/lang/String;

    const/16 v3, 0x1000

    iget-object v4, p0, Lcom/google/android/a/e/b/c;->k:Lcom/google/android/a/e/b/c$a;

    invoke-interface {v4}, Lcom/google/android/a/e/b/c$a;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v6, v6, Lcom/google/android/a/h/l;->e:I

    iget-object v7, p0, Lcom/google/android/a/e/b/c;->f:Lcom/google/android/a/h/l;

    iget v7, v7, Lcom/google/android/a/h/l;->d:I

    move-object v8, v0

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    iget v1, v1, Lcom/google/android/a/e/i;->a:I

    iget-object v2, p0, Lcom/google/android/a/e/b/c;->j:Lcom/google/android/a/e/i;

    iget v2, v2, Lcom/google/android/a/e/i;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/r;->b(II)Lcom/google/android/a/r;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/b/c;->h:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/a/e/b/c;->b(Lcom/google/android/a/e/f;)I

    move-result v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/e/b/c;->g:Lcom/google/android/a/e/g;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/b/c;->h:Lcom/google/android/a/e/m;

    invoke-interface {p1}, Lcom/google/android/a/e/g;->a()V

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/e/b/c;->a(Lcom/google/android/a/e/f;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/a/e/b/c;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/e/b/c;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/b/c;->l:J

    iput v2, p0, Lcom/google/android/a/e/b/c;->n:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
