.class public Lcom/facebook/ads/NativeAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$b;,
        Lcom/facebook/ads/NativeAd$a;,
        Lcom/facebook/ads/NativeAd$c;,
        Lcom/facebook/ads/NativeAd$MediaCacheFlag;,
        Lcom/facebook/ads/NativeAd$Rating;,
        Lcom/facebook/ads/NativeAd$Image;
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/ads/internal/c;

.field private static final c:Ljava/lang/String;

.field private static d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Z

.field private final b:J

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/ads/internal/c/b;

.field private i:Lcom/facebook/ads/AdListener;

.field private j:Lcom/facebook/ads/ImpressionListener;

.field private k:Lcom/facebook/ads/internal/DisplayAdController;

.field private volatile l:Z

.field private m:Lcom/facebook/ads/internal/adapters/r;

.field private n:Lcom/facebook/ads/internal/d/e;

.field private o:Landroid/view/View;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/view/View$OnTouchListener;

.field private r:Lcom/facebook/ads/internal/i/a;

.field private s:Lcom/facebook/ads/internal/adapters/q;

.field private t:Lcom/facebook/ads/NativeAd$a;

.field private u:Lcom/facebook/ads/NativeAd$b;

.field private v:Lcom/facebook/ads/internal/h/s;

.field private w:Lcom/facebook/ads/NativeAdView$Type;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/c;->a:Lcom/facebook/ads/internal/c;

    sput-object v0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/c;

    const-class v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/internal/d/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->l:Z

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->p:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->C:Z

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/internal/h;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/NativeAd;->b:J

    new-instance v0, Lcom/facebook/ads/internal/c/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 2

    iget-object v0, p1, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->l:Z

    iget-object v0, p1, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->i:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/adapters/r;)Lcom/facebook/ads/internal/adapters/r;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/i/a;)Lcom/facebook/ads/internal/i/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lcom/facebook/ads/internal/h/c;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/facebook/ads/AdChoicesView;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/facebook/ads/internal/h/b/c;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/DisplayAdController;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAd;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/NativeAd;->A:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/c/b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    return-object v0
.end method

.method public static downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/l;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/util/l;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/l;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->m()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->n()V

    return-void
.end method

.method static synthetic h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/r;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method private i()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->e()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->e()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/q;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    return-object v0
.end method

.method private j()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->i()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->f()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/i/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    return-object v0
.end method

.method private k()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Lcom/facebook/ads/internal/d/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->j()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/e;->g()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method static synthetic k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->w:Lcom/facebook/ads/NativeAdView$Type;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeAd$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAd$b;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/NativeAd$b;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/NativeAd$b;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$b;->a()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/q;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/NativeAd$4;

    invoke-direct {v2, p0}, Lcom/facebook/ads/NativeAd$4;-><init>(Lcom/facebook/ads/NativeAd;)V

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/q;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/adapters/r;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->x:Z

    return v0
.end method

.method private n()V
    .locals 4

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->C:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/adapters/q;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/NativeAd$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/NativeAd$5;-><init>(Lcom/facebook/ads/NativeAd;)V

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/q;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/adapters/r;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->y:Z

    return v0
.end method

.method static synthetic o(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->z:Z

    return v0
.end method

.method static synthetic p(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAd$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$a;

    return-object v0
.end method

.method static synthetic q(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/ImpressionListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/ImpressionListener;

    return-object v0
.end method

.method static synthetic r(Lcom/facebook/ads/NativeAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/facebook/ads/NativeAd;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/NativeAd;->b:J

    return-wide v0
.end method

.method static synthetic t(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->q:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic u(Lcom/facebook/ads/NativeAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/adapters/r;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    return-object v0
.end method

.method a(Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->w:Lcom/facebook/ads/NativeAdView$Type;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->x:Z

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->y:Z

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/r;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/NativeAd$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/NativeAd$b;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$b;->b()V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/NativeAd$b;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d()V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_1
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->A()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdChoicesIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->t()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdChoicesLinkUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->l()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->k()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdNetwork()Lcom/facebook/ads/AdNetwork;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->B()Lcom/facebook/ads/AdNetwork;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->s()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdSubtitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->m()Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNativeConfigEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAd(Ljava/util/EnumSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "loadAd cannot be called more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/NativeAd;->A:J

    iput-boolean v7, p0, Lcom/facebook/ads/NativeAd;->l:Z

    sget-object v3, Lcom/facebook/ads/internal/e;->j:Lcom/facebook/ads/internal/e;

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    const/4 v5, 0x0

    sget-object v6, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/c;

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/e;Lcom/facebook/ads/internal/server/AdPlacementType;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/c;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/NativeAd$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAd$1;-><init>(Lcom/facebook/ads/NativeAd;Ljava/util/EnumSet;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/a;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->k:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid set of clickable views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string v1, "Ad not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_4
    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_5
    new-instance v0, Lcom/facebook/ads/NativeAd$a;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/NativeAd$a;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$a;

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/facebook/ads/internal/h/s;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/NativeAd$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/NativeAd$2;-><init>(Lcom/facebook/ads/NativeAd;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/h/s;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/r;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/internal/h/s;

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/ads/NativeAd;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/internal/adapters/r;->a(Landroid/view/View;Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/q;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/NativeAd$c;

    invoke-direct {v2, p0, v3}, Lcom/facebook/ads/NativeAd$c;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/q;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/adapters/r;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/adapters/q;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->i()I

    move-result v0

    new-instance v1, Lcom/facebook/ads/internal/i/a;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    new-instance v3, Lcom/facebook/ads/NativeAd$3;

    invoke-direct {v3, p0}, Lcom/facebook/ads/NativeAd$3;-><init>(Lcom/facebook/ads/NativeAd;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/internal/i/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/i/a$a;)V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/a;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->a()V

    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->i:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public setImpressionListener(Lcom/facebook/ads/ImpressionListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/ImpressionListener;

    return-void
.end method

.method public setMediaViewAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->z:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->q:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public unregisterView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View not registered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/internal/h/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/internal/h/s;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/internal/h/s;

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->a()V

    :cond_4
    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->l()V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->b()V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/i/a;

    :cond_5
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/internal/adapters/q;

    goto :goto_0
.end method
