.class Lcom/google/android/gms/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/d/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/d/h",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/b",
            "<-TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/b;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/d/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/d/b",
            "<-TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/g;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/d/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/d/g;->c:Lcom/google/android/gms/d/b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/d/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/g;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/d/g;)Lcom/google/android/gms/d/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:Lcom/google/android/gms/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/d/d;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/d/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/d/d",
            "<TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/d/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/d/g;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/g;->c:Lcom/google/android/gms/d/b;

    if-nez v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/d/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/d/g$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/d/g$1;-><init>(Lcom/google/android/gms/d/g;Lcom/google/android/gms/d/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
