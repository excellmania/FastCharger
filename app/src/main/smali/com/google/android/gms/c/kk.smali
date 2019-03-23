.class public Lcom/google/android/gms/c/kk;
.super Lcom/google/android/gms/c/kf$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/kf$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/kk;->a:Lcom/google/android/gms/ads/b/e$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ka;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/kk;->a:Lcom/google/android/gms/ads/b/e$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/kk;->b(Lcom/google/android/gms/c/ka;)Lcom/google/android/gms/c/kb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/e$a;->a(Lcom/google/android/gms/ads/b/e;)V

    return-void
.end method

.method b(Lcom/google/android/gms/c/ka;)Lcom/google/android/gms/c/kb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/kb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/kb;-><init>(Lcom/google/android/gms/c/ka;)V

    return-object v0
.end method
