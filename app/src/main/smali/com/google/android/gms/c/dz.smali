.class public Lcom/google/android/gms/c/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/c/dn;

.field private final b:Lcom/google/android/gms/c/aw$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/dn;Lcom/google/android/gms/c/aw$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/dz;->a:Lcom/google/android/gms/c/dn;

    iput-object p2, p0, Lcom/google/android/gms/c/dz;->b:Lcom/google/android/gms/c/aw$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/dz;->a:Lcom/google/android/gms/c/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/c/dn;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/dz;->a:Lcom/google/android/gms/c/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/c/dn;->m()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/dz;->a:Lcom/google/android/gms/c/dn;

    invoke-virtual {v0}, Lcom/google/android/gms/c/dn;->l()Lcom/google/android/gms/c/aw$a;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/dz;->b:Lcom/google/android/gms/c/aw$a;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/c/ep; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/c/dz;->b:Lcom/google/android/gms/c/aw$a;

    invoke-static {v0}, Lcom/google/android/gms/c/eq;->a(Lcom/google/android/gms/c/eq;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/c/eq;->a(Lcom/google/android/gms/c/eq;[B)Lcom/google/android/gms/c/eq;

    monitor-exit v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/c/ep; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/dz;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
