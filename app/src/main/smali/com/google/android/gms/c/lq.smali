.class public Lcom/google/android/gms/c/lq;
.super Lcom/google/android/gms/c/hn$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/c/lk;

.field private c:Lcom/google/android/gms/ads/internal/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/c/lm;

.field private e:Lcom/google/android/gms/c/ob;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/lk;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/google/android/gms/c/lk;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/c/lq;-><init>(Ljava/lang/String;Lcom/google/android/gms/c/lk;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/c/lk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/hn$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/lq;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/c/lq;->b:Lcom/google/android/gms/c/lk;

    new-instance v0, Lcom/google/android/gms/c/lm;

    invoke-direct {v0}, Lcom/google/android/gms/c/lm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/c/ln;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/c/ln;->a(Lcom/google/android/gms/c/lk;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->e:Lcom/google/android/gms/c/ob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->e:Lcom/google/android/gms/c/ob;

    iget-object v2, p0, Lcom/google/android/gms/c/lq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/ob;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static b(Lcom/google/android/gms/c/gv;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/c/ln;->a(Lcom/google/android/gms/c/gv;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "gw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Lcom/google/android/gms/c/gv;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/c/ln;->a(Lcom/google/android/gms/c/gv;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public F()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->F()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->G()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before showInterstitial()."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/lq;->b:Lcom/google/android/gms/c/lk;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lk;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/lq;->b()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/c/ha;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/ha;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/hi;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->e:Lcom/google/android/gms/c/hi;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/hj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->a:Lcom/google/android/gms/c/hj;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/hp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->b:Lcom/google/android/gms/c/hp;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/hr;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/hr;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/ii;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/c/jf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->d:Lcom/google/android/gms/c/jf;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/nw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->c:Lcom/google/android/gms/c/nw;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/ob;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/lq;->e:Lcom/google/android/gms/c/ob;

    iput-object p2, p0, Lcom/google/android/gms/c/lq;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/c/lq;->b()V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/qt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iput-object p1, v0, Lcom/google/android/gms/c/lm;->f:Lcom/google/android/gms/c/qt;

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/gv;)Z
    .locals 3

    sget-object v0, Lcom/google/android/gms/c/is;->aI:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/c/gv;->a(Lcom/google/android/gms/c/gv;)V

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/c/lq;->b(Lcom/google/android/gms/c/gv;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/c/ln;->c(Lcom/google/android/gms/c/gv;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/c/gv;->j:Lcom/google/android/gms/c/ie;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/gv;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->t()Lcom/google/android/gms/c/ln;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/c/lq;->c(Lcom/google/android/gms/c/gv;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/c/ln;->b(Lcom/google/android/gms/c/gv;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/c/lq;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/c/ln;->a(Lcom/google/android/gms/c/gv;Ljava/lang/String;)Lcom/google/android/gms/c/lp$a;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lcom/google/android/gms/c/lp$a;->e:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/c/lp$a;->a()V

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/c/lp$a;->a:Lcom/google/android/gms/ads/internal/l;

    iput-object v1, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    iget-object v1, v0, Lcom/google/android/gms/c/lp$a;->c:Lcom/google/android/gms/c/ll;

    iget-object v2, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/ll;->a(Lcom/google/android/gms/c/lm;)V

    iget-object v1, p0, Lcom/google/android/gms/c/lq;->d:Lcom/google/android/gms/c/lm;

    iget-object v2, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/lm;->a(Lcom/google/android/gms/ads/internal/l;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/lq;->b()V

    iget-boolean v0, v0, Lcom/google/android/gms/c/lp$a;->f:Z

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/c/lq;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/l;->a(Lcom/google/android/gms/c/gv;)Z

    move-result v0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->i()V

    :cond_0
    return-void
.end method

.method public j()Lcom/google/android/gms/a/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->j()Lcom/google/android/gms/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/google/android/gms/c/ha;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->k()Lcom/google/android/gms/c/ha;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->m()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Interstitial ad must be loaded before pingManualTrackingUrl()."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->n()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->o()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->p()V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lq;->c:Lcom/google/android/gms/ads/internal/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/l;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/google/android/gms/c/hu;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getVideoController not implemented for interstitials"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
