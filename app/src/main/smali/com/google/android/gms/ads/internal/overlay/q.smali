.class public Lcom/google/android/gms/ads/internal/overlay/q;
.super Lcom/google/android/gms/ads/internal/overlay/m;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/c/tr;IZLcom/google/android/gms/c/jb;)Lcom/google/android/gms/ads/internal/overlay/l;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/f;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/overlay/q;->a(Lcom/google/android/gms/c/tr;)Z

    move-result v7

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/ab;

    invoke-interface {p2}, Lcom/google/android/gms/c/tr;->o()Lcom/google/android/gms/c/tc;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/c/tr;->v()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/c/tr;->x()Lcom/google/android/gms/c/iz;

    move-result-object v5

    move-object v1, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Ljava/lang/String;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/c/iz;)V

    invoke-direct {v6, p1, p4, v7, v0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/ab;)V

    move-object v0, v6

    goto :goto_0
.end method
