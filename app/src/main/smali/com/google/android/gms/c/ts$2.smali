.class Lcom/google/android/gms/c/ts$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ts;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/ts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ts;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    iget-object v0, v0, Lcom/google/android/gms/c/ts;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->B()V

    iget-object v0, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    iget-object v0, v0, Lcom/google/android/gms/c/ts;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->i()Lcom/google/android/gms/ads/internal/overlay/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/g;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    invoke-static {v0}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts;)Lcom/google/android/gms/c/ts$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    invoke-static {v0}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts;)Lcom/google/android/gms/c/ts$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/ts$c;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/ts$2;->a:Lcom/google/android/gms/c/ts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts;Lcom/google/android/gms/c/ts$c;)Lcom/google/android/gms/c/ts$c;

    :cond_1
    return-void
.end method
