.class public Lcom/google/android/a/h/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/h/j$c;,
        Lcom/google/android/a/h/j$a;,
        Lcom/google/android/a/h/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/a/g/o$a;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/String;

.field private final b:Lcom/google/android/a/g/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/a/g/s$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/a/g/r;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/a/h/j$a;

.field private f:I

.field private g:Lcom/google/android/a/g/o;

.field private h:Lcom/google/android/a/g/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/a/g/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:J

.field private j:I

.field private k:J

.field private l:Lcom/google/android/a/h/j$b;

.field private volatile m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile n:J

.field private volatile o:J


# direct methods
.method private a(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/a/h/j;)Lcom/google/android/a/h/j$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/h/j;->e:Lcom/google/android/a/h/j$a;

    return-object v0
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->e:Lcom/google/android/a/h/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/h/j$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/h/j$3;-><init>(Lcom/google/android/a/h/j;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->e:Lcom/google/android/a/h/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/h/j$1;

    invoke-direct {v1, p0}, Lcom/google/android/a/h/j$1;-><init>(Lcom/google/android/a/h/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->e:Lcom/google/android/a/h/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/h/j$2;

    invoke-direct {v1, p0}, Lcom/google/android/a/h/j$2;-><init>(Lcom/google/android/a/h/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/h/j;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/a/g/o$c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->h:Lcom/google/android/a/g/s;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/h/j;->h:Lcom/google/android/a/g/s;

    invoke-virtual {v0}, Lcom/google/android/a/g/s;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/h/j;->m:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/android/a/h/j;->i:J

    iput-wide v0, p0, Lcom/google/android/a/h/j;->n:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/h/j;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/h/j;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    iget-object v0, p0, Lcom/google/android/a/h/j;->m:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/a/h/j$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/h/j;->m:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/a/h/j$c;

    invoke-interface {v0}, Lcom/google/android/a/h/j$c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/a/h/j;->a:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/h/j;->h()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/g/o$c;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->h:Lcom/google/android/a/g/s;

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/a/h/j;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/h/j;->j:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/h/j;->k:J

    new-instance v0, Lcom/google/android/a/h/j$b;

    invoke-direct {v0, p2}, Lcom/google/android/a/h/j$b;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    iget-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    invoke-direct {p0, v0}, Lcom/google/android/a/h/j;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/h/j;->n:J

    return-wide v0
.end method

.method public b(Lcom/google/android/a/g/o$c;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/h/j;->j:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    throw v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/h/j;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/a/h/j;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/h/j;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lcom/google/android/a/h/j;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/h/j;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/h/j;->l:Lcom/google/android/a/h/j$b;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/h/j;->k:J

    iget v4, p0, Lcom/google/android/a/h/j;->j:I

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/a/h/j;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/a/g/o;

    const-string v1, "manifestLoader"

    invoke-direct {v0, v1}, Lcom/google/android/a/g/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/a/g/s;

    iget-object v1, p0, Lcom/google/android/a/h/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/a/h/j;->c:Lcom/google/android/a/g/r;

    iget-object v3, p0, Lcom/google/android/a/h/j;->b:Lcom/google/android/a/g/s$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/a/g/s;-><init>(Ljava/lang/String;Lcom/google/android/a/g/r;Lcom/google/android/a/g/s$a;)V

    iput-object v0, p0, Lcom/google/android/a/h/j;->h:Lcom/google/android/a/g/s;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/h/j;->i:J

    iget-object v0, p0, Lcom/google/android/a/h/j;->g:Lcom/google/android/a/g/o;

    iget-object v1, p0, Lcom/google/android/a/h/j;->h:Lcom/google/android/a/g/s;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    invoke-direct {p0}, Lcom/google/android/a/h/j;->g()V

    goto :goto_0
.end method
