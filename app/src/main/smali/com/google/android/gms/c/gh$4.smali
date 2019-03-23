.class Lcom/google/android/gms/c/gh$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/gh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/gh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/gh$4;->a:Lcom/google/android/gms/c/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/a;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/c/gh$4;->a:Lcom/google/android/gms/c/gh;

    invoke-static {v0}, Lcom/google/android/gms/c/gh;->c(Lcom/google/android/gms/c/gh;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/gh$4;->a:Lcom/google/android/gms/c/gh;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/c/gh;->a(Lcom/google/android/gms/c/gh;Lcom/google/android/gms/c/gk;)Lcom/google/android/gms/c/gk;

    iget-object v0, p0, Lcom/google/android/gms/c/gh$4;->a:Lcom/google/android/gms/c/gh;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/c/gh;->a(Lcom/google/android/gms/c/gh;Lcom/google/android/gms/c/go;)Lcom/google/android/gms/c/go;

    iget-object v0, p0, Lcom/google/android/gms/c/gh$4;->a:Lcom/google/android/gms/c/gh;

    invoke-static {v0}, Lcom/google/android/gms/c/gh;->c(Lcom/google/android/gms/c/gh;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/c/sr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/sr;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
