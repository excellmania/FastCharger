.class Lcom/google/android/gms/c/lm$a;
.super Lcom/google/android/gms/c/hj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/hj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/hj$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    invoke-interface {v0}, Lcom/google/android/gms/c/hj;->a()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/c/ln;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ln;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/hj;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    invoke-interface {v0}, Lcom/google/android/gms/c/hj;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    invoke-interface {v0}, Lcom/google/android/gms/c/hj;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lm$a;->a:Lcom/google/android/gms/c/hj;

    invoke-interface {v0}, Lcom/google/android/gms/c/hj;->d()V

    return-void
.end method
