.class Lcom/google/android/gms/c/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/d/a;
.implements Lcom/google/android/gms/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/d/a;",
        "Lcom/google/android/gms/d/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/e;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/e;Lcom/google/android/gms/c/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/e$a;-><init>(Lcom/google/android/gms/c/e;)V

    return-void
.end method

.method private a()Lcom/google/android/gms/common/a;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->g(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->c(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->b(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/m;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/c/vc;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v2}, Lcom/google/android/gms/c/e;->g(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v2}, Lcom/google/android/gms/c/e;->h(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/k;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->c()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$e;->a()I

    move-result v0

    if-eqz v4, :cond_2

    if-le v3, v0, :cond_4

    :cond_2
    :goto_1
    move v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    move v0, v3

    move-object v1, v4

    goto :goto_1
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->i(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/internal/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/c/l;->d:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->i(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/o;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->i(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/o;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->c(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->b(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/m;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/c/vc;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/o$a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/o$a;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;

    move-result-object v0

    iput-object v2, v0, Lcom/google/android/gms/c/l;->d:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/l;

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->a()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-direct {p0}, Lcom/google/android/gms/c/e$a;->a()Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->f(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/c/e$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/l;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->e(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->f(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/l;->a(Lcom/google/android/gms/common/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/e$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v2}, Lcom/google/android/gms/c/e;->b(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->b(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v2}, Lcom/google/android/gms/c/e;->c(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v3}, Lcom/google/android/gms/c/e;->b(Lcom/google/android/gms/c/e;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/m;->a()Lcom/google/android/gms/c/vc;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/a;->a:Lcom/google/android/gms/common/a;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/c/e$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/l;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->e(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/e$a;->a:Lcom/google/android/gms/c/e;

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
