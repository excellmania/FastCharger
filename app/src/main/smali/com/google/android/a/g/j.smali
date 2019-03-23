.class public final Lcom/google/android/a/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/d;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/a/g/d$a;

.field private final c:Lcom/google/android/a/h/c;

.field private final d:Lcom/google/android/a/h/t;

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/google/android/a/g/j;-><init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;)V
    .locals 1

    new-instance v0, Lcom/google/android/a/h/u;

    invoke-direct {v0}, Lcom/google/android/a/h/u;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/a/g/j;-><init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;Lcom/google/android/a/h/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;Lcom/google/android/a/h/c;)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/a/g/j;-><init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;Lcom/google/android/a/h/c;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/a/g/d$a;Lcom/google/android/a/h/c;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/g/j;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/a/g/j;->b:Lcom/google/android/a/g/d$a;

    iput-object p3, p0, Lcom/google/android/a/g/j;->c:Lcom/google/android/a/h/c;

    new-instance v0, Lcom/google/android/a/h/t;

    invoke-direct {v0, p4}, Lcom/google/android/a/h/t;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/g/j;->d:Lcom/google/android/a/h/t;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/g/j;->g:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/g/j;)Lcom/google/android/a/g/d$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/g/j;->b:Lcom/google/android/a/g/d$a;

    return-object v0
.end method

.method private a(IJJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/g/j;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/j;->b:Lcom/google/android/a/g/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/g/j$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/g/j$1;-><init>(Lcom/google/android/a/g/j;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/a/g/j;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/a/g/j;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/g/j;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/a/g/j;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/j;->c:Lcom/google/android/a/h/c;

    invoke-interface {v0}, Lcom/google/android/a/h/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/g/j;->f:J

    :cond_0
    iget v0, p0, Lcom/google/android/a/g/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/g/j;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/a/g/j;->h:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/g/j;->c:Lcom/google/android/a/h/c;

    invoke-interface {v0}, Lcom/google/android/a/h/c;->a()J

    move-result-wide v6

    iget-wide v0, p0, Lcom/google/android/a/g/j;->f:J

    sub-long v0, v6, v0

    long-to-int v1, v0

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/g/j;->e:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v0, v2

    iget-object v2, p0, Lcom/google/android/a/g/j;->d:Lcom/google/android/a/h/t;

    iget-wide v4, p0, Lcom/google/android/a/g/j;->e:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/a/h/t;->a(IF)V

    iget-object v0, p0, Lcom/google/android/a/g/j;->d:Lcom/google/android/a/h/t;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/t;->a(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lcom/google/android/a/g/j;->g:J

    iget-wide v2, p0, Lcom/google/android/a/g/j;->e:J

    iget-wide v4, p0, Lcom/google/android/a/g/j;->g:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/g/j;->a(IJJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/a/g/j;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/g/j;->h:I

    iget v0, p0, Lcom/google/android/a/g/j;->h:I

    if-lez v0, :cond_1

    iput-wide v6, p0, Lcom/google/android/a/g/j;->f:J

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/g/j;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    float-to-long v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
