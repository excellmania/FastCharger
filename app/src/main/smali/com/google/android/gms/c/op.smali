.class public Lcom/google/android/gms/c/op;
.super Lcom/google/android/gms/c/ok;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field g:Lcom/google/android/gms/c/md;

.field protected h:Lcom/google/android/gms/c/mj;

.field private i:Lcom/google/android/gms/c/mo;

.field private j:Lcom/google/android/gms/c/mf;

.field private final k:Lcom/google/android/gms/c/jb;

.field private final l:Lcom/google/android/gms/c/tr;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/c/tr;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/c/ok;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/ol$a;)V

    iput-object p3, p0, Lcom/google/android/gms/c/op;->i:Lcom/google/android/gms/c/mo;

    iget-object v0, p2, Lcom/google/android/gms/c/rv$a;->c:Lcom/google/android/gms/c/mf;

    iput-object v0, p0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iput-object p5, p0, Lcom/google/android/gms/c/op;->k:Lcom/google/android/gms/c/jb;

    iput-object p6, p0, Lcom/google/android/gms/c/op;->l:Lcom/google/android/gms/c/tr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/op;)Lcom/google/android/gms/c/tr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/op;->l:Lcom/google/android/gms/c/tr;

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/c/mj;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    iget-object v0, v0, Lcom/google/android/gms/c/me;->d:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/c/mj;->a:I

    invoke-static {v1}, Lcom/google/android/gms/c/op;->b(I)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/c/mj;->g:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/mj;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, ""

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/mj;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    iget-object v3, v3, Lcom/google/android/gms/c/me;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/c/op;->a(Lcom/google/android/gms/c/mj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/c/op;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/op;->m:Z

    return p1
.end method

.method private static b(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x6

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/op$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/op$1;-><init>(Lcom/google/android/gms/c/op;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/c/op;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/c/op;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/ok$a;

    const-string v2, "View could not be prepared"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/c/ok$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/c/ok$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Interrupted while waiting for latch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/c/ok$a;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/c/op;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/c/ok$a;

    const-string v2, "Assets not loaded, web view is destroyed"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/c/ok$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method


# virtual methods
.method protected a(I)Lcom/google/android/gms/c/rv;
    .locals 39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v6, v2, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    new-instance v2, Lcom/google/android/gms/c/rv;

    iget-object v3, v6, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/c/op;->l:Lcom/google/android/gms/c/tr;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v5, v5, Lcom/google/android/gms/c/pj;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v7, v7, Lcom/google/android/gms/c/pj;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v8, v8, Lcom/google/android/gms/c/pj;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget v9, v9, Lcom/google/android/gms/c/pj;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-wide v10, v10, Lcom/google/android/gms/c/pj;->k:J

    iget-object v12, v6, Lcom/google/android/gms/c/pg;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-boolean v13, v6, Lcom/google/android/gms/c/pj;->h:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v14, v6, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v15, v6, Lcom/google/android/gms/c/mj;->c:Lcom/google/android/gms/c/mp;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v0, v6, Lcom/google/android/gms/c/mj;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v0, v6, Lcom/google/android/gms/c/mj;->e:Lcom/google/android/gms/c/mh;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-wide v0, v6, Lcom/google/android/gms/c/rv$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->C:Lcom/google/android/gms/c/rk;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->D:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->E:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iget-boolean v0, v6, Lcom/google/android/gms/c/mf;->n:Z

    move/from16 v34, v0

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->G:Lcom/google/android/gms/c/pl;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    invoke-interface {v6}, Lcom/google/android/gms/c/md;->b()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/c/op;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v36

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->J:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->N:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/c/rv;-><init>(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/tr;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/c/me;Lcom/google/android/gms/c/mp;Ljava/lang/String;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/mh;JLcom/google/android/gms/c/ha;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/c/jq$a;Lcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_4
    const/16 v34, 0x0

    goto :goto_4

    :cond_5
    const/16 v36, 0x0

    goto :goto_5
.end method

.method protected a(J)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/c/op;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/op;->b(J)Lcom/google/android/gms/c/md;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iget-object v0, v0, Lcom/google/android/gms/c/mf;->a:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    iget-object v0, v0, Lcom/google/android/gms/c/gv;->m:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "_skipMediation"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/me;

    iget-object v0, v0, Lcom/google/android/gms/c/me;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    invoke-interface {v0, v2}, Lcom/google/android/gms/c/md;->a(Ljava/util/List;)Lcom/google/android/gms/c/mj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget v0, v0, Lcom/google/android/gms/c/mj;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/c/ok$a;

    iget-object v2, p0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget v2, v2, Lcom/google/android/gms/c/mj;->a:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected mediation result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/c/ok$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/c/ok$a;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/c/ok$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v0, v0, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/c/op;->h:Lcom/google/android/gms/c/mj;

    iget-object v0, v0, Lcom/google/android/gms/c/mj;->b:Lcom/google/android/gms/c/me;

    iget-object v0, v0, Lcom/google/android/gms/c/me;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/c/op;->c()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(J)Lcom/google/android/gms/c/md;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iget v0, v0, Lcom/google/android/gms/c/mf;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/google/android/gms/c/ml;

    iget-object v2, p0, Lcom/google/android/gms/c/op;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v3, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v4, p0, Lcom/google/android/gms/c/op;->i:Lcom/google/android/gms/c/mo;

    iget-object v5, p0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-boolean v6, v0, Lcom/google/android/gms/c/pj;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-boolean v7, v0, Lcom/google/android/gms/c/pj;->B:Z

    sget-object v0, Lcom/google/android/gms/c/is;->bo:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x2

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/c/ml;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/mf;ZZJJI)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/gms/c/mm;

    iget-object v2, p0, Lcom/google/android/gms/c/op;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->e:Lcom/google/android/gms/c/rv$a;

    iget-object v3, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v4, p0, Lcom/google/android/gms/c/op;->i:Lcom/google/android/gms/c/mo;

    iget-object v5, p0, Lcom/google/android/gms/c/op;->j:Lcom/google/android/gms/c/mf;

    iget-object v0, p0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-boolean v6, v0, Lcom/google/android/gms/c/pj;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/c/op;->f:Lcom/google/android/gms/c/pj;

    iget-boolean v7, v0, Lcom/google/android/gms/c/pj;->B:Z

    sget-object v0, Lcom/google/android/gms/c/is;->bo:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, p0, Lcom/google/android/gms/c/op;->k:Lcom/google/android/gms/c/jb;

    move-wide v8, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/c/mm;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/mf;ZZJJLcom/google/android/gms/c/jb;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/op;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/c/ok;->b()V

    iget-object v0, p0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/op;->g:Lcom/google/android/gms/c/md;

    invoke-interface {v0}, Lcom/google/android/gms/c/md;->a()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
