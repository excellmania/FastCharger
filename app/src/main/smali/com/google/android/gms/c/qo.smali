.class public Lcom/google/android/gms/c/qo;
.super Lcom/google/android/gms/c/qr$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/c/tc;

.field private final d:Lcom/google/android/gms/c/qp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/c/qp;

    invoke-static {}, Lcom/google/android/gms/c/ha;->a()Lcom/google/android/gms/c/ha;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/qp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;)V

    invoke-direct {p0, p1, p4, v0}, Lcom/google/android/gms/c/qo;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/qp;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/qp;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/qr$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/c/qo;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/qo;->c:Lcom/google/android/gms/c/tc;

    iput-object p3, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/c/qp;->J()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/a/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/c/qp;->n()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/qt;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/qp;->a(Lcom/google/android/gms/c/qt;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/qx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/qp;->a(Lcom/google/android/gms/c/qx;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/a/a;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/c/qp;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/c/qp;->o()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Unable to extract updated context."

    invoke-static {v2, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/c/qp;->K()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/qo;->a(Lcom/google/android/gms/a/a;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/a/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/qo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qo;->d:Lcom/google/android/gms/c/qp;

    invoke-virtual {v0}, Lcom/google/android/gms/c/qp;->i()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/qo;->b(Lcom/google/android/gms/a/a;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/qo;->c(Lcom/google/android/gms/a/a;)V

    return-void
.end method
