.class public Lcom/facebook/ads/internal/adapters/t;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/ads/internal/h/c/c/f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/h/c/c/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/facebook/ads/internal/h/c/c/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/t;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "videoInterstitialDismissed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "videoSeekTime"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/facebook/ads/internal/h/c/c/f;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/h/c/c/f;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/t;->b:Lcom/facebook/ads/internal/h/c/c/f;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/c/c/f;->e()V

    return-void
.end method
