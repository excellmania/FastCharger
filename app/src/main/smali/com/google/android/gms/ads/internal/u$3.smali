.class Lcom/google/android/gms/ads/internal/u$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/u;->d()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/c/fd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/fd;
    .locals 4

    new-instance v0, Lcom/google/android/gms/c/fd;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/u;->c(Lcom/google/android/gms/ads/internal/u;)Lcom/google/android/gms/c/tc;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/c/tc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/u$3;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/u;->d(Lcom/google/android/gms/ads/internal/u;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/c/fd;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/u$3;->a()Lcom/google/android/gms/c/fd;

    move-result-object v0

    return-object v0
.end method