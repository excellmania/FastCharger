.class public Lcom/google/android/gms/c/eb;
.super Lcom/google/android/gms/c/fb;


# instance fields
.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/dn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/aw$a;II)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/c/fb;-><init>(Lcom/google/android/gms/c/dn;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/aw$a;II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/c/eb;->i:J

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/c/eb;->e:Lcom/google/android/gms/c/aw$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/c/aw$a;->l:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/google/android/gms/c/eb;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/eb;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/c/eb;->b:Lcom/google/android/gms/c/dn;

    invoke-virtual {v4}, Lcom/google/android/gms/c/dn;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/c/eb;->i:J

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/eb;->e:Lcom/google/android/gms/c/aw$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/eb;->e:Lcom/google/android/gms/c/aw$a;

    iget-wide v2, p0, Lcom/google/android/gms/c/eb;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/c/aw$a;->l:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
