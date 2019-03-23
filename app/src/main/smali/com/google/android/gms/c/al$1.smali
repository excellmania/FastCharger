.class Lcom/google/android/gms/c/al$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/al;->a(Lcom/google/android/gms/common/api/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/f;

.field final synthetic b:Lcom/google/android/gms/c/al;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/al;Lcom/google/android/gms/common/api/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    iput-object p2, p0, Lcom/google/android/gms/c/al$1;->a:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/c/vh;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v0}, Lcom/google/android/gms/c/al;->a(Lcom/google/android/gms/c/al;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->a:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/i;->a(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v1}, Lcom/google/android/gms/c/al;->b(Lcom/google/android/gms/c/al;)Lcom/google/android/gms/c/al$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v2}, Lcom/google/android/gms/c/al;->b(Lcom/google/android/gms/c/al;)Lcom/google/android/gms/c/al$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/c/al$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/al$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/c/vh;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->a:Lcom/google/android/gms/common/api/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/al;->a(Lcom/google/android/gms/c/al;Lcom/google/android/gms/common/api/f;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v0}, Lcom/google/android/gms/c/al;->c(Lcom/google/android/gms/c/al;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/c/al;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v1}, Lcom/google/android/gms/c/al;->b(Lcom/google/android/gms/c/al;)Lcom/google/android/gms/c/al$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v2}, Lcom/google/android/gms/c/al;->b(Lcom/google/android/gms/c/al;)Lcom/google/android/gms/c/al$a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/c/al$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/al$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/c/vh;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->a:Lcom/google/android/gms/common/api/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/al;->a(Lcom/google/android/gms/c/al;Lcom/google/android/gms/common/api/f;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v0}, Lcom/google/android/gms/c/al;->c(Lcom/google/android/gms/c/al;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/c/al;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/c/vh;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    iget-object v2, p0, Lcom/google/android/gms/c/al$1;->a:Lcom/google/android/gms/common/api/f;

    invoke-static {v0, v2}, Lcom/google/android/gms/c/al;->a(Lcom/google/android/gms/c/al;Lcom/google/android/gms/common/api/f;)V

    iget-object v0, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-static {v0}, Lcom/google/android/gms/c/al;->c(Lcom/google/android/gms/c/al;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/c/al$1;->b:Lcom/google/android/gms/c/al;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/c/al;)V

    :cond_1
    throw v1
.end method
