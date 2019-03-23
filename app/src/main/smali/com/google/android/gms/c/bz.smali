.class public Lcom/google/android/gms/c/bz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/bz$a;,
        Lcom/google/android/gms/c/bz$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/ci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/ci",
            "<",
            "Lcom/google/android/gms/c/bx;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/c/y$b",
            "<",
            "Lcom/google/android/gms/location/f;",
            ">;",
            "Lcom/google/android/gms/c/bz$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/c/y$b",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;",
            "Lcom/google/android/gms/c/bz$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/ci",
            "<",
            "Lcom/google/android/gms/c/bx;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/bz;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/bz;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/bz;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/bz;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/c/bz;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v0}, Lcom/google/android/gms/c/ci;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v0}, Lcom/google/android/gms/c/ci;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/bx;

    iget-object v1, p0, Lcom/google/android/gms/c/bz;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/bx;->b(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v0}, Lcom/google/android/gms/c/ci;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v0}, Lcom/google/android/gms/c/ci;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/bx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/bx;->a(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/c/bz;->d:Z

    return-void
.end method

.method public b()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/c/bz;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/c/bz;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/bz$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v1}, Lcom/google/android/gms/c/ci;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/bx;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/c/cd;->a(Lcom/google/android/gms/location/x;Lcom/google/android/gms/c/bv;)Lcom/google/android/gms/c/cd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/c/bx;->a(Lcom/google/android/gms/c/cd;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/c/bz;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/c/bz;->f:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/c/bz;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/bz$a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/c/bz;->a:Lcom/google/android/gms/c/ci;

    invoke-interface {v1}, Lcom/google/android/gms/c/ci;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/bx;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/c/cd;->a(Lcom/google/android/gms/location/w;Lcom/google/android/gms/c/bv;)Lcom/google/android/gms/c/cd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/c/bx;->a(Lcom/google/android/gms/c/cd;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/c/bz;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/c/bz;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/bz;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
