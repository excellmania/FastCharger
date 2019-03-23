.class public Lhizli/batarya/sarjetme/app/AboutActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/facebook/ads/NativeAdsManager$Listener;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Landroid/support/v7/widget/CardView;

.field c:Landroid/support/v7/widget/CardView;

.field d:Landroid/support/v7/widget/CardView;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Lcom/facebook/ads/NativeAdsManager;

.field h:Lcom/facebook/ads/NativeAdScrollView;

.field i:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lhizli/batarya/sarjetme/app/AboutActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string p0, ""

    array-length v6, v5

    move v4, v2

    move v1, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-char v0, v5, v4

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "5x H\u0131zl\u0131 \u015earj Etme Hakk\u0131nda"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private c()V
    .locals 4

    const v3, 0x7f0d0017

    const/4 v2, 0x0

    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->b:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->c:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->e:Landroid/widget/Button;

    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->d:Landroid/support/v7/widget/CardView;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->b:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->d:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->c:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->b:Landroid/support/v7/widget/CardView;

    new-instance v1, Lhizli/batarya/sarjetme/app/AboutActivity$1;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/AboutActivity$1;-><init>(Lhizli/batarya/sarjetme/app/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->f:Landroid/widget/Button;

    new-instance v1, Lhizli/batarya/sarjetme/app/AboutActivity$2;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/AboutActivity$2;-><init>(Lhizli/batarya/sarjetme/app/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->e:Landroid/widget/Button;

    new-instance v1, Lhizli/batarya/sarjetme/app/AboutActivity$3;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/AboutActivity$3;-><init>(Lhizli/batarya/sarjetme/app/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->c:Landroid/support/v7/widget/CardView;

    new-instance v1, Lhizli/batarya/sarjetme/app/AboutActivity$4;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/AboutActivity$4;-><init>(Lhizli/batarya/sarjetme/app/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/facebook/ads/AdError;)V
    .locals 0

    return-void
.end method

.method public onAdsLoaded()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0e0090

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->h:Lcom/facebook/ads/NativeAdScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->h:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdScrollView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->g:Lcom/facebook/ads/NativeAdsManager;

    sget-object v2, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->h:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->h:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lhizli/batarya/sarjetme/app/AboutActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->setContentView(I)V

    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->b()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->c()V

    return-void
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
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/AboutActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
