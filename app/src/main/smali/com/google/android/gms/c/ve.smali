.class public final Lcom/google/android/gms/c/ve;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lcom/google/android/gms/c/vc",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/m",
            "<+",
            "Lcom/google/android/gms/common/api/a$a;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/d/e;

    invoke-direct {v0}, Lcom/google/android/gms/d/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ve;->b:Lcom/google/android/gms/d/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/ve;->d:Z

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/m;

    iget-object v2, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/c/vc;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/ve;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/c/vc",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/vc;Lcom/google/android/gms/common/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/vc",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/c/ve;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/c/ve;->c:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/ve;->d:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/c/ve;->c:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/c/ve;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/l;

    iget-object v1, p0, Lcom/google/android/gms/c/ve;->a:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/l;-><init>(Landroid/support/v4/util/ArrayMap;)V

    iget-object v1, p0, Lcom/google/android/gms/c/ve;->b:Lcom/google/android/gms/d/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/d/e;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/ve;->b:Lcom/google/android/gms/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Lcom/google/android/gms/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/d/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/ve;->b:Lcom/google/android/gms/d/e;

    invoke-virtual {v0}, Lcom/google/android/gms/d/e;->a()Lcom/google/android/gms/d/d;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ve;->b:Lcom/google/android/gms/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/d/e;->a(Ljava/lang/Object;)V

    return-void
.end method
