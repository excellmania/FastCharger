.class public Lcom/facebook/ads/internal/h/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/j;


# instance fields
.field private final a:Lcom/facebook/ads/InterstitialAdActivity;

.field private final b:Lcom/facebook/ads/internal/h/m;

.field private final c:Lcom/facebook/ads/internal/e/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/e/c",
            "<",
            "Lcom/facebook/ads/internal/h/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/ads/internal/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/e/c",
            "<",
            "Lcom/facebook/ads/internal/h/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/ads/internal/util/o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/h/q$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/q$1;-><init>(Lcom/facebook/ads/internal/h/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/q;->c:Lcom/facebook/ads/internal/e/c;

    new-instance v0, Lcom/facebook/ads/internal/h/q$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/q$2;-><init>(Lcom/facebook/ads/internal/h/q;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/q;->d:Lcom/facebook/ads/internal/e/c;

    iput-object p1, p0, Lcom/facebook/ads/internal/h/q;->a:Lcom/facebook/ads/InterstitialAdActivity;

    new-instance v0, Lcom/facebook/ads/internal/h/m;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/h/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/m;->setIsFullScreen(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/m;->setVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->getEventBus()Lcom/facebook/ads/internal/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/q;->c:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/c;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->getEventBus()Lcom/facebook/ads/internal/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/q;->d:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/e/b;->a(Lcom/facebook/ads/internal/e/c;)Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/h/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/h/j$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/q;)Lcom/facebook/ads/internal/h/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/q;)Lcom/facebook/ads/internal/util/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->e:Lcom/facebook/ads/internal/util/o;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->d()V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    const-string v0, "autoplay"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "videoURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoMPD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoPlayReportURL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "videoTimeReportURL"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "videoSeekTime"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/internal/h/m;->setAutoplay(Z)V

    new-instance v0, Lcom/facebook/ads/internal/util/o;

    iget-object v6, p0, Lcom/facebook/ads/internal/h/q;->a:Lcom/facebook/ads/InterstitialAdActivity;

    iget-object v7, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-direct {v0, v6, v7, v4, v3}, Lcom/facebook/ads/internal/util/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/q;->e:Lcom/facebook/ads/internal/util/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/h/m;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/m;->setVideoURI(Ljava/lang/String;)V

    if-lez v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/h/m;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->e()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/h/m;->setControlsAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->e()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->f()V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q;->b:Lcom/facebook/ads/internal/h/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/m;->getCurrentPosition()I

    move-result v0

    return v0
.end method
