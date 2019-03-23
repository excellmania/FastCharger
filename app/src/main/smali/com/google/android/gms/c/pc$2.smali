.class Lcom/google/android/gms/c/pc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/pc;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/tk;

.field final synthetic b:Lcom/google/android/gms/c/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/pc;Lcom/google/android/gms/c/tk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    iput-object p2, p0, Lcom/google/android/gms/c/pc$2;->a:Lcom/google/android/gms/c/tk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    invoke-static {v0}, Lcom/google/android/gms/c/pc;->a(Lcom/google/android/gms/c/pc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    iget-object v2, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    iget-object v3, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    invoke-static {v3}, Lcom/google/android/gms/c/pc;->b(Lcom/google/android/gms/c/pc;)Lcom/google/android/gms/c/pg$a;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/c/pg$a;->j:Lcom/google/android/gms/c/tc;

    iget-object v4, p0, Lcom/google/android/gms/c/pc$2;->a:Lcom/google/android/gms/c/tk;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/c/pc;->a(Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;)Lcom/google/android/gms/c/sl;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/c/pc;->a:Lcom/google/android/gms/c/sl;

    iget-object v0, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    iget-object v0, v0, Lcom/google/android/gms/c/pc;->a:Lcom/google/android/gms/c/sl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/c/pc;->a(Lcom/google/android/gms/c/pc;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/c/pc$2;->b:Lcom/google/android/gms/c/pc;

    invoke-static {v2}, Lcom/google/android/gms/c/pc;->c(Lcom/google/android/gms/c/pc;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
