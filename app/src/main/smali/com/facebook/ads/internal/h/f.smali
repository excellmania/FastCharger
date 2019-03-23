.class public Lcom/facebook/ads/internal/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/j;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/h/g;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/h/g;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/h/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/h/j$a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/g;->onPause()V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/h/f;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/h/g;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "about:blank"

    goto :goto_1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "url"

    iget-object v1, p0, Lcom/facebook/ads/internal/h/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/g;->onResume()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/f;->b:Lcom/facebook/ads/internal/h/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/g;->destroy()V

    return-void
.end method
