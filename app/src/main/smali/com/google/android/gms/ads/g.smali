.class public final Lcom/google/android/gms/ads/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/c/hz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/hz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/hz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/c/hz;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hz;->a(Lcom/google/android/gms/ads/a;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/c/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    check-cast p1, Lcom/google/android/gms/c/gq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hz;->a(Lcom/google/android/gms/c/gq;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/hz;->a(Lcom/google/android/gms/c/gq;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/c;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/c/hw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/hz;->a(Lcom/google/android/gms/c/hw;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/d/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hz;->a(Lcom/google/android/gms/ads/d/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/g;->a:Lcom/google/android/gms/c/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hz;->a(Z)V

    return-void
.end method
