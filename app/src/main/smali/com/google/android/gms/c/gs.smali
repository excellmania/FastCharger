.class public final Lcom/google/android/gms/c/gs;
.super Lcom/google/android/gms/c/hj$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/hj$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/a;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/gs;->a:Lcom/google/android/gms/ads/a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/a;->a()V

    return-void
.end method
