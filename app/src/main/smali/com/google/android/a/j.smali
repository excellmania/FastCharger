.class final Lcom/google/android/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/a/x;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/z;",
            ">;"
        }
    .end annotation
.end field

.field private final g:[[Lcom/google/android/a/r;

.field private final h:[I

.field private final i:J

.field private final j:J

.field private k:[Lcom/google/android/a/z;

.field private l:Lcom/google/android/a/z;

.field private m:Lcom/google/android/a/l;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private volatile v:J

.field private volatile w:J

.field private volatile x:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z[III)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/a/j;->r:I

    iput v0, p0, Lcom/google/android/a/j;->s:I

    iput-object p1, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/google/android/a/j;->o:Z

    int-to-long v0, p4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/a/j;->i:J

    int-to-long v0, p5

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/a/j;->j:J

    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/j;->h:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/j;->q:I

    iput-wide v2, p0, Lcom/google/android/a/j;->v:J

    iput-wide v2, p0, Lcom/google/android/a/j;->x:J

    new-instance v0, Lcom/google/android/a/x;

    invoke-direct {v0}, Lcom/google/android/a/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    array-length v0, p3

    new-array v0, v0, [[Lcom/google/android/a/r;

    iput-object v0, p0, Lcom/google/android/a/j;->g:[[Lcom/google/android/a/r;

    new-instance v0, Lcom/google/android/a/h/s;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/h/s;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/a/j;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/a/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/a/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/a/j;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/a/j;->q:I

    iget-object v0, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/a/j;->h:[I

    aget v2, v2, p1

    if-ne v2, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/a/j;->h:[I

    aput p2, v2, p1

    iget v2, p0, Lcom/google/android/a/j;->q:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/google/android/a/j;->q:I

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    aget-object v4, v2, p1

    invoke-virtual {v4}, Lcom/google/android/a/z;->u()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v4}, Lcom/google/android/a/z;->t()I

    move-result v3

    if-eqz v3, :cond_0

    if-eq v2, v5, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_2
    move v3, v0

    :goto_1
    if-ltz p2, :cond_7

    iget-object v2, p0, Lcom/google/android/a/j;->g:[[Lcom/google/android/a/r;

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge p2, v2, :cond_7

    move v2, v0

    :goto_2
    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    iget-object v6, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    invoke-interface {v6}, Lcom/google/android/a/l;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/a/x;->a(J)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/a/j;->e(Lcom/google/android/a/z;)V

    iget-object v5, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/a/j;->o:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/android/a/j;->q:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_8

    move v2, v0

    :goto_3
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    :goto_4
    invoke-direct {p0, v4, p2, v0}, Lcom/google/android/a/j;->a(Lcom/google/android/a/z;IZ)V

    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lcom/google/android/a/z;->v()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method private a(IJJ)V
    .locals 4

    add-long v0, p2, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    check-cast p2, Landroid/util/Pair;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/a/h$a;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/google/android/a/h$a;->a(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/a/j;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/j;->s:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/a/j;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/a/j;->s:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private a(Lcom/google/android/a/z;IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/j;->w:J

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/google/android/a/z;->b(IJZ)V

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/a/z;->b()Lcom/google/android/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput-object v1, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    iput-object p1, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/a/z;)Z
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/a/z;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/a/z;->f()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/a/j;->q:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/z;->q()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/a/z;->p()J

    move-result-wide v6

    iget-boolean v2, p0, Lcom/google/android/a/j;->p:Z

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/a/j;->j:J

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    cmp-long v8, v6, v10

    if-eqz v8, :cond_3

    const-wide/16 v8, -0x3

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/google/android/a/j;->w:J

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gez v2, :cond_3

    cmp-long v2, v4, v10

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x2

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    cmp-long v2, v6, v4

    if-ltz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/a/j;->i:J

    goto :goto_1
.end method

.method private b(J)V
    .locals 9

    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/a/j;->w:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/a/j;->p:Z

    mul-long v2, p1, v6

    iput-wide v2, p0, Lcom/google/android/a/j;->w:J

    iget-object v1, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    invoke-virtual {v1}, Lcom/google/android/a/x;->c()V

    iget-object v1, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    iget-wide v2, p0, Lcom/google/android/a/j;->w:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/a/x;->a(J)V

    iget v1, p0, Lcom/google/android/a/j;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/a/j;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/z;

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->d(Lcom/google/android/a/z;)V

    iget-wide v2, p0, Lcom/google/android/a/j;->w:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/z;->d(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method private b(Lcom/google/android/a/z;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/a/j;->e(Lcom/google/android/a/z;)V
    :try_end_0
    .catch Lcom/google/android/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Stop failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/a/j;->p:Z

    iput-boolean p1, p0, Lcom/google/android/a/j;->o:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/a/j;->g()V

    invoke-direct {p0}, Lcom/google/android/a/j;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/a/j;->f()V

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/android/a/j;->q:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private b([Lcom/google/android/a/z;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/a/j;->l()V

    iput-object p1, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    iget-object v0, p0, Lcom/google/android/a/j;->g:[[Lcom/google/android/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    invoke-direct {p0}, Lcom/google/android/a/j;->e()V

    return-void
.end method

.method private c(Lcom/google/android/a/z;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/a/z;->y()V
    :try_end_0
    .catch Lcom/google/android/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Lcom/google/android/a/z;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/a/z;->u()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/z;->w()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/a/z;->u()I

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, p0, Lcom/google/android/a/j;->w:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/a/z;->f(J)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/a/z;->r()V

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x2

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/j;->a(IJJ)V

    :goto_1
    return-void

    :cond_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/google/android/a/z;->t()I

    move-result v7

    new-array v8, v7, [Lcom/google/android/a/r;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_3

    invoke-virtual {v6, v3}, Lcom/google/android/a/z;->b(I)Lcom/google/android/a/r;

    move-result-object v9

    aput-object v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/google/android/a/j;->g:[[Lcom/google/android/a/r;

    aput-object v8, v3, v0

    if-lez v7, :cond_5

    const-wide/16 v10, -0x1

    cmp-long v3, v4, v10

    if-nez v3, :cond_6

    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/google/android/a/j;->h:[I

    aget v3, v3, v0

    if-ltz v3, :cond_5

    array-length v7, v8

    if-ge v3, v7, :cond_5

    const/4 v7, 0x0

    invoke-direct {p0, v6, v3, v7}, Lcom/google/android/a/j;->a(Lcom/google/android/a/z;IZ)V

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Lcom/google/android/a/z;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    if-eqz v1, :cond_9

    invoke-direct {p0, v6}, Lcom/google/android/a/j;->a(Lcom/google/android/a/z;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :cond_5
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/a/z;->q()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_7

    const-wide/16 v4, -0x1

    goto :goto_4

    :cond_7
    const-wide/16 v12, -0x2

    cmp-long v3, v10, v12

    if-eqz v3, :cond_4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    iput-wide v4, p0, Lcom/google/android/a/j;->v:J

    if-eqz v2, :cond_d

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/google/android/a/j;->w:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_d

    :cond_b
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/a/j;->q:I

    :goto_7
    iget-object v0, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/a/j;->q:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/a/j;->g:[[Lcom/google/android/a/r;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v0, p0, Lcom/google/android/a/j;->o:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/google/android/a/j;->f()V

    :cond_c
    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_d
    if-eqz v1, :cond_e

    const/4 v0, 0x4

    :goto_8
    iput v0, p0, Lcom/google/android/a/j;->q:I

    goto :goto_7

    :cond_e
    const/4 v0, 0x3

    goto :goto_8
.end method

.method private e(Lcom/google/android/a/z;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/a/j;->d(Lcom/google/android/a/z;)V

    invoke-virtual {p1}, Lcom/google/android/a/z;->u()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/z;->x()V

    iget-object v0, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    iput-object v2, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/j;->p:Z

    iget-object v1, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    invoke-virtual {v1}, Lcom/google/android/a/x;->b()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/z;

    invoke-virtual {v0}, Lcom/google/android/a/z;->v()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    invoke-virtual {v0}, Lcom/google/android/a/x;->c()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/z;

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->d(Lcom/google/android/a/z;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    invoke-virtual {v0}, Lcom/google/android/a/z;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    invoke-interface {v0}, Lcom/google/android/a/l;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/j;->w:J

    iget-object v0, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    iget-wide v2, p0, Lcom/google/android/a/j;->w:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/x;->a(J)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/j;->u:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    invoke-virtual {v0}, Lcom/google/android/a/x;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/j;->w:J

    goto :goto_0
.end method

.method private i()V
    .locals 15

    const-string v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/a/j;->v:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/a/j;->v:J

    :goto_0
    const/4 v6, 0x1

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/google/android/a/j;->h()V

    const/4 v4, 0x0

    move v14, v4

    move v4, v5

    move v5, v6

    move-wide v6, v0

    move v1, v14

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/z;

    iget-wide v8, p0, Lcom/google/android/a/j;->w:J

    iget-wide v10, p0, Lcom/google/android/a/j;->u:J

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/google/android/a/z;->a(JJ)V

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/google/android/a/z;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(Lcom/google/android/a/z;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/google/android/a/z;->r()V

    :cond_0
    if-eqz v4, :cond_4

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    :goto_3
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    :cond_1
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/a/z;->q()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/a/z;->p()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_6

    const-wide/16 v6, -0x1

    goto :goto_4

    :cond_6
    const-wide/16 v12, -0x3

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    if-eqz v0, :cond_7

    const-wide/16 v12, -0x2

    cmp-long v0, v8, v12

    if-eqz v0, :cond_7

    cmp-long v0, v10, v8

    if-gez v0, :cond_1

    :cond_7
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    :cond_8
    iput-wide v6, p0, Lcom/google/android/a/j;->x:J

    if-eqz v5, :cond_e

    iget-wide v0, p0, Lcom/google/android/a/j;->v:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/a/j;->v:J

    iget-wide v6, p0, Lcom/google/android/a/j;->w:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_e

    :cond_9
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    invoke-direct {p0}, Lcom/google/android/a/j;->g()V

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/google/android/a/j;->o:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    :cond_c
    const/4 v1, 0x7

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/j;->a(IJJ)V

    :cond_d
    :goto_6
    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    return-void

    :cond_e
    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    if-eqz v4, :cond_f

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    iget-boolean v0, p0, Lcom/google/android/a/j;->o:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/a/j;->f()V

    goto :goto_5

    :cond_f
    iget v0, p0, Lcom/google/android/a/j;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    if-nez v4, :cond_a

    iget-boolean v0, p0, Lcom/google/android/a/j;->o:Z

    iput-boolean v0, p0, Lcom/google/android/a/j;->p:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    invoke-direct {p0}, Lcom/google/android/a/j;->g()V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x7

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/j;->a(IJJ)V

    goto :goto_6
.end method

.method private j()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/a/j;->l()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/android/a/j;->l()V

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->a(I)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/a/j;->n:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v0, p0, Lcom/google/android/a/j;->p:Z

    iget-object v1, p0, Lcom/google/android/a/j;->d:Lcom/google/android/a/x;

    invoke-virtual {v1}, Lcom/google/android/a/x;->c()V

    iget-object v1, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/a/j;->b(Lcom/google/android/a/z;)V

    invoke-direct {p0, v1}, Lcom/google/android/a/j;->c(Lcom/google/android/a/z;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object v3, p0, Lcom/google/android/a/j;->k:[Lcom/google/android/a/z;

    iput-object v3, p0, Lcom/google/android/a/j;->m:Lcom/google/android/a/l;

    iput-object v3, p0, Lcom/google/android/a/j;->l:Lcom/google/android/a/z;

    iget-object v0, p0, Lcom/google/android/a/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/j;->t:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/j;->w:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    iput-wide p1, p0, Lcom/google/android/a/j;->t:J

    iget-object v0, p0, Lcom/google/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1, p2}, Lcom/google/android/a/h/x;->a(J)I

    move-result v2

    invoke-static {p1, p2}, Lcom/google/android/a/h/x;->b(J)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/google/android/a/j;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/j;->r:I

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public varargs a([Lcom/google/android/a/z;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/a/j;->x:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/j;->x:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public c()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/google/android/a/j;->v:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/j;->v:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/a/j;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/a/j;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/a/j;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/a/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/a/z;

    check-cast v0, [Lcom/google/android/a/z;

    invoke-direct {p0, v0}, Lcom/google/android/a/j;->b([Lcom/google/android/a/z;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/a/j;->e()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/a/j;->b(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/a/j;->i()V

    move v0, v1

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2}, Lcom/google/android/a/h/x;->b(II)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/a/j;->b(J)V

    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/a/j;->j()V

    move v0, v1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/a/j;->k()V

    move v0, v1

    goto :goto_0

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/google/android/a/j;->a(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/a/j;->a(II)V
    :try_end_0
    .catch Lcom/google/android/a/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal track renderer error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/a/j;->j()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/google/android/a/j;->c:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/a/g;

    invoke-direct {v3, v0, v1}, Lcom/google/android/a/g;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/google/android/a/j;->j()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
