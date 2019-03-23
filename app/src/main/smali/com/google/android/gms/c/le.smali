.class public Lcom/google/android/gms/c/le;
.super Lcom/google/android/gms/c/se;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/c/tr;

.field final b:Lcom/google/android/gms/c/lg;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/lg;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/se;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/le;->a:Lcom/google/android/gms/c/tr;

    iput-object p2, p0, Lcom/google/android/gms/c/le;->b:Lcom/google/android/gms/c/lg;

    iput-object p3, p0, Lcom/google/android/gms/c/le;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->B()Lcom/google/android/gms/c/lf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/lf;->a(Lcom/google/android/gms/c/le;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/le;->b:Lcom/google/android/gms/c/lg;

    iget-object v1, p0, Lcom/google/android/gms/c/le;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lg;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/c/le$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/le$1;-><init>(Lcom/google/android/gms/c/le;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/le$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/le$1;-><init>(Lcom/google/android/gms/c/le;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/le;->b:Lcom/google/android/gms/c/lg;

    invoke-virtual {v0}, Lcom/google/android/gms/c/lg;->b()V

    return-void
.end method
