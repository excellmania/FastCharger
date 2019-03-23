.class Lcom/google/android/gms/c/bz$b;
.super Lcom/google/android/gms/location/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/y",
            "<",
            "Lcom/google/android/gms/location/f;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public declared-synchronized a(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/bz$b;->a:Lcom/google/android/gms/c/y;

    new-instance v1, Lcom/google/android/gms/c/bz$b$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/bz$b$1;-><init>(Lcom/google/android/gms/c/bz$b;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/y;->a(Lcom/google/android/gms/c/y$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
