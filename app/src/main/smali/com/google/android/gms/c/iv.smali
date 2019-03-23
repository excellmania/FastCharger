.class public Lcom/google/android/gms/c/iv;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/c/mw",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/c/hy;

.field private final c:Lcom/google/android/gms/c/dk;

.field private final d:Lcom/google/android/gms/c/pz;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/c/hy;Lcom/google/android/gms/c/dk;Lcom/google/android/gms/c/pz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/c/mw",
            "<*>;>;",
            "Lcom/google/android/gms/c/hy;",
            "Lcom/google/android/gms/c/dk;",
            "Lcom/google/android/gms/c/pz;",
            ")V"
        }
    .end annotation

    const-string v0, "VolleyNetworkDispatcher"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/iv;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/c/iv;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/c/iv;->b:Lcom/google/android/gms/c/hy;

    iput-object p3, p0, Lcom/google/android/gms/c/iv;->c:Lcom/google/android/gms/c/dk;

    iput-object p4, p0, Lcom/google/android/gms/c/iv;->d:Lcom/google/android/gms/c/pz;

    return-void
.end method

.method private a(Lcom/google/android/gms/c/mw;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/mw",
            "<*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/c/mw;->b()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/gms/c/mw;Lcom/google/android/gms/c/uc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/mw",
            "<*>;",
            "Lcom/google/android/gms/c/uc;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/android/gms/c/mw;->a(Lcom/google/android/gms/c/uc;)Lcom/google/android/gms/c/uc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/iv;->d:Lcom/google/android/gms/c/pz;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/c/pz;->a(Lcom/google/android/gms/c/mw;Lcom/google/android/gms/c/uc;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/iv;->e:Z

    invoke-virtual {p0}, Lcom/google/android/gms/c/iv;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/iv;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/mw;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/mw;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/iv;->a(Lcom/google/android/gms/c/mw;)V

    iget-object v1, p0, Lcom/google/android/gms/c/iv;->b:Lcom/google/android/gms/c/hy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hy;->a(Lcom/google/android/gms/c/mw;)Lcom/google/android/gms/c/ku;

    move-result-object v1

    const-string v4, "network-http-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/c/mw;->b(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/c/ku;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/c/mw;->q()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/mw;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/c/uc; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/c/uc;->a(J)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/c/iv;->a(Lcom/google/android/gms/c/mw;Lcom/google/android/gms/c/uc;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/google/android/gms/c/iv;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/mw;->a(Lcom/google/android/gms/c/ku;)Lcom/google/android/gms/c/oy;

    move-result-object v1

    const-string v4, "network-parse-complete"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/c/mw;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/c/mw;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/google/android/gms/c/oy;->b:Lcom/google/android/gms/c/dk$a;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/c/iv;->c:Lcom/google/android/gms/c/dk;

    invoke-virtual {v0}, Lcom/google/android/gms/c/mw;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/c/oy;->b:Lcom/google/android/gms/c/dk$a;

    invoke-interface {v4, v5, v6}, Lcom/google/android/gms/c/dk;->a(Ljava/lang/String;Lcom/google/android/gms/c/dk$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/c/mw;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/c/mw;->p()V

    iget-object v4, p0, Lcom/google/android/gms/c/iv;->d:Lcom/google/android/gms/c/pz;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/c/pz;->a(Lcom/google/android/gms/c/mw;Lcom/google/android/gms/c/oy;)V
    :try_end_2
    .catch Lcom/google/android/gms/c/uc; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/c/uh;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/c/uc;

    invoke-direct {v4, v1}, Lcom/google/android/gms/c/uc;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/c/uc;->a(J)V

    iget-object v1, p0, Lcom/google/android/gms/c/iv;->d:Lcom/google/android/gms/c/pz;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/c/pz;->a(Lcom/google/android/gms/c/mw;Lcom/google/android/gms/c/uc;)V

    goto/16 :goto_0
.end method
