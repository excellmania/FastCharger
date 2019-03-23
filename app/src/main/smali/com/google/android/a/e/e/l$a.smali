.class final Lcom/google/android/a/e/e/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/e/e/e;

.field private final b:Lcom/google/android/a/e/e/m;

.field private final c:Lcom/google/android/a/h/n;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/e/e;Lcom/google/android/a/e/e/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/e/l$a;->a:Lcom/google/android/a/e/e/e;

    iput-object p2, p0, Lcom/google/android/a/e/e/l$a;->b:Lcom/google/android/a/e/e/m;

    new-instance v0, Lcom/google/android/a/h/n;

    const/16 v1, 0x40

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/l$a;->d:Z

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/l$a;->e:Z

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/e/l$a;->g:I

    return-void
.end method

.method private c()V
    .locals 9

    const/16 v8, 0x1e

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/16 v7, 0xf

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/e/e/l$a;->h:J

    iget-boolean v0, p0, Lcom/google/android/a/e/e/l$a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v5}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v8

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-boolean v2, p0, Lcom/google/android/a/e/e/l$a;->f:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/a/e/e/l$a;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v5}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v4}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v4, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v4, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0xf

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v4, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v4, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v4, v6}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v4, p0, Lcom/google/android/a/e/e/l$a;->b:Lcom/google/android/a/e/e/m;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/a/e/e/m;->a(J)J

    iput-boolean v6, p0, Lcom/google/android/a/e/e/l$a;->f:Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/a/e/e/l$a;->b:Lcom/google/android/a/e/e/m;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/a/e/e/m;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/e/l$a;->h:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e/e/l$a;->f:Z

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->a:Lcom/google/android/a/e/e/e;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/e;->a()V

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/g;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    iget-object v0, v0, Lcom/google/android/a/h/n;->a:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/a/h/o;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/n;->a(I)V

    invoke-direct {p0}, Lcom/google/android/a/e/e/l$a;->b()V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    iget-object v0, v0, Lcom/google/android/a/h/n;->a:[B

    iget v1, p0, Lcom/google/android/a/e/e/l$a;->g:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/a/h/o;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/n;->a(I)V

    invoke-direct {p0}, Lcom/google/android/a/e/e/l$a;->c()V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->a:Lcom/google/android/a/e/e/e;

    iget-wide v2, p0, Lcom/google/android/a/e/e/l$a;->h:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/a/e/e/e;->a(JZ)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->a:Lcom/google/android/a/e/e/e;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/e/e;->a(Lcom/google/android/a/h/o;)V

    iget-object v0, p0, Lcom/google/android/a/e/e/l$a;->a:Lcom/google/android/a/e/e/e;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/e;->b()V

    return-void
.end method
