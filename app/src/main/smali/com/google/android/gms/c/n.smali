.class public Lcom/google/android/gms/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/t;
.implements Lcom/google/android/gms/c/vj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/n$a;,
        Lcom/google/android/gms/c/n$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/android/gms/common/internal/o;

.field final d:Ljava/util/Map;
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

.field final e:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/c/cs;",
            "Lcom/google/android/gms/c/ct;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field final g:Lcom/google/android/gms/c/l;

.field final h:Lcom/google/android/gms/c/t$a;

.field private final i:Ljava/util/concurrent/locks/Lock;

.field private final j:Ljava/util/concurrent/locks/Condition;

.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/gms/common/k;

.field private final m:Lcom/google/android/gms/c/n$b;

.field private volatile n:Lcom/google/android/gms/c/m;

.field private o:Lcom/google/android/gms/common/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/l;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/k;Ljava/util/Map;Lcom/google/android/gms/common/internal/o;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/c/t$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/l;",
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
            "Lcom/google/android/gms/c/t$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/n;->o:Lcom/google/android/gms/common/a;

    iput-object p1, p0, Lcom/google/android/gms/c/n;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/c/n;->l:Lcom/google/android/gms/common/k;

    iput-object p6, p0, Lcom/google/android/gms/c/n;->a:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/c/n;->c:Lcom/google/android/gms/common/internal/o;

    iput-object p8, p0, Lcom/google/android/gms/c/n;->d:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/c/n;->e:Lcom/google/android/gms/common/api/a$b;

    iput-object p2, p0, Lcom/google/android/gms/c/n;->g:Lcom/google/android/gms/c/l;

    iput-object p11, p0, Lcom/google/android/gms/c/n;->h:Lcom/google/android/gms/c/t$a;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/vi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/vi;->a(Lcom/google/android/gms/c/vj;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/c/n$b;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/c/n$b;-><init>(Lcom/google/android/gms/c/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->m:Lcom/google/android/gms/c/n$b;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/n;->j:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/c/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/k;-><init>(Lcom/google/android/gms/c/n;)V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/n;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/c/n;)Lcom/google/android/gms/c/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;
    .locals 1
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

    invoke-virtual {p1}, Lcom/google/android/gms/c/vf$a;->i()V

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/m;->a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0}, Lcom/google/android/gms/c/m;->c()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/m;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/m;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Lcom/google/android/gms/c/n$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->m:Lcom/google/android/gms/c/n$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/c/n$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->m:Lcom/google/android/gms/c/n$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/n$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/c/n;->o:Lcom/google/android/gms/common/a;

    new-instance v0, Lcom/google/android/gms/c/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/k;-><init>(Lcom/google/android/gms/c/n;)V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0}, Lcom/google/android/gms/c/m;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/n;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;I)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/a;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/c/m;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->m:Lcom/google/android/gms/c/n$b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/c/n$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->m:Lcom/google/android/gms/c/n$b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/n$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/c/n;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/a$f;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0}, Lcom/google/android/gms/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    instance-of v0, v0, Lcom/google/android/gms/c/i;

    return v0
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    check-cast v0, Lcom/google/android/gms/c/i;

    invoke-virtual {v0}, Lcom/google/android/gms/c/i;->d()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/c/j;

    iget-object v2, p0, Lcom/google/android/gms/c/n;->c:Lcom/google/android/gms/common/internal/o;

    iget-object v3, p0, Lcom/google/android/gms/c/n;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/c/n;->l:Lcom/google/android/gms/common/k;

    iget-object v5, p0, Lcom/google/android/gms/c/n;->e:Lcom/google/android/gms/common/api/a$b;

    iget-object v6, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/c/n;->k:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/c/j;-><init>(Lcom/google/android/gms/c/n;Lcom/google/android/gms/common/internal/o;Ljava/util/Map;Lcom/google/android/gms/common/k;Lcom/google/android/gms/common/api/a$b;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0}, Lcom/google/android/gms/c/m;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/n;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/n;->g:Lcom/google/android/gms/c/l;

    invoke-virtual {v0}, Lcom/google/android/gms/c/l;->f()Z

    new-instance v0, Lcom/google/android/gms/c/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/i;-><init>(Lcom/google/android/gms/c/n;)V

    iput-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    iget-object v0, p0, Lcom/google/android/gms/c/n;->n:Lcom/google/android/gms/c/m;

    invoke-interface {v0}, Lcom/google/android/gms/c/m;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/n;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/c/n;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
