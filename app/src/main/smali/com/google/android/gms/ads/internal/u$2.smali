.class Lcom/google/android/gms/ads/internal/u$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/u;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/u$2;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$2;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/u;->b(Lcom/google/android/gms/ads/internal/u;)Lcom/google/android/gms/c/fd;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/u$2;->a:Lcom/google/android/gms/ads/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/u;->b(Lcom/google/android/gms/ads/internal/u;)Lcom/google/android/gms/c/fd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/c/fd;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to process ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
