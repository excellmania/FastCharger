.class Lcom/google/android/gms/c/ts$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/ts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/c/tr;

.field private b:Lcom/google/android/gms/ads/internal/overlay/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/tr;Lcom/google/android/gms/ads/internal/overlay/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/ts$d;->a:Lcom/google/android/gms/c/tr;

    iput-object p2, p0, Lcom/google/android/gms/c/ts$d;->b:Lcom/google/android/gms/ads/internal/overlay/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ts$d;->b:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/j;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/ts$d;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->c()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ts$d;->b:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/j;->d()V

    iget-object v0, p0, Lcom/google/android/gms/c/ts$d;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->d()V

    return-void
.end method