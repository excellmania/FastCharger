.class public Lcom/google/android/gms/ads/internal/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/c/li;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/m;

.field public final c:Lcom/google/android/gms/ads/internal/overlay/p;

.field public final d:Lcom/google/android/gms/c/rq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/li;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/c/rq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/d;->a:Lcom/google/android/gms/c/li;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/d;->b:Lcom/google/android/gms/ads/internal/overlay/m;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/d;->c:Lcom/google/android/gms/ads/internal/overlay/p;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/d;->d:Lcom/google/android/gms/c/rq;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/d;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/d;

    new-instance v1, Lcom/google/android/gms/c/ko;

    invoke-direct {v1}, Lcom/google/android/gms/c/ko;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/w;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/w;-><init>()V

    new-instance v4, Lcom/google/android/gms/c/rm;

    invoke-direct {v4}, Lcom/google/android/gms/c/rm;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/d;-><init>(Lcom/google/android/gms/c/li;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/c/rq;)V

    return-object v0
.end method
