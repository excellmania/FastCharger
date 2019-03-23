.class public Lcom/google/android/gms/c/hx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/c/hh;

.field private final b:Lcom/google/android/gms/c/mn;

.field private final c:Lcom/google/android/gms/c/gz;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcom/google/android/gms/ads/h;

.field private f:Lcom/google/android/gms/c/gq;

.field private g:Lcom/google/android/gms/ads/a;

.field private h:[Lcom/google/android/gms/ads/d;

.field private i:Lcom/google/android/gms/ads/a/a;

.field private j:Lcom/google/android/gms/ads/f;

.field private k:Lcom/google/android/gms/c/hn;

.field private l:Lcom/google/android/gms/ads/purchase/b;

.field private m:Lcom/google/android/gms/ads/a/c;

.field private n:Lcom/google/android/gms/ads/purchase/d;

.field private o:Lcom/google/android/gms/ads/i;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/view/ViewGroup;

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/c/gz;->a()Lcom/google/android/gms/c/gz;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/hx;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/c/gz;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/c/gz;->a()Lcom/google/android/gms/c/gz;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/hx;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/c/gz;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/c/gz;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/c/hx;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/c/gz;Lcom/google/android/gms/c/hn;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/c/gz;Lcom/google/android/gms/c/hn;I)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/mn;

    invoke-direct {v0}, Lcom/google/android/gms/c/mn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->b:Lcom/google/android/gms/c/mn;

    new-instance v0, Lcom/google/android/gms/ads/h;

    invoke-direct {v0}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->e:Lcom/google/android/gms/ads/h;

    new-instance v0, Lcom/google/android/gms/c/hx$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/hx$1;-><init>(Lcom/google/android/gms/c/hx;)V

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->a:Lcom/google/android/gms/c/hh;

    iput-object p1, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/c/hx;->c:Lcom/google/android/gms/c/gz;

    iput-object p5, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/c/hx;->s:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/c/hd;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/c/hd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/c/hd;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/c/hd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    aget-object v2, v2, v3

    iget v3, p0, Lcom/google/android/gms/c/hx;->s:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/c/hx;->a(Landroid/content/Context;Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/c/ha;

    move-result-object v1

    const-string v2, "Ads by Google"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/c/sy;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/c/ha;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/c/ha;

    sget-object v4, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/c/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/c/sy;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/c/ha;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/c/hx;)Lcom/google/android/gms/ads/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->e:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/c/ha;
    .locals 2

    new-instance v0, Lcom/google/android/gms/c/ha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/c/hx;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ha;->a(Z)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/c/ha;
    .locals 2

    new-instance v0, Lcom/google/android/gms/c/ha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/ha;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/c/hx;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ha;->a(Z)V

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->j()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/a/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/c/hx;->i:Lcom/google/android/gms/ads/a/a;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/c/hc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/hc;-><init>(Lcom/google/android/gms/ads/a/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/c/hx;->m:Lcom/google/android/gms/ads/a/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/c/jg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/jg;-><init>(Lcom/google/android/gms/ads/a/c;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/jf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/c/hx;->g:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->a:Lcom/google/android/gms/c/hh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/hh;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/f;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/c/hx;->j:Lcom/google/android/gms/ads/f;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->j:Lcom/google/android/gms/ads/f;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hr;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->j:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/c/hg;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/purchase/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->n:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/c/hx;->l:Lcom/google/android/gms/ads/purchase/b;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/c/oc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/oc;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/nw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/c/gq;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/c/hx;->f:Lcom/google/android/gms/c/gq;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/c/gr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/c/gr;-><init>(Lcom/google/android/gms/c/gq;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/c/hw;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/c/hx;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->c:Lcom/google/android/gms/c/gz;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/c/gz;->a(Landroid/content/Context;Lcom/google/android/gms/c/hw;)Lcom/google/android/gms/c/gv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/gv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->b:Lcom/google/android/gms/c/mn;

    invoke-virtual {p1}, Lcom/google/android/gms/c/hw;->j()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/mn;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/c/hx;->t:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-boolean v1, p0, Lcom/google/android/gms/c/hx;->t:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/hx;->b([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/ha;)Z
    .locals 2

    const-string v0, "search_v2"

    iget-object v1, p1, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->g:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public varargs b([Lcom/google/android/gms/ads/d;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    iget v3, p0, Lcom/google/android/gms/c/hx;->s:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/c/hx;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/c/ha;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/ha;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Lcom/google/android/gms/ads/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->k()Lcom/google/android/gms/c/ha;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ha;->b()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->i:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method public g()Lcom/google/android/gms/ads/purchase/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->l:Lcom/google/android/gms/ads/purchase/b;

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->m:Lcom/google/android/gms/ads/a/c;

    return-object v0
.end method

.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v0}, Lcom/google/android/gms/c/hn;->F()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/google/android/gms/c/hu;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    invoke-interface {v1}, Lcom/google/android/gms/c/hn;->r()Lcom/google/android/gms/c/hu;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method m()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/c/hx;->n()Lcom/google/android/gms/c/hn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/gs;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->a:Lcom/google/android/gms/c/hh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/gs;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hj;)V

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->f:Lcom/google/android/gms/c/gq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/gr;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->f:Lcom/google/android/gms/c/gq;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/gr;-><init>(Lcom/google/android/gms/c/gq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hi;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->i:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/hc;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->i:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/hc;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hp;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->l:Lcom/google/android/gms/ads/purchase/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/oc;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->l:Lcom/google/android/gms/ads/purchase/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/oc;-><init>(Lcom/google/android/gms/ads/purchase/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/nw;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->n:Lcom/google/android/gms/ads/purchase/d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/og;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->n:Lcom/google/android/gms/ads/purchase/d;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/og;-><init>(Lcom/google/android/gms/ads/purchase/d;)V

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/ob;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->m:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/jg;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->m:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/jg;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/jf;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->j:Lcom/google/android/gms/ads/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->j:Lcom/google/android/gms/ads/f;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/c/hg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/hr;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->o:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    new-instance v1, Lcom/google/android/gms/c/ii;

    iget-object v2, p0, Lcom/google/android/gms/c/hx;->o:Lcom/google/android/gms/ads/i;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/ii;-><init>(Lcom/google/android/gms/ads/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Lcom/google/android/gms/c/ii;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/c/hx;->k:Lcom/google/android/gms/c/hn;

    iget-boolean v1, p0, Lcom/google/android/gms/c/hx;->t:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/hn;->a(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/c/hx;->o()V

    return-void
.end method

.method protected n()Lcom/google/android/gms/c/hn;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/c/hx;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/hx;->h:[Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/c/hx;->s:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/hx;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/c/ha;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/c/hx;->a(Lcom/google/android/gms/c/ha;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/c/hf;->b()Lcom/google/android/gms/c/he;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/c/he;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;)Lcom/google/android/gms/c/hn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/c/hf;->b()Lcom/google/android/gms/c/he;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/hx;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/c/hx;->b:Lcom/google/android/gms/c/mn;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/gms/c/he;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/mo;)Lcom/google/android/gms/c/hn;

    move-result-object v0

    goto :goto_0
.end method
