.class public Lcom/google/android/gms/c/lu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ls;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/tr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/ads/internal/d;)V
    .locals 10
    .param p3    # Lcom/google/android/gms/c/cm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->f()Lcom/google/android/gms/c/tt;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/c/ha;

    invoke-direct {v2}, Lcom/google/android/gms/c/ha;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    move-object v8, v7

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/c/tt;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->a()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/lu;)Lcom/google/android/gms/c/tr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/sy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->destroy()V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/gq;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/c/kn;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/c/kt;Lcom/google/android/gms/c/kw;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/nm;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/ads/internal/e;-><init>(Landroid/content/Context;Z)V

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/gq;Lcom/google/android/gms/ads/internal/overlay/j;Lcom/google/android/gms/c/kn;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/c/kt;Lcom/google/android/gms/c/kw;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/nm;Lcom/google/android/gms/c/rp;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/ls$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/lu$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/lu$6;-><init>(Lcom/google/android/gms/c/lu;Lcom/google/android/gms/c/ls$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/lu$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/c/lu$3;-><init>(Lcom/google/android/gms/c/lu;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/c/lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/c/ts;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lu$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/lu$2;-><init>(Lcom/google/android/gms/c/lu;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lu$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/lu$1;-><init>(Lcom/google/android/gms/c/lu;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/c/ly;
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/lz;-><init>(Lcom/google/android/gms/c/lx;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lu$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/lu$5;-><init>(Lcom/google/android/gms/c/lu;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/c/ts;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lu;->a:Lcom/google/android/gms/c/tr;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/c/tr;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/lu$4;-><init>(Lcom/google/android/gms/c/lu;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/lu;->a(Ljava/lang/Runnable;)V

    return-void
.end method
