.class Lcom/facebook/ads/NativeAd$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAd;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:J


# direct methods
.method private constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd$a;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/NativeAd$a;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/NativeAd$a;-><init>(Lcom/facebook/ads/NativeAd;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd$a;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/NativeAd$a;->l:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd$a;->k:Z

    :cond_0
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "clickX"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clickY"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "width"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adPositionX"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->f:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "adPositionY"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->g:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "visibleWidth"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "visibleHeight"

    iget v2, p0, Lcom/facebook/ads/NativeAd$a;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/NativeAd$a;->l:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->s(Lcom/facebook/ads/NativeAd;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/facebook/ads/NativeAd;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature click event (threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->s(Lcom/facebook/ads/NativeAd;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd$a;->j:Z

    if-nez v0, :cond_1

    const-string v0, "FBAudienceNetworkLog"

    const-string v1, "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$a;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->l(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "nti"

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->l(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdView$Type;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->m(Lcom/facebook/ads/NativeAd;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "nhs"

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->m(Lcom/facebook/ads/NativeAd;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->j(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/a;->c()Lcom/facebook/ads/internal/i/b;

    move-result-object v1

    const-string v2, "vrc"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/b;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vp"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/b;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vh"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v3}, Lcom/facebook/ads/NativeAd;->j(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/a;->d()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v1}, Lcom/facebook/ads/NativeAd;->h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/r;->b(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/facebook/ads/NativeAd$a;->d:I

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/facebook/ads/NativeAd$a;->e:I

    new-array v2, v5, [I

    iget-object v3, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v3}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v2, v1

    int-to-float v3, v3

    iput v3, p0, Lcom/facebook/ads/NativeAd$a;->f:F

    aget v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Lcom/facebook/ads/NativeAd$a;->g:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v4}, Lcom/facebook/ads/NativeAd;->k(Lcom/facebook/ads/NativeAd;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/facebook/ads/NativeAd$a;->i:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/facebook/ads/NativeAd$a;->h:I

    new-array v3, v5, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v3, v1

    add-int/2addr v4, v5

    aget v5, v2, v1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/facebook/ads/NativeAd$a;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v3, v3, v0

    add-int/2addr v3, v4

    aget v2, v2, v0

    sub-int v2, v3, v2

    iput v2, p0, Lcom/facebook/ads/NativeAd$a;->c:I

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd$a;->j:Z

    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->t(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/NativeAd$a;->a:Lcom/facebook/ads/NativeAd;

    invoke-static {v2}, Lcom/facebook/ads/NativeAd;->t(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
