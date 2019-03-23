.class final Lcom/google/android/a/e/e/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/e/m;

.field private b:J

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/e/h$a;->a:Lcom/google/android/a/e/m;

    return-void
.end method

.method private a(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->k:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-wide v0, p0, Lcom/google/android/a/e/e/h$a;->b:J

    iget-wide v2, p0, Lcom/google/android/a/e/e/h$a;->i:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    iget-object v1, p0, Lcom/google/android/a/e/e/h$a;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/h$a;->j:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->f:Z

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->g:Z

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->h:Z

    return-void
.end method

.method public a(JI)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->h:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/e/e/h$a;->b:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/google/android/a/e/e/h$a;->a(I)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/e/e/h$a;->b:J

    iput-wide v0, p0, Lcom/google/android/a/e/e/h$a;->i:J

    iget-wide v0, p0, Lcom/google/android/a/e/e/h$a;->e:J

    iput-wide v0, p0, Lcom/google/android/a/e/e/h$a;->j:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->h:Z

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->c:Z

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->k:Z

    :cond_1
    return-void
.end method

.method public a(JIIJ)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/a/e/e/h$a;->g:Z

    iput-wide p5, p0, Lcom/google/android/a/e/e/h$a;->e:J

    iput v2, p0, Lcom/google/android/a/e/e/h$a;->d:I

    iput-wide p1, p0, Lcom/google/android/a/e/e/h$a;->b:J

    const/16 v0, 0x20

    if-lt p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/google/android/a/e/e/h$a;->a(I)V

    iput-boolean v2, p0, Lcom/google/android/a/e/e/h$a;->h:Z

    :cond_0
    const/16 v0, 0x10

    if-lt p4, v0, :cond_3

    const/16 v0, 0x15

    if-gt p4, v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->c:Z

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->c:Z

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-gt p4, v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/a/e/e/h$a;->f:Z

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public a([BII)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->f:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Lcom/google/android/a/e/e/h$a;->d:I

    sub-int/2addr v0, v2

    if-ge v0, p3, :cond_2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/a/e/e/h$a;->g:Z

    iput-boolean v1, p0, Lcom/google/android/a/e/e/h$a;->f:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/a/e/e/h$a;->d:I

    sub-int v1, p3, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/h$a;->d:I

    goto :goto_1
.end method
