.class public Lcom/google/android/gms/ads/internal/r;
.super Lcom/google/android/gms/ads/internal/b;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private l:Lcom/google/android/gms/c/tr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/d;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/c/ms;)Lcom/google/android/gms/c/jl;
    .locals 14

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/c/jl;

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->d()Lcom/google/android/gms/c/jv;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->d()Lcom/google/android/gms/c/jv;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->f()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->g()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->h()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->l()Landroid/os/Bundle;

    move-result-object v11

    invoke-interface {p0}, Lcom/google/android/gms/c/ms;->m()Lcom/google/android/gms/c/hu;

    move-result-object v12

    move-object v13, v10

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/c/jl;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/c/jv;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/ji;Landroid/os/Bundle;Lcom/google/android/gms/c/hu;Landroid/view/View;)V

    return-object v0

    :cond_0
    move-object v4, v10

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/c/mt;)Lcom/google/android/gms/c/jm;
    .locals 9

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/c/jm;

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->d()Lcom/google/android/gms/c/jv;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->d()Lcom/google/android/gms/c/jv;

    move-result-object v4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/c/mt;->j()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/c/jm;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/c/jv;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/ji;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    move-object v4, v7

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/c/jl;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$2;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/jl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/c/jm;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$3;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/jm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/c/rv;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/r$4;-><init>(Lcom/google/android/gms/ads/internal/r;Ljava/lang/String;Lcom/google/android/gms/c/rv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public G()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ry;->r()Lcom/google/android/gms/c/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v3}, Lcom/google/android/gms/c/tr;->b()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/c/fl;->a(Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/rv;Landroid/view/View;Lcom/google/android/gms/c/lx;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public K()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/ki;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    :cond_0
    return-void
.end method

.method public M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->z()Lcom/google/android/gms/c/tw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/c/js;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/c/js;

    iget-object v0, v0, Lcom/google/android/gms/c/js;->f:Lcom/google/android/gms/c/ii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->z()Lcom/google/android/gms/c/tw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/c/js;

    iget-object v1, v1, Lcom/google/android/gms/c/js;->f:Lcom/google/android/gms/c/ii;

    iget-boolean v1, v1, Lcom/google/android/gms/c/ii;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/tw;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/ki;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/jf;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/jo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/tr;->a(Lcom/google/android/gms/c/jo;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/jq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ry;->r()Lcom/google/android/gms/c/fl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/c/fl;->a(Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/jq;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/js;)V
    .locals 1

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->w:Lcom/google/android/gms/c/js;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/kf;)V
    .locals 1

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/c/kf;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/kg;)V
    .locals 1

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/c/kg;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/nw;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/c/rv$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/r$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/r$1;-><init>(Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/rv$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/w;->E:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/c/ol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/r;->j:Lcom/google/android/gms/c/mo;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/c/ol;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    const-string v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/c/tr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/r;->l:Lcom/google/android/gms/c/tr;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->A:Ljava/util/List;

    return-void
.end method

.method protected a(Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/rv;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->e:Lcom/google/android/gms/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/s;->d()Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/r;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/w;->e()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v1, p2, Lcom/google/android/gms/c/rv;->n:Z

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p2, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    invoke-interface {v1}, Lcom/google/android/gms/c/mp;->h()Lcom/google/android/gms/c/ms;

    move-result-object v4

    :goto_0
    iget-object v1, p2, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    invoke-interface {v0}, Lcom/google/android/gms/c/mp;->i()Lcom/google/android/gms/c/mt;

    move-result-object v0

    move-object v6, v0

    :goto_1
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/c/kf;

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/ms;)Lcom/google/android/gms/c/jl;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/c/jp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/jp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/ms;Lcom/google/android/gms/c/jq$a;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/c/jl;->a(Lcom/google/android/gms/c/jq;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/jl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z

    move-result v0

    :goto_3
    return v0

    :cond_1
    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v6, v0

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/c/kg;

    if-eqz v0, :cond_4

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/mt;)Lcom/google/android/gms/c/jm;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/c/jp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    move-object v2, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/jp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/mt;Lcom/google/android/gms/c/jq$a;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/c/jm;->a(Lcom/google/android/gms/c/jq;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/jm;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    :try_start_2
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/r;->a(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v2

    goto :goto_3

    :cond_5
    iget-object v1, p2, Lcom/google/android/gms/c/rv;->E:Lcom/google/android/gms/c/jq$a;

    instance-of v0, v1, Lcom/google/android/gms/c/jm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->t:Lcom/google/android/gms/c/kg;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/gms/c/rv;->E:Lcom/google/android/gms/c/jq$a;

    check-cast v0, Lcom/google/android/gms/c/jm;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/jm;)V

    goto :goto_2

    :cond_6
    instance-of v0, v1, Lcom/google/android/gms/c/jl;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->s:Lcom/google/android/gms/c/kf;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/google/android/gms/c/rv;->E:Lcom/google/android/gms/c/jq$a;

    check-cast v0, Lcom/google/android/gms/c/jl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/jl;)V

    goto :goto_2

    :cond_7
    instance-of v0, v1, Lcom/google/android/gms/c/jn;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/c/jn;

    invoke-virtual {v0}, Lcom/google/android/gms/c/jn;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v1, Lcom/google/android/gms/c/jn;

    invoke-virtual {v1}, Lcom/google/android/gms/c/jn;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/rv;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/r;->a(I)V

    move v0, v2

    goto/16 :goto_3
.end method

.method public b(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/kh;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->u:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/gms/c/kh;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->u:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/kh;

    return-object v0
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
