.class public Lcom/google/android/gms/ads/internal/l;
.super Lcom/google/android/gms/ads/internal/c;

# interfaces
.implements Lcom/google/android/gms/c/kw;
.implements Lcom/google/android/gms/c/lb$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/l$a;
    }
.end annotation


# instance fields
.field protected transient l:Z

.field private m:I

.field private n:Z

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/l;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/l;->l:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v2, v2, Lcom/google/android/gms/c/tc;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/c/sj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/internal/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/l;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/internal/l;)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/l;->o:F

    return v0
.end method

.method static b(Lcom/google/android/gms/c/rv$a;)Lcom/google/android/gms/c/rv$a;
    .locals 46

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    invoke-static {v2}, Lcom/google/android/gms/c/qa;->a(Lcom/google/android/gms/c/pj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v5, v5, Lcom/google/android/gms/c/pg;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/c/me;

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/c/me;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    move-object/from16 v44, v0

    new-instance v45, Lcom/google/android/gms/c/mf;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v44

    iget-object v9, v0, Lcom/google/android/gms/c/pj;->J:Ljava/util/List;

    move-object/from16 v0, v44

    iget-boolean v10, v0, Lcom/google/android/gms/c/pj;->K:Z

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v45

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/c/mf;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/c/pj;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/google/android/gms/c/pj;->b:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v44

    iget-wide v8, v0, Lcom/google/android/gms/c/pj;->g:J

    const/4 v10, 0x1

    move-object/from16 v0, v44

    iget-wide v11, v0, Lcom/google/android/gms/c/pj;->i:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v44

    iget-wide v14, v0, Lcom/google/android/gms/c/pj;->k:J

    move-object/from16 v0, v44

    iget v0, v0, Lcom/google/android/gms/c/pj;->l:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->m:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/google/android/gms/c/pj;->n:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->o:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->p:Z

    move/from16 v21, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->q:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->s:Z

    move/from16 v24, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->t:Z

    move/from16 v25, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->u:Z

    move/from16 v26, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->v:Z

    move/from16 v27, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->w:Z

    move/from16 v28, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->z:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->A:Z

    move/from16 v30, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->B:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->F:Z

    move/from16 v35, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->G:Lcom/google/android/gms/c/pl;

    move-object/from16 v36, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->H:Z

    move/from16 v37, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->I:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->J:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->K:Z

    move/from16 v40, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->L:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/c/pj;->N:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->O:Z

    move/from16 v44, v0

    invoke-direct/range {v2 .. v44}, Lcom/google/android/gms/c/pj;-><init>(Lcom/google/android/gms/c/pg;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V

    new-instance v4, Lcom/google/android/gms/c/rv$a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/c/rv$a;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/c/rv$a;->f:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/c/rv$a;->g:J

    const/4 v14, 0x0

    move-object v6, v2

    move-object/from16 v7, v45

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/c/rv$a;-><init>(Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/pj;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/ha;IJJLorg/json/JSONObject;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string v3, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v3, v2}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, p0

    goto :goto_0
.end method


# virtual methods
.method public G()V
    .locals 10

    const/4 v5, -0x1

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-nez v0, :cond_1

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/c/is;->bb:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/l;->l:Z

    if-nez v1, :cond_2

    const-string v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/l;->a(Landroid/os/Bundle;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/sj;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/l;->a(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-boolean v0, v0, Lcom/google/android/gms/c/rv;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    invoke-interface {v0}, Lcom/google/android/gms/c/mp;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->N()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-nez v0, :cond_6

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/tr;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/c/fl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/fl;->a(Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/rv;)V

    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    invoke-virtual {v0}, Lcom/google/android/gms/c/rv;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/google/android/gms/c/fr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v3}, Lcom/google/android/gms/c/tr;->b()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/c/fr;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/fr;->a(Lcom/google/android/gms/c/fr$b;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/w;->G:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sj;->h(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->z()Lcom/google/android/gms/c/ss;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ss;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/l;->m:I

    sget-object v0, Lcom/google/android/gms/c/is;->bT:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    new-instance v0, Lcom/google/android/gms/ads/internal/l$a;

    iget v1, p0, Lcom/google/android/gms/ads/internal/l;->m:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/l$a;-><init>(Lcom/google/android/gms/ads/internal/l;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/c/se;->e()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/l$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/l$1;-><init>(Lcom/google/android/gms/ads/internal/l;Lcom/google/android/gms/c/rv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$c;)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_3

    :cond_c
    new-instance v0, Lcom/google/android/gms/ads/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/w;->G:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->M()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/m;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v1, v1, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->q()I

    move-result v6

    if-ne v6, v5, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget v6, v1, Lcom/google/android/gms/c/rv;->g:I

    :cond_d
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v5, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v8, v2, Lcom/google/android/gms/c/rv;->C:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/c/gq;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/c/tr;ILcom/google/android/gms/c/tc;Ljava/lang/String;Lcom/google/android/gms/ads/internal/m;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->c()Lcom/google/android/gms/ads/internal/overlay/h;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/h;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    goto/16 :goto_0
.end method

.method protected M()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public N()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->z()Lcom/google/android/gms/c/ss;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/l;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ss;->b(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->b()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/w;->G:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/l;->l:Z

    :cond_0
    return-void
.end method

.method public O()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v2, v2, Lcom/google/android/gms/c/tc;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v3, v3, Lcom/google/android/gms/c/rv;->y:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/c/sj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->w()V

    return-void
.end method

.method protected a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/rp;)Lcom/google/android/gms/c/tr;
    .locals 12
    .param p2    # Lcom/google/android/gms/ads/internal/e;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/c/rp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/c/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/l;->a:Lcom/google/android/gms/c/jb;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/l;->i:Lcom/google/android/gms/ads/internal/d;

    move v4, v3

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/c/tt;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tr;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/c/is;->ar:Lcom/google/android/gms/c/io;

    invoke-virtual {v1}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v10

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/gq;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/c/kn;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/c/kt;Lcom/google/android/gms/c/kw;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/nm;Lcom/google/android/gms/c/rp;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/lx;)V

    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->w:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/c/tr;->b(Ljava/lang/String;)V

    invoke-static {v11, p0}, Lcom/google/android/gms/c/lb;->a(Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/lb$a;)V

    return-object v11
.end method

.method public a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/c/is;->aK:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/c/rv$a;->e:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    iget-object v0, v0, Lcom/google/android/gms/c/gv;->m:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "gw"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v3, v3, Lcom/google/android/gms/c/pj;->h:Z

    if-nez v3, :cond_5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/l;->b(Lcom/google/android/gms/c/rv$a;)Lcom/google/android/gms/c/rv$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/c/rv$a;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/c/rv$a;

    invoke-super {p0, v0, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public a(ZF)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/l;->n:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/l;->o:F

    return-void
.end method

.method public a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/jb;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/jb;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/rv;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/c/sk;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sk;->a(Lcom/google/android/gms/c/tr;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/s;->d()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/c/rv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/google/android/gms/c/rv;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->h:Lcom/google/android/gms/c/fl;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->D:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/c/fl;->a(Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/rv;Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/c/rk;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v2, v2, Lcom/google/android/gms/c/tc;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v3, v3, Lcom/google/android/gms/c/rv;->z:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/c/sj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->x:Lcom/google/android/gms/c/rk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object p1, v0, Lcom/google/android/gms/c/rv;->x:Lcom/google/android/gms/c/rk;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/rk;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/w;->G:Z

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->E()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->d()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/l;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ts;->h()V

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/l;->N()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->s()V

    return-void
.end method

.method protected v()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/c;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/l;->l:Z

    return-void
.end method
