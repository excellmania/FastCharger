.class public Lcom/google/android/gms/c/lk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/c/mo;

.field private final c:Lcom/google/android/gms/c/tc;

.field private final d:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/lk;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/lk;->b:Lcom/google/android/gms/c/mo;

    iput-object p3, p0, Lcom/google/android/gms/c/lk;->c:Lcom/google/android/gms/c/tc;

    iput-object p4, p0, Lcom/google/android/gms/c/lk;->d:Lcom/google/android/gms/ads/internal/d;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/c/lk;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/c/ha;

    invoke-direct {v2}, Lcom/google/android/gms/c/ha;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/c/lk;->b:Lcom/google/android/gms/c/mo;

    iget-object v5, p0, Lcom/google/android/gms/c/lk;->c:Lcom/google/android/gms/c/tc;

    iget-object v6, p0, Lcom/google/android/gms/c/lk;->d:Lcom/google/android/gms/ads/internal/d;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/c/lk;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/c/ha;

    invoke-direct {v2}, Lcom/google/android/gms/c/ha;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/c/lk;->b:Lcom/google/android/gms/c/mo;

    iget-object v5, p0, Lcom/google/android/gms/c/lk;->c:Lcom/google/android/gms/c/tc;

    iget-object v6, p0, Lcom/google/android/gms/c/lk;->d:Lcom/google/android/gms/ads/internal/d;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    return-object v0
.end method

.method public b()Lcom/google/android/gms/c/lk;
    .locals 5

    new-instance v0, Lcom/google/android/gms/c/lk;

    invoke-virtual {p0}, Lcom/google/android/gms/c/lk;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/lk;->b:Lcom/google/android/gms/c/mo;

    iget-object v3, p0, Lcom/google/android/gms/c/lk;->c:Lcom/google/android/gms/c/tc;

    iget-object v4, p0, Lcom/google/android/gms/c/lk;->d:Lcom/google/android/gms/ads/internal/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/c/lk;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    return-object v0
.end method
