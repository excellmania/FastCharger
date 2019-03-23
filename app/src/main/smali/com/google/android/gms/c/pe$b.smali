.class public Lcom/google/android/gms/c/pe$b;
.super Lcom/google/android/gms/c/pe;

# interfaces
.implements Lcom/google/android/gms/common/internal/n$b;
.implements Lcom/google/android/gms/common/internal/n$c;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/c/pf;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/c/tc;

.field private d:Lcom/google/android/gms/c/tk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/c/pd$a;

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tc;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/c/pe;-><init>(Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/pe$b;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/c/pe$b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/pe$b;->c:Lcom/google/android/gms/c/tc;

    iput-object p3, p0, Lcom/google/android/gms/c/pe$b;->d:Lcom/google/android/gms/c/tk;

    iput-object p4, p0, Lcom/google/android/gms/c/pe$b;->e:Lcom/google/android/gms/c/pd$a;

    sget-object v0, Lcom/google/android/gms/c/is;->O:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/pe$b;->g:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/c/sr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/sr;->a()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/c/pf;

    iget-object v1, p0, Lcom/google/android/gms/c/pe$b;->c:Lcom/google/android/gms/c/tc;

    iget v5, v1, Lcom/google/android/gms/c/tc;->d:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/pf;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/n$b;Lcom/google/android/gms/common/internal/n$c;I)V

    iput-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe$b;->f()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/pe$b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pf;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pf;->a()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/c/pe$b;->g:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->u()Lcom/google/android/gms/c/sr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/sr;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/pe$b;->g:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->e()Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe$b;->g()Lcom/google/android/gms/c/sl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/sl;->e()Ljava/lang/Object;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/pe$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/c/pe$b;->c:Lcom/google/android/gms/c/tc;

    iget-object v2, v2, Lcom/google/android/gms/c/tc;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/c/sj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public b()Lcom/google/android/gms/c/pp;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/pe$b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pf;->k()Lcom/google/android/gms/c/pp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/c/pe;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/pe$b;->a:Lcom/google/android/gms/c/pf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pf;->n()V

    return-void
.end method

.method g()Lcom/google/android/gms/c/sl;
    .locals 4

    new-instance v0, Lcom/google/android/gms/c/pe$a;

    iget-object v1, p0, Lcom/google/android/gms/c/pe$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/c/pe$b;->d:Lcom/google/android/gms/c/tk;

    iget-object v3, p0, Lcom/google/android/gms/c/pe$b;->e:Lcom/google/android/gms/c/pd$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/c/pe$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V

    return-object v0
.end method
