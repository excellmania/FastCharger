.class public Lcom/google/android/gms/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/c/p;

.field private final d:Lcom/google/android/gms/c/l;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Landroid/os/Looper;

.field private final g:Lcom/google/android/gms/common/k;

.field private final h:Ljava/util/concurrent/locks/Condition;

.field private final i:Lcom/google/android/gms/common/internal/o;

.field private j:Z

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/c/vc",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/gms/common/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/k;Ljava/util/Map;Lcom/google/android/gms/common/internal/o;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/c/l;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/k;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/google/android/gms/common/internal/o;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/c/cs;",
            "Lcom/google/android/gms/c/ct;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/c/vi;",
            ">;",
            "Lcom/google/android/gms/c/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/c/e;->a:Ljava/util/Map;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/c/e;->f:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/c/e;->h:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/c/e;->g:Lcom/google/android/gms/common/k;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/c/e;->d:Lcom/google/android/gms/c/l;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/c/e;->b:Ljava/util/Map;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/c/e;->i:Lcom/google/android/gms/common/internal/o;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v3

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/c/vi;

    iget-object v3, v1, Lcom/google/android/gms/c/vi;->a:Lcom/google/android/gms/common/api/a;

    invoke-interface {v11, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/c/vi;

    iget-object v13, p0, Lcom/google/android/gms/c/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/c/d;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/c/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/c/vi;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/a$b;)V

    invoke-interface {v13, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/android/gms/c/p;->a()Lcom/google/android/gms/c/p;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/c/e;->c:Lcom/google/android/gms/c/p;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/e;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/e;->l:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/c/e;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/e;->k:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/e;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/c/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/c/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/c/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->d:Lcom/google/android/gms/c/l;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/c/e;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->h:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->l:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/c/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->g:Lcom/google/android/gms/common/k;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/c/e;)Lcom/google/android/gms/common/internal/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/e;->i:Lcom/google/android/gms/common/internal/o;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/c/vf$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/c/vf$a",
            "<+",
            "Lcom/google/android/gms/common/api/f;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/e;->d:Lcom/google/android/gms/c/l;

    iget-object v0, v0, Lcom/google/android/gms/c/l;->i:Lcom/google/android/gms/c/am;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/am;->a(Lcom/google/android/gms/c/vh;)V

    iget-object v0, p0, Lcom/google/android/gms/c/e;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/c/vf$a;->b()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/c/e;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/e;->k:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/e;->l:Lcom/google/android/gms/common/a;

    new-instance v0, Lcom/google/android/gms/c/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/c/e$a;-><init>(Lcom/google/android/gms/c/e;Lcom/google/android/gms/c/e$1;)V

    new-instance v1, Lcom/google/android/gms/c/ap;

    iget-object v2, p0, Lcom/google/android/gms/c/e;->f:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/ap;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/google/android/gms/c/e;->c:Lcom/google/android/gms/c/p;

    iget-object v3, p0, Lcom/google/android/gms/c/e;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/c/p;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/d/d;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/d/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/b;)Lcom/google/android/gms/d/d;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/d/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/d/a;)Lcom/google/android/gms/d/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/c/e;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/e;->k:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/e;->l:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/c/e;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/e;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/e;->l:Lcom/google/android/gms/common/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/e;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public d()V
    .locals 0

    return-void
.end method
