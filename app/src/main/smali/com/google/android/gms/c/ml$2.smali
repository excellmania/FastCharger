.class Lcom/google/android/gms/c/ml$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ml;->a(Lcom/google/android/gms/c/th;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/th;

.field final synthetic b:Lcom/google/android/gms/c/ml;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ml;Lcom/google/android/gms/c/th;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ml$2;->b:Lcom/google/android/gms/c/ml;

    iput-object p2, p0, Lcom/google/android/gms/c/ml$2;->a:Lcom/google/android/gms/c/th;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/ml$2;->b:Lcom/google/android/gms/c/ml;

    invoke-static {v0}, Lcom/google/android/gms/c/ml;->e(Lcom/google/android/gms/c/ml;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/th;

    iget-object v2, p0, Lcom/google/android/gms/c/ml$2;->a:Lcom/google/android/gms/c/th;

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/ml$2;->b:Lcom/google/android/gms/c/ml;

    invoke-static {v2}, Lcom/google/android/gms/c/ml;->e(Lcom/google/android/gms/c/ml;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/mi;

    invoke-virtual {v0}, Lcom/google/android/gms/c/mi;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
