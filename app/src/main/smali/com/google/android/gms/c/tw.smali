.class public Lcom/google/android/gms/c/tw;
.super Lcom/google/android/gms/c/hu$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/tr;

.field private final b:Ljava/lang/Object;

.field private final c:F

.field private d:I

.field private e:Lcom/google/android/gms/c/hv;

.field private f:Z

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/tr;F)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/hu$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/tw;->i:Z

    iput-object p1, p0, Lcom/google/android/gms/c/tw;->a:Lcom/google/android/gms/c/tr;

    iput p2, p0, Lcom/google/android/gms/c/tw;->c:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/tw;)Lcom/google/android/gms/c/tr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/tw;->a:Lcom/google/android/gms/c/tr;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/tw$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/c/tw$2;-><init>(Lcom/google/android/gms/c/tw;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/c/tw$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/tw$1;-><init>(Lcom/google/android/gms/c/tw;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/sj;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/c/tw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/tw;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/c/tw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/c/tw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/tw;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/c/tw;)Lcom/google/android/gms/c/hv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/tw;->e:Lcom/google/android/gms/c/hv;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "play"

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(FIZF)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/c/tw;->h:F

    iput-boolean p3, p0, Lcom/google/android/gms/c/tw;->g:Z

    iget v0, p0, Lcom/google/android/gms/c/tw;->d:I

    iput p2, p0, Lcom/google/android/gms/c/tw;->d:I

    iput p4, p0, Lcom/google/android/gms/c/tw;->j:F

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/c/tw;->a(II)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/hv;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/c/tw;->e:Lcom/google/android/gms/c/hv;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "mute"

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "unmute"

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/c/tw;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "initialState"

    const-string v2, "muteStart"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/tw;->g:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/c/tw;->d:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/tw;->c:F

    return v0
.end method

.method public f()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/c/tw;->h:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()F
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/tw;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/c/tw;->j:F

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
