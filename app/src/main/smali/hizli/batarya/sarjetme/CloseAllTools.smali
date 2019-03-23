.class public Lhizli/batarya/sarjetme/app/CloseAllTools;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/ads/NativeAdsManager$Listener;


# instance fields
.field a:Lcom/google/android/gms/ads/g;

.field b:Landroid/support/v7/widget/CardView;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/support/v7/widget/CardView;

.field e:Landroid/support/v7/widget/Toolbar;

.field f:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field h:Landroid/widget/Button;

.field i:Landroid/location/LocationManager;

.field j:Ljava/lang/Boolean;

.field k:Landroid/widget/TextView;

.field l:Lcom/facebook/ads/NativeAdsManager;

.field m:Lcom/facebook/ads/NativeAdScrollView;

.field n:Ljava/lang/Integer;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b()V
    .locals 4

    const v3, 0x7f0d0017

    const/4 v2, 0x0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    return-void
.end method

.method private c()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->i:Landroid/location/LocationManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->i:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->j:Ljava/lang/Boolean;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdError(Lcom/facebook/ads/AdError;)V
    .locals 0

    return-void
.end method

.method public onAdsLoaded()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0e0090

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->m:Lcom/facebook/ads/NativeAdScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->m:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdScrollView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->l:Lcom/facebook/ads/NativeAdsManager;

    sget-object v2, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->m:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->m:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->f()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->e()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->d()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->f()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->e()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->d()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e009d -> :sswitch_0
        0x7f0e00a0 -> :sswitch_3
        0x7f0e00a1 -> :sswitch_1
        0x7f0e00a6 -> :sswitch_4
        0x7f0e00a7 -> :sswitch_2
        0x7f0e00ac -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/CloseAllTools;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SetValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->n:Ljava/lang/Integer;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->setContentView(I)V

    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->e:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->e:Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->e:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "Pil Koruyucu"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00a0

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->f:Landroid/widget/Button;

    const v0, 0x7f0e00a6

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->g:Landroid/widget/Button;

    const v0, 0x7f0e00ac

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->h:Landroid/widget/Button;

    const v0, 0x7f0e009c

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->k:Landroid/widget/TextView;

    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->o:Landroid/widget/TextView;

    const v0, 0x7f0e009f

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->p:Landroid/widget/TextView;

    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->q:Landroid/widget/TextView;

    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->r:Landroid/widget/TextView;

    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->s:Landroid/widget/TextView;

    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->t:Landroid/widget/TextView;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->b()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->c()V

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->a:Lcom/google/android/gms/ads/g;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->a:Lcom/google/android/gms/ads/g;

    const-string v1, "ca-app-pub-3014314167355758/6458894823"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Ljava/lang/String;)V

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->a:Lcom/google/android/gms/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/ads/c;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->o:Landroid/widget/TextView;

    const-string v1, "2x Pil Koruyucu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->p:Landroid/widget/TextView;

    const-string v1, "GPS\'i devre d\u0131\u015f\u0131 b\u0131rak\u0131rsan\u0131z bataryan\u0131z 2x daha \u00e7ok korunacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->q:Landroid/widget/TextView;

    const-string v1, "3x Pil Koruyucu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->r:Landroid/widget/TextView;

    const-string v1, "U\u00e7ak modunu kullan\u0131rsan\u0131z bataryan\u0131z 3x daha \u00e7ok korunacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->s:Landroid/widget/TextView;

    const-string v1, "2x Pil Koruyucu"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->t:Landroid/widget/TextView;

    const-string v1, "Veri kullan\u0131m\u0131n\u0131 devre d\u0131\u015f\u0131 b\u0131rak\u0131rsan\u0131z bataryan\u0131z 2x daha \u00e7ok korunacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "Pil \u015earj Etme"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->o:Landroid/widget/TextView;

    const-string v1, "2x H\u0131zl\u0131 \u015earj"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->p:Landroid/widget/TextView;

    const-string v1, "GPS\'i devre d\u0131\u015f\u0131 b\u0131rak\u0131rsan\u0131z bataryan\u0131z 2x daha h\u0131zl\u0131 \u015farj olacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->q:Landroid/widget/TextView;

    const-string v1, "3x H\u0131zl\u0131 \u015earj"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->r:Landroid/widget/TextView;

    const-string v1, "U\u00e7ak modunu kullan\u0131rsan\u0131z bataryan\u0131z 3x daha h\u0131zl\u0131 \u015farj olacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->s:Landroid/widget/TextView;

    const-string v1, "2x H\u0131zl\u0131 \u015earj"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/CloseAllTools;->t:Landroid/widget/TextView;

    const-string v1, "Veri kullan\u0131m\u0131n\u0131 devre d\u0131\u015f\u0131 b\u0131rak\u0131rsan\u0131z bataryan\u0131z 2x daha h\u0131zl\u0131 \u015farj olacak"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->finish()V

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->c()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/CloseAllTools;->c()V

    return-void
.end method
