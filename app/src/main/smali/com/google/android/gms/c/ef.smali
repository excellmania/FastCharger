.class public Lcom/google/android/gms/c/ef;
.super Lcom/google/android/gms/c/fb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/dn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/aw$a;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/c/fb;-><init>(Lcom/google/android/gms/c/dn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/aw$a;II)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/c/ef;->e:Lcom/google/android/gms/c/aw$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/ef;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/c/dm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/c/dm;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ef;->e:Lcom/google/android/gms/c/aw$a;

    iget-object v3, v2, Lcom/google/android/gms/c/dm;->a:Ljava/lang/Long;

    iput-object v3, v0, Lcom/google/android/gms/c/aw$a;->Q:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/c/ef;->e:Lcom/google/android/gms/c/aw$a;

    iget-object v2, v2, Lcom/google/android/gms/c/dm;->b:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/c/aw$a;->R:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method