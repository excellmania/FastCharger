.class Lcom/google/android/gms/ads/internal/overlay/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/f;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/ads/internal/overlay/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->c:Lcom/google/android/gms/ads/internal/overlay/f;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->c:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->a(Lcom/google/android/gms/ads/internal/overlay/f;)Lcom/google/android/gms/ads/internal/overlay/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->c:Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/f;->a(Lcom/google/android/gms/ads/internal/overlay/f;)Lcom/google/android/gms/ads/internal/overlay/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/f$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
