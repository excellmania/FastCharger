.class public Lcom/google/android/gms/c/kl;
.super Lcom/google/android/gms/c/kg$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/kg$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/kl;->a:Lcom/google/android/gms/ads/b/g$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/kc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/kl;->a:Lcom/google/android/gms/ads/b/g$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/kl;->b(Lcom/google/android/gms/c/kc;)Lcom/google/android/gms/c/kd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/g$a;->a(Lcom/google/android/gms/ads/b/g;)V

    return-void
.end method

.method b(Lcom/google/android/gms/c/kc;)Lcom/google/android/gms/c/kd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/kd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/kd;-><init>(Lcom/google/android/gms/c/kc;)V

    return-object v0
.end method
