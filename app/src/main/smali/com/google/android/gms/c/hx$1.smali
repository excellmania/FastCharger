.class Lcom/google/android/gms/c/hx$1;
.super Lcom/google/android/gms/c/hh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/hx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/hx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/hx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/hx$1;->a:Lcom/google/android/gms/c/hx;

    invoke-direct {p0}, Lcom/google/android/gms/c/hh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/hx$1;->a:Lcom/google/android/gms/c/hx;

    invoke-static {v0}, Lcom/google/android/gms/c/hx;->a(Lcom/google/android/gms/c/hx;)Lcom/google/android/gms/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/hx$1;->a:Lcom/google/android/gms/c/hx;

    invoke-virtual {v1}, Lcom/google/android/gms/c/hx;->l()Lcom/google/android/gms/c/hu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/c/hu;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/c/hh;->a(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/hx$1;->a:Lcom/google/android/gms/c/hx;

    invoke-static {v0}, Lcom/google/android/gms/c/hx;->a(Lcom/google/android/gms/c/hx;)Lcom/google/android/gms/ads/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/hx$1;->a:Lcom/google/android/gms/c/hx;

    invoke-virtual {v1}, Lcom/google/android/gms/c/hx;->l()Lcom/google/android/gms/c/hu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/c/hu;)V

    invoke-super {p0}, Lcom/google/android/gms/c/hh;->b()V

    return-void
.end method
