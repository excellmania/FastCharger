.class public final Lcom/google/android/gms/ads/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/w$a;
    }
.end annotation


# instance fields
.field A:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/google/android/gms/ads/internal/purchase/k;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public C:Lcom/google/android/gms/c/sc;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field D:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public E:I

.field F:Z

.field G:Z

.field private H:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/c/rw;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:I

.field private K:Lcom/google/android/gms/c/su;

.field private L:Z

.field private M:Z

.field private N:Z

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/c/cm;

.field public final e:Lcom/google/android/gms/c/tc;

.field f:Lcom/google/android/gms/ads/internal/w$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Lcom/google/android/gms/c/se;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/google/android/gms/c/sl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/google/android/gms/c/ha;

.field public j:Lcom/google/android/gms/c/rv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public k:Lcom/google/android/gms/c/rv$a;

.field public l:Lcom/google/android/gms/c/rw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field m:Lcom/google/android/gms/c/hi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field n:Lcom/google/android/gms/c/hj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field o:Lcom/google/android/gms/c/hp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field p:Lcom/google/android/gms/c/hr;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field q:Lcom/google/android/gms/c/nw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field r:Lcom/google/android/gms/c/ob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field s:Lcom/google/android/gms/c/kf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field t:Lcom/google/android/gms/c/kg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field u:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/kh;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/ki;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/c/js;

.field x:Lcom/google/android/gms/c/ii;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field y:Lcom/google/android/gms/c/jf;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field z:Lcom/google/android/gms/c/qt;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/tc;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/w;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/cm;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/ha;Ljava/lang/String;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/cm;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/w;->C:Lcom/google/android/gms/c/sc;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/w;->D:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/w;->E:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->F:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->G:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/w;->H:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/w;->I:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/w;->J:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/w;->M:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->N:Z

    invoke-static {p1}, Lcom/google/android/gms/c/is;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/ry;->f()Lcom/google/android/gms/c/iu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/c/is;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/c/tc;->c:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/c/tc;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/c/ry;->f()Lcom/google/android/gms/c/iu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/iu;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/c/ha;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/c/ha;->i:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/w;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/w;->e:Lcom/google/android/gms/c/tc;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    new-instance v0, Lcom/google/android/gms/c/su;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/c/su;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->K:Lcom/google/android/gms/c/su;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->v:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/w$a;

    invoke-direct {v0, p1, p3, p0, p0}, Lcom/google/android/gms/ads/internal/w$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget v1, p2, Lcom/google/android/gms/c/ha;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    iget v1, p2, Lcom/google/android/gms/c/ha;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/w$a;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/c/cm;

    new-instance v0, Lcom/google/android/gms/ads/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/i;-><init>(Lcom/google/android/gms/ads/internal/w;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/c/cm;-><init>(Lcom/google/android/gms/c/bm;)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v2, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v2, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v2}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->K:Lcom/google/android/gms/c/su;

    invoke-virtual {v2}, Lcom/google/android/gms/c/su;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v2, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v2}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/c/ts;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/w$a;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/c/sy;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/c/sy;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->I:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->J:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/w;->I:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/w;->J:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v2, v2, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v2}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/w;->I:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/w;->J:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/c/ts;->a(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/w;->k()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/w$a;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/w;->M:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/c/rw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->H:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/c/rw;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/w;->H:Ljava/util/HashSet;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/w;->E:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/w;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/c/se;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->g:Lcom/google/android/gms/c/se;

    invoke-virtual {v0}, Lcom/google/android/gms/c/se;->d()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    invoke-interface {v0}, Lcom/google/android/gms/c/sl;->d()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->destroy()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->b:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->stopLoading()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-object v0, v0, Lcom/google/android/gms/c/rv;->p:Lcom/google/android/gms/c/mp;

    invoke-interface {v0}, Lcom/google/android/gms/c/mp;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/w;->E:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/w;->E:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->b()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->M:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->L:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->N:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->M:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->N:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/c/rw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/c/rw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-wide v2, v1, Lcom/google/android/gms/c/rv;->A:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/c/rw;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/c/rw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-wide v2, v1, Lcom/google/android/gms/c/rv;->B:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/c/rw;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/c/rw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    iget-boolean v1, v1, Lcom/google/android/gms/c/rv;->n:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/rw;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->l:Lcom/google/android/gms/c/rw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/w;->i:Lcom/google/android/gms/c/ha;

    iget-boolean v1, v1, Lcom/google/android/gms/c/ha;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/rw;->a(Z)V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/w;->g()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->n:Lcom/google/android/gms/c/hj;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->o:Lcom/google/android/gms/c/hp;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->r:Lcom/google/android/gms/c/ob;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->q:Lcom/google/android/gms/c/nw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->y:Lcom/google/android/gms/c/jf;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->p:Lcom/google/android/gms/c/hr;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/w;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/w;->f:Lcom/google/android/gms/ads/internal/w$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/w$a;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/w;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/w;->d()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/w;->j:Lcom/google/android/gms/c/rv;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/w;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/w;->b(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/w;->N:Z

    return-void
.end method
