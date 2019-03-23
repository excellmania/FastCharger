.class public Lcom/google/android/gms/c/ca;
.super Lcom/google/android/gms/c/bo;


# instance fields
.field private final f:Lcom/google/android/gms/c/bz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/o;)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/c/bo;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/o;)V

    new-instance v0, Lcom/google/android/gms/c/bz;

    iget-object v1, p0, Lcom/google/android/gms/c/ca;->e:Lcom/google/android/gms/c/ci;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/c/bz;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ci;)V

    iput-object v0, p0, Lcom/google/android/gms/c/ca;->f:Lcom/google/android/gms/c/bz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/c/ca;->f:Lcom/google/android/gms/c/bz;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/c/ca;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/c/ca;->f:Lcom/google/android/gms/c/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/c/bz;->b()V

    iget-object v0, p0, Lcom/google/android/gms/c/ca;->f:Lcom/google/android/gms/c/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/c/bz;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/c/bo;->a()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public k()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ca;->f:Lcom/google/android/gms/c/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/c/bz;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
