.class public Lcom/google/android/gms/c/ml;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/md;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/pg;

.field private final b:Lcom/google/android/gms/c/mo;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/c/mf;

.field private final e:Z

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:Ljava/lang/Object;

.field private j:Z

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/c/th",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;",
            "Lcom/google/android/gms/c/mi;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/mf;ZZJJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ml;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/ml;->j:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ml;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ml;->m:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/c/ml;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iput-object p3, p0, Lcom/google/android/gms/c/ml;->b:Lcom/google/android/gms/c/mo;

    iput-object p4, p0, Lcom/google/android/gms/c/ml;->d:Lcom/google/android/gms/c/mf;

    iput-boolean p5, p0, Lcom/google/android/gms/c/ml;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/c/ml;->l:Z

    iput-wide p7, p0, Lcom/google/android/gms/c/ml;->f:J

    iput-wide p9, p0, Lcom/google/android/gms/c/ml;->g:J

    iput p11, p0, Lcom/google/android/gms/c/ml;->h:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/ml;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/c/th;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/th",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/c/ml$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/ml$2;-><init>(Lcom/google/android/gms/c/ml;Lcom/google/android/gms/c/th;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Ljava/util/List;)Lcom/google/android/gms/c/mj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/th",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;>;)",
            "Lcom/google/android/gms/c/mj;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/c/ml;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/ml;->j:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/c/mj;

    const/4 v0, -0x1

    invoke-direct {v1, v0}, Lcom/google/android/gms/c/mj;-><init>(I)V

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/th;

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/c/th;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/mj;

    iget-object v3, p0, Lcom/google/android/gms/c/ml;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/google/android/gms/c/mj;->a:I

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/ml;->a(Lcom/google/android/gms/c/th;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/ml;->a(Lcom/google/android/gms/c/th;)V

    new-instance v1, Lcom/google/android/gms/c/mj;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/google/android/gms/c/mj;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/google/android/gms/c/ml;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/ml;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/c/ml;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/c/ml;->f:J

    return-wide v0
.end method

.method private c(Ljava/util/List;)Lcom/google/android/gms/c/mj;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/th",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;>;)",
            "Lcom/google/android/gms/c/mj;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/c/ml;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/ml;->j:Z

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/c/mj;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/c/mj;-><init>(I)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->d:Lcom/google/android/gms/c/mf;

    iget-wide v0, v0, Lcom/google/android/gms/c/mf;->m:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->d:Lcom/google/android/gms/c/mf;

    iget-wide v0, v0, Lcom/google/android/gms/c/mf;->m:J

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/th;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-nez v1, :cond_3

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/c/th;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/c/th;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/mj;

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/c/ml;->m:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    iget v5, v1, Lcom/google/android/gms/c/mj;->a:I

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/google/android/gms/c/mj;->f:Lcom/google/android/gms/c/mr;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/c/mr;->a()I

    move-result v9

    if-le v9, v4, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/c/mr;->a()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v4

    sub-long/2addr v4, v10

    sub-long v4, v6, v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v3, v1

    move-object v14, v0

    move-wide v0, v4

    move v4, v2

    move-object v2, v14

    :goto_5
    move-wide v6, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const-wide/16 v0, 0x2710

    goto :goto_1

    :cond_3
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Lcom/google/android/gms/c/th;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/mj;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_6
    :try_start_4
    const-string v1, "Exception while processing an adapter; continuing with other adapters"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v0

    sub-long/2addr v0, v10

    sub-long v0, v6, v0

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v2

    sub-long/2addr v2, v10

    sub-long v2, v6, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/gms/c/ml;->a(Lcom/google/android/gms/c/th;)V

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/c/mj;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/google/android/gms/c/mj;-><init>(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_5
    move-object v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_4
.end method

.method static synthetic d(Lcom/google/android/gms/c/ml;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/c/ml;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/c/ml;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->k:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/google/android/gms/c/mj;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/me;",
            ">;)",
            "Lcom/google/android/gms/c/mj;"
        }
    .end annotation

    const-string v1, "Starting mediation."

    invoke-static {v1}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/c/me;

    const-string v2, "Trying mediation network: "

    iget-object v1, v6, Lcom/google/android/gms/c/me;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/c/sf;->d(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/google/android/gms/c/me;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/c/mi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/c/ml;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/c/ml;->b:Lcom/google/android/gms/c/mo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/c/ml;->d:Lcom/google/android/gms/c/mf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iget-object v7, v7, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iget-object v8, v8, Lcom/google/android/gms/c/pg;->d:Lcom/google/android/gms/c/ha;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iget-object v9, v9, Lcom/google/android/gms/c/pg;->k:Lcom/google/android/gms/c/tc;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/c/ml;->e:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/c/ml;->l:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iget-object v12, v12, Lcom/google/android/gms/c/pg;->z:Lcom/google/android/gms/c/js;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/c/ml;->a:Lcom/google/android/gms/c/pg;

    iget-object v13, v13, Lcom/google/android/gms/c/pg;->n:Ljava/util/List;

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/c/mi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/me;Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/tc;ZZLcom/google/android/gms/c/js;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/c/ml$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/c/ml$1;-><init>(Lcom/google/android/gms/c/ml;Lcom/google/android/gms/c/mi;)V

    invoke-static {v14, v2}, Lcom/google/android/gms/c/si;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/c/th;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/c/ml;->k:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/c/ml;->h:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/c/ml;->b(Ljava/util/List;)Lcom/google/android/gms/c/mj;

    move-result-object v1

    :goto_2
    return-object v1

    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/gms/c/ml;->c(Ljava/util/List;)Lcom/google/android/gms/c/mj;

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/c/ml;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/c/ml;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/mi;

    invoke-virtual {v0}, Lcom/google/android/gms/c/mi;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/ml;->m:Ljava/util/List;

    return-object v0
.end method
