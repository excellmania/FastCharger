.class Lcom/google/android/gms/c/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ah$a;
.implements Lcom/google/android/gms/common/internal/n$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/p;

.field private final b:Lcom/google/android/gms/common/api/a$f;

.field private final c:Lcom/google/android/gms/c/vc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/vc",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/common/internal/y;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/p;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/c/vc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/c/vc",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/c/p$b;->a:Lcom/google/android/gms/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/p$b;->d:Lcom/google/android/gms/common/internal/y;

    iput-object v0, p0, Lcom/google/android/gms/c/p$b;->e:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/p$b;->f:Z

    iput-object p2, p0, Lcom/google/android/gms/c/p$b;->b:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/c/p$b;->c:Lcom/google/android/gms/c/vc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/p$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->b:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method private a()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/c/p$b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->d:Lcom/google/android/gms/common/internal/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->b:Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/c/p$b;->d:Lcom/google/android/gms/common/internal/y;

    iget-object v2, p0, Lcom/google/android/gms/c/p$b;->e:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/y;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/p$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/p$b;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/c/p$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/p$b;->a()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/c/p$b;)Lcom/google/android/gms/c/vc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->c:Lcom/google/android/gms/c/vc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/a;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->a:Lcom/google/android/gms/c/p;

    invoke-static {v0}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/c/p;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/p$b$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/p$b$1;-><init>(Lcom/google/android/gms/c/p$b;Lcom/google/android/gms/common/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/y;Ljava/util/Set;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/y;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "GoogleApiManager"

    const-string v1, "Received null response from onSignInSuccess"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/p$b;->b(Lcom/google/android/gms/common/a;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/c/p$b;->d:Lcom/google/android/gms/common/internal/y;

    iput-object p2, p0, Lcom/google/android/gms/c/p$b;->e:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/c/p$b;->a()V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/a;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/p$b;->a:Lcom/google/android/gms/c/p;

    invoke-static {v0}, Lcom/google/android/gms/c/p;->j(Lcom/google/android/gms/c/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/p$b;->c:Lcom/google/android/gms/c/vc;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/p$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/p$a;->b(Lcom/google/android/gms/common/a;)V

    return-void
.end method
