.class public abstract Lcom/google/android/gms/c/oh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/sl;
.implements Lcom/google/android/gms/c/ts$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/sl",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/google/android/gms/c/ts$a;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/c/ol$a;

.field protected final b:Landroid/content/Context;

.field protected final c:Lcom/google/android/gms/c/tr;

.field protected final d:Lcom/google/android/gms/c/rv$a;

.field protected e:Lcom/google/android/gms/c/pj;

.field protected final f:Ljava/lang/Object;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/oh;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/c/oh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/c/oh;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-object v0, p0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iput-object v0, p0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iput-object p3, p0, Lcom/google/android/gms/c/oh;->c:Lcom/google/android/gms/c/tr;

    iput-object p4, p0, Lcom/google/android/gms/c/oh;->a:Lcom/google/android/gms/c/ol$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/oh;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/oh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(I)Lcom/google/android/gms/c/rv;
    .locals 39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-object v6, v2, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    new-instance v2, Lcom/google/android/gms/c/rv;

    iget-object v3, v6, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/c/oh;->c:Lcom/google/android/gms/c/tr;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v5, v5, Lcom/google/android/gms/c/pj;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v7, v7, Lcom/google/android/gms/c/pj;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v8, v8, Lcom/google/android/gms/c/pj;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget v9, v9, Lcom/google/android/gms/c/pj;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-wide v10, v10, Lcom/google/android/gms/c/pj;->k:J

    iget-object v12, v6, Lcom/google/android/gms/c/pg;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-boolean v13, v6, Lcom/google/android/gms/c/pj;->h:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-wide v0, v6, Lcom/google/android/gms/c/rv$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->d:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->C:Lcom/google/android/gms/c/rk;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->D:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->E:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v6, Lcom/google/android/gms/c/pj;->F:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->G:Lcom/google/android/gms/c/pl;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->J:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->N:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/c/rv;-><init>(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/tr;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/c/me;Lcom/google/android/gms/c/mp;Ljava/lang/String;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/mh;JLcom/google/android/gms/c/ha;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/c/jq$a;Lcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 6

    const-string v0, "Webview render task needs to be called on UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/c/oh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/oh$1;-><init>(Lcom/google/android/gms/c/oh;)V

    iput-object v0, p0, Lcom/google/android/gms/c/oh;->g:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/c/oh;->g:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/c/is;->bo:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/c/oh;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/pj;

    iget-object v1, p0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    iget-wide v2, v1, Lcom/google/android/gms/c/pj;->k:J

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/c/pj;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/c/oh;->e:Lcom/google/android/gms/c/pj;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/oh;->c:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->e()V

    iget-object v0, p0, Lcom/google/android/gms/c/oh;->a:Lcom/google/android/gms/c/ol$a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/oh;->b(I)Lcom/google/android/gms/c/rv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ol$a;->b(Lcom/google/android/gms/c/rv;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/tr;Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "WebView finished loading."

    invoke-static {v1}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/c/oh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/c/oh;->c()I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/oh;->a(I)V

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/c/oh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected c()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/oh;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/oh;->c:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/c/sk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/oh;->c:Lcom/google/android/gms/c/tr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sk;->a(Lcom/google/android/gms/c/tr;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/oh;->a(I)V

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/c/oh;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/oh;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
