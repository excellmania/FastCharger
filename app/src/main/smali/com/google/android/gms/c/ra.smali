.class public Lcom/google/android/gms/c/ra;
.super Lcom/google/android/gms/c/se;

# interfaces
.implements Lcom/google/android/gms/c/rc;
.implements Lcom/google/android/gms/c/rf;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/rv$a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/c/rh;

.field private final d:Lcom/google/android/gms/c/rf;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/c/me;

.field private final i:J

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/c/rb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/me;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/rh;Lcom/google/android/gms/c/rf;J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/c/se;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/c/ra;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/c/ra;->k:I

    iput-object p1, p0, Lcom/google/android/gms/c/ra;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/c/ra;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/c/ra;->h:Lcom/google/android/gms/c/me;

    iput-object p5, p0, Lcom/google/android/gms/c/ra;->a:Lcom/google/android/gms/c/rv$a;

    iput-object p6, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/c/ra;->d:Lcom/google/android/gms/c/rf;

    iput-wide p8, p0, Lcom/google/android/gms/c/ra;->i:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/ra;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/mp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/c/rh;->b()Lcom/google/android/gms/c/re;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/re;->a(Lcom/google/android/gms/c/rf;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->h:Lcom/google/android/gms/c/me;

    iget-object v1, v1, Lcom/google/android/gms/c/me;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/c/mp;->a(Lcom/google/android/gms/c/gv;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/ra;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/c/mp;->a(Lcom/google/android/gms/c/gv;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to load ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/c/ra;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/c/ra;Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/mp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/c/ra;->a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/mp;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/c/ra;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(J)V
    .locals 5

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/c/ra;->j:I

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/c/rb$a;

    invoke-direct {v0}, Lcom/google/android/gms/c/rb$a;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/c/rb$a;->a(J)Lcom/google/android/gms/c/rb$a;

    move-result-object v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/c/ra;->j:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x6

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/c/rb$a;->a(I)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/rb$a;->a(Ljava/lang/String;)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/ra;->h:Lcom/google/android/gms/c/me;

    iget-object v2, v2, Lcom/google/android/gms/c/me;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/rb$a;->b(Ljava/lang/String;)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/rb$a;->a()Lcom/google/android/gms/c/rb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/ra;->l:Lcom/google/android/gms/c/rb;

    monitor-exit v1

    :goto_2
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/c/ra;->k:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/ra;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/c/rb$a;

    invoke-direct {v0}, Lcom/google/android/gms/c/rb$a;-><init>()V

    iget v2, p0, Lcom/google/android/gms/c/ra;->k:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/rb$a;->a(I)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/c/rb$a;->a(J)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/rb$a;->a(Ljava/lang/String;)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/ra;->h:Lcom/google/android/gms/c/me;

    iget-object v2, v2, Lcom/google/android/gms/c/me;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/rb$a;->b(Ljava/lang/String;)Lcom/google/android/gms/c/rb$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/rb$a;->a()Lcom/google/android/gms/c/rb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/ra;->l:Lcom/google/android/gms/c/rb;

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/c/ra;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/c/rh;->b()Lcom/google/android/gms/c/re;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/c/rh;->a()Lcom/google/android/gms/c/mp;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v0}, Lcom/google/android/gms/c/rh;->b()Lcom/google/android/gms/c/re;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/c/re;->a(Lcom/google/android/gms/c/rf;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/re;->a(Lcom/google/android/gms/c/rc;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    iget-object v2, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v2}, Lcom/google/android/gms/c/rh;->a()Lcom/google/android/gms/c/mp;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gms/c/mp;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/c/ra$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/c/ra$1;-><init>(Lcom/google/android/gms/c/ra;Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/mp;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/c/ra;->b(J)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/c/re;->a(Lcom/google/android/gms/c/rf;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/c/re;->a(Lcom/google/android/gms/c/rc;)V

    iget v0, p0, Lcom/google/android/gms/c/ra;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->d:Lcom/google/android/gms/c/rf;

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/rf;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v3, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/c/ra$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/google/android/gms/c/ra$2;-><init>(Lcom/google/android/gms/c/ra;Lcom/google/android/gms/c/mp;Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/re;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Fail to check if adapter is initialized."

    invoke-static {v2, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/c/ra;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/c/ra;->d:Lcom/google/android/gms/c/rf;

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/c/ra;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/c/rf;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/c/ra;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/c/ra;->j:I

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/c/ra;->j:I

    iput p2, p0, Lcom/google/android/gms/c/ra;->k:I

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(J)Z
    .locals 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/c/ra;->i:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v4

    sub-long/2addr v4, p1

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/c/ra;->k:I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/gms/c/ra;->k:I

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Lcom/google/android/gms/c/rb;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/ra;->l:Lcom/google/android/gms/c/rb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Lcom/google/android/gms/c/me;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->h:Lcom/google/android/gms/c/me;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ra;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    iget-object v1, p0, Lcom/google/android/gms/c/ra;->c:Lcom/google/android/gms/c/rh;

    invoke-virtual {v1}, Lcom/google/android/gms/c/rh;->a()Lcom/google/android/gms/c/mp;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/c/ra;->a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/mp;)V

    return-void
.end method
