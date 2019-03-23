.class Lcom/google/android/gms/c/qb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/kr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/qb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/qb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/qb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/qb$3;->a:Lcom/google/android/gms/c/qb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/tr;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/tr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/qb$3;->a:Lcom/google/android/gms/c/qb;

    invoke-static {v0}, Lcom/google/android/gms/c/qb;->a(Lcom/google/android/gms/c/qb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/qb$3;->a:Lcom/google/android/gms/c/qb;

    invoke-static {v0}, Lcom/google/android/gms/c/qb;->b(Lcom/google/android/gms/c/qb;)Lcom/google/android/gms/c/te;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/te;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/c/qe;

    const/4 v2, -0x2

    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/c/qe;-><init>(ILjava/util/Map;)V

    iget-object v2, p0, Lcom/google/android/gms/c/qb$3;->a:Lcom/google/android/gms/c/qb;

    invoke-static {v2}, Lcom/google/android/gms/c/qb;->c(Lcom/google/android/gms/c/qb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/c/qe;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/c/qb$3;->a:Lcom/google/android/gms/c/qb;

    invoke-static {v2}, Lcom/google/android/gms/c/qb;->b(Lcom/google/android/gms/c/qb;)Lcom/google/android/gms/c/te;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/c/te;->b(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
