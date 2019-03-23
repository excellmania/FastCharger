.class public abstract Lcom/google/android/gms/ads/internal/c;
.super Lcom/google/android/gms/ads/internal/b;

# interfaces
.implements Lcom/google/android/gms/ads/internal/h;
.implements Lcom/google/android/gms/c/nm;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    return-void
.end method


# virtual methods
.method public J()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->e()V

    return-void
.end method

.method public K()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->E()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->m()V

    return-void
.end method

.method public L()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->s()V

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

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/w$a;->getNextView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/c/tr;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/c/tr;

    sget-object v2, Lcom/google/android/gms/c/is;->ax:Lcom/google/android/gms/c/io;

    invoke-virtual {v2}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Reusing webview..."

    invoke-static {v2}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/c/jb;

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/gms/c/tr;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;Lcom/google/android/gms/c/jb;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/c/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/c;->a:Lcom/google/android/gms/c/jb;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/c;->i:Lcom/google/android/gms/ads/internal/d;

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/c/tt;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-object v1, v1, Lcom/google/android/gms/c/ha;->h:[Lcom/google/android/gms/c/ha;

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/c;->a(Landroid/view/View;)V

    :cond_2
    move-object v11, v0

    invoke-interface {v11}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p2

    move-object v9, p0

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/gq;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/c/kn;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/c/kt;Lcom/google/android/gms/c/kw;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/nm;Lcom/google/android/gms/c/rp;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/lx;)V

    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iget-object v0, v0, Lcom/google/android/gms/c/pg;->w:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/c/tr;->b(Ljava/lang/String;)V

    return-object v11

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->destroy()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/c;->u()V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/jf;)V
    .locals 1

    const-string v0, "setOnCustomRenderedAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->y:Lcom/google/android/gms/c/jf;

    return-void
.end method

.method protected a(Lcom/google/android/gms/c/lx;)V
    .locals 2

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/ads/internal/c$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/c$1;-><init>(Lcom/google/android/gms/ads/internal/c;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V
    .locals 10

    const/4 v5, 0x0

    iget v0, p1, Lcom/google/android/gms/c/rv$a;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/c$2;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/c/rv$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, p1, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/w;->E:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/c/ol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/c/mo;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/c/ol;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/c$3;

    invoke-direct {v1, p0, p1, v5, p2}, Lcom/google/android/gms/ads/internal/c$3;-><init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/rp;Lcom/google/android/gms/c/jb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z
    .locals 2
    .param p1    # Lcom/google/android/gms/c/rv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->a()Lcom/google/android/gms/c/sm;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/c/rv;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sm;->b(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/b;->a(Lcom/google/android/gms/c/rv;Lcom/google/android/gms/c/rv;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/w;->D:Landroid/view/View;

    new-instance v0, Lcom/google/android/gms/c/rv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->k:Lcom/google/android/gms/c/rv$a;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/c/rv;-><init>(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/me;Lcom/google/android/gms/c/mp;Ljava/lang/String;Lcom/google/android/gms/c/mh;Lcom/google/android/gms/c/jq$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/c;->b(Lcom/google/android/gms/c/rv;)V

    return-void
.end method
