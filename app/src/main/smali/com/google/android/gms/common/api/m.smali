.class public abstract Lcom/google/android/gms/common/api/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/c/p;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/c/vc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/vc",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final i:Lcom/google/android/gms/c/ai;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/m;->c:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/a$a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/m;->f:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/c/vc;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/c/vc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Lcom/google/android/gms/c/vc;

    new-instance v0, Lcom/google/android/gms/c/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/q;-><init>(Lcom/google/android/gms/common/api/m;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/c/p;->a(Landroid/content/Context;)Lcom/google/android/gms/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    invoke-virtual {v0}, Lcom/google/android/gms/c/p;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/m;->g:I

    new-instance v0, Lcom/google/android/gms/c/vb;

    invoke-direct {v0}, Lcom/google/android/gms/c/vb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->i:Lcom/google/android/gms/c/ai;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Landroid/os/Looper;Lcom/google/android/gms/c/ai;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/c/ai;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/m;->c:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/a$a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/m;->f:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/a$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/vc;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/c/vc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Lcom/google/android/gms/c/vc;

    new-instance v0, Lcom/google/android/gms/c/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/q;-><init>(Lcom/google/android/gms/common/api/m;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/c/p;->a(Landroid/content/Context;)Lcom/google/android/gms/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    invoke-virtual {v0}, Lcom/google/android/gms/c/p;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/m;->g:I

    iput-object p5, p0, Lcom/google/android/gms/common/api/m;->i:Lcom/google/android/gms/c/ai;

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/c/ai;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;",
            "Lcom/google/android/gms/c/ai;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Landroid/os/Looper;Lcom/google/android/gms/c/ai;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    goto :goto_0
.end method

.method private a(ILcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;
    .locals 1
    .param p2    # Lcom/google/android/gms/c/vf$a;
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
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/c/vf$a;->i()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->a:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/common/api/m;ILcom/google/android/gms/c/vf$a;)V

    return-object p2
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/c/ah;
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/ah;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/c/ah;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public a()Lcom/google/android/gms/c/vc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/c/vc",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->e:Lcom/google/android/gms/c/vc;

    return-object v0
.end method

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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/m;->a(ILcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Looper;Lcom/google/android/gms/c/p$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/c/p$a",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/m;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/o;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/m;->d:Lcom/google/android/gms/common/api/a$a;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/m;->g:I

    return v0
.end method

.method public b(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;
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

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/m;->a(ILcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public d()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/m;->f:Landroid/os/Looper;

    return-object v0
.end method
