.class Lcom/google/android/gms/c/ne$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ne;->showInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field final synthetic b:Lcom/google/android/gms/c/ne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ne;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ne$3;->b:Lcom/google/android/gms/c/ne;

    iput-object p2, p0, Lcom/google/android/gms/c/ne$3;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->c()Lcom/google/android/gms/ads/internal/overlay/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/ne$3;->b:Lcom/google/android/gms/c/ne;

    invoke-static {v1}, Lcom/google/android/gms/c/ne;->b(Lcom/google/android/gms/c/ne;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/ne$3;->a:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method
