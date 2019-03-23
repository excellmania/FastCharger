.class public Lcom/facebook/ads/internal/h/g;
.super Lcom/facebook/ads/internal/h/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/h/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/h/b;->destroy()V

    return-void
.end method
