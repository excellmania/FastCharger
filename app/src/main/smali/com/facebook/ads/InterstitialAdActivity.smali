.class public Lcom/facebook/ads/InterstitialAdActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/InterstitialAdActivity$Type;
    }
.end annotation


# static fields
.field public static final AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final PREDEFINED_ORIENTATION_KEY:Ljava/lang/String; = "predefinedOrientationKey"

.field public static final SKIP_DELAY_SECONDS_KEY:Ljava/lang/String; = "skipAfterSeconds"

.field public static final VIDEO_MPD:Ljava/lang/String; = "videoMPD"

.field public static final VIDEO_PLAY_REPORT_MS:Ljava/lang/String; = "videoPlayReportMS"

.field public static final VIDEO_PLAY_REPORT_URL:Ljava/lang/String; = "videoPlayReportURL"

.field public static final VIDEO_SEEK_TIME:Ljava/lang/String; = "videoSeekTime"

.field public static final VIDEO_TIME_REPORT_URL:Ljava/lang/String; = "videoTimeReportURL"

.field public static final VIDEO_URL:Ljava/lang/String; = "videoURL"

.field public static final VIEW_TYPE:Ljava/lang/String; = "viewType"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/facebook/ads/internal/g;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/InterstitialAdActivity$Type;

.field private f:J

.field private g:J

.field private h:I

.field private i:Lcom/facebook/ads/internal/h/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    const-string v0, "predefinedOrientationKey"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:Ljava/lang/String;

    const-string v0, "viewType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    :goto_0
    return-void

    :cond_0
    const-string v0, "predefinedOrientationKey"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:Ljava/lang/String;

    const-string v0, "viewType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    const-string v0, "skipAfterSeconds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "videoSeekTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v1, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    if-ne v0, v1, :cond_0

    const-string v1, "videoInterstitialDismissed"

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    check-cast v0, Lcom/facebook/ads/internal/h/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/q;->d()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/j;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const-string v0, "com.facebook.ads.interstitial.dismissed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:J

    iget-wide v4, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:J

    iput-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:J

    iget-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:J

    iget v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "useNativeCloseButton"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/g;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    const v2, 0x186a2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g;->setId(I)V

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$1;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v2, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/h/q;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$2;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/h/q;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/q;->a(Landroid/view/View;)V

    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/internal/h/j;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v0, "com.facebook.ads.interstitial.displayed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:J

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v2, Lcom/facebook/ads/InterstitialAdActivity$Type;->DISPLAY:Lcom/facebook/ads/InterstitialAdActivity$Type;

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/facebook/ads/internal/h/i;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$3;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/h/i;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V

    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v2, Lcom/facebook/ads/InterstitialAdActivity$Type;->BROWSER:Lcom/facebook/ads/InterstitialAdActivity$Type;

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/facebook/ads/internal/h/f;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$4;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/h/f;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V

    iput-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const-string v1, "Unable to infer viewType from intent or savedInstanceState"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    const-string v0, "com.facebook.ads.interstitial.error"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->finish()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 6

    iget-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:J

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/j;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:J

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/j;->b()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/h/j;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/j;->a(Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "predefinedOrientationKey"

    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "adInterstitialUniqueId"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "viewType"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
