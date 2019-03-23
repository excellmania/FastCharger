.class public Lcom/google/android/gms/c/ol;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/ol$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;)Lcom/google/android/gms/c/sl;
    .locals 7
    .param p5    # Lcom/google/android/gms/c/tr;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p3, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v1, Lcom/google/android/gms/c/pj;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/op;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/c/op;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/c/tr;)V

    :goto_0
    const-string v2, "AdRenderer: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/c/sl;->e()Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-boolean v0, v1, Lcom/google/android/gms/c/pj;->t:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/r;

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, v1, Lcom/google/android/gms/c/pj;->t:Z

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/ads/internal/r;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/c/oq;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/ads/internal/r;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/c/oq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/r;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/c/on;

    invoke-direct {v0, p3, p7}, Lcom/google/android/gms/c/on;-><init>(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/ol$a;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/c/is;->X:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v1, Lcom/google/android/gms/c/pj;->p:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/gms/c/oj;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/c/oj;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/google/android/gms/c/is;->aq:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/k;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/android/gms/common/util/k;->i()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p5, :cond_5

    invoke-interface {p5}, Lcom/google/android/gms/c/tr;->k()Lcom/google/android/gms/c/ha;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/c/ha;->e:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/c/oo;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/c/oo;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/c/om;

    invoke-direct {v0, p1, p3, p5, p7}, Lcom/google/android/gms/c/om;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/qp;)Lcom/google/android/gms/c/sl;
    .locals 4

    new-instance v1, Lcom/google/android/gms/c/rg;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/c/rg;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/qp;)V

    const-string v2, "AdRenderer: "

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/android/gms/c/sl;->e()Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
