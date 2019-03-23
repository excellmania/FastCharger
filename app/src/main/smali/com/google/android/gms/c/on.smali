.class public Lcom/google/android/gms/c/on;
.super Lcom/google/android/gms/c/se;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/ol$a;

.field private final b:Lcom/google/android/gms/c/pj;

.field private final c:Lcom/google/android/gms/c/rv$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/ol$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/se;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v0, p0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iput-object v0, p0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iput-object p2, p0, Lcom/google/android/gms/c/on;->a:Lcom/google/android/gms/c/ol$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/on;)Lcom/google/android/gms/c/ol$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/on;->a:Lcom/google/android/gms/c/ol$a;

    return-object v0
.end method

.method private a(I)Lcom/google/android/gms/c/rv;
    .locals 39

    new-instance v2, Lcom/google/android/gms/c/rv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v3, v3, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v3, v3, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget v9, v6, Lcom/google/android/gms/c/pj;->l:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget-wide v10, v6, Lcom/google/android/gms/c/pj;->k:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v6, v6, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v12, v6, Lcom/google/android/gms/c/pg;->i:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-wide v0, v6, Lcom/google/android/gms/c/rv$a;->f:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget-wide v0, v6, Lcom/google/android/gms/c/pj;->n:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->b:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->o:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v6, Lcom/google/android/gms/c/rv$a;->h:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v6, v6, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v6, Lcom/google/android/gms/c/pj;->F:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/c/on;->c:Lcom/google/android/gms/c/rv$a;

    iget-object v6, v6, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-object v0, v6, Lcom/google/android/gms/c/pj;->G:Lcom/google/android/gms/c/pl;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/c/rv;-><init>(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/tr;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/c/me;Lcom/google/android/gms/c/mp;Ljava/lang/String;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/mh;JLcom/google/android/gms/c/ha;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/c/jq$a;Lcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/on;->a(I)Lcom/google/android/gms/c/rv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/on$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/on$1;-><init>(Lcom/google/android/gms/c/on;Lcom/google/android/gms/c/rv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
