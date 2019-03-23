.class Lcom/google/android/gms/ads/internal/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ts$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/f;->e(Lcom/google/android/gms/c/rv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/rv;

.field final synthetic b:Lcom/google/android/gms/ads/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/c/rv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/f$3;->b:Lcom/google/android/gms/ads/internal/f;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/f$3;->a:Lcom/google/android/gms/c/rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/c/fr;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f$3;->b:Lcom/google/android/gms/ads/internal/f;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/f;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/f$3;->a:Lcom/google/android/gms/c/rv;

    iget-object v2, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v2}, Lcom/google/android/gms/c/tr;->b()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/c/fr;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/f$3;->a:Lcom/google/android/gms/c/rv;

    iget-object v1, v1, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/fr;->a(Lcom/google/android/gms/c/fr$b;)V

    return-void
.end method
