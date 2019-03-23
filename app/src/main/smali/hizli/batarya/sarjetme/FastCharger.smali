.class public Lhizli/batarya/sarjetme/app/FastCharger;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/facebook/ads/NativeAdsManager$Listener;


# instance fields
.field A:Landroid/support/v7/widget/CardView;

.field B:Landroid/support/v7/widget/CardView;

.field C:Landroid/support/v7/widget/CardView;

.field D:Landroid/support/v7/widget/CardView;

.field E:Landroid/widget/RelativeLayout;

.field F:Landroid/widget/RelativeLayout;

.field G:Landroid/widget/RelativeLayout;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/TextView;

.field J:Ljava/lang/Integer;

.field K:Lcom/facebook/ads/NativeAdsManager;

.field L:Lcom/facebook/ads/NativeAdScrollView;

.field M:Ljava/lang/Integer;

.field private N:I

.field private O:I

.field private P:I

.field private Q:Landroid/content/ContentResolver;

.field private R:Landroid/view/Window;

.field a:Lcom/google/android/gms/ads/g;

.field b:Landroid/support/v7/widget/Toolbar;

.field c:Lcn/fanrunqi/waveprogress/WaveProgressView;

.field d:Landroid/content/BroadcastReceiver;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/ImageView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/ImageView;

.field n:Landroid/view/animation/Animation;

.field o:Landroid/bluetooth/BluetoothAdapter;

.field p:Landroid/widget/RelativeLayout;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/widget/Button;

.field s:Landroid/media/AudioManager;

.field t:Landroid/widget/RelativeLayout;

.field u:Landroid/widget/RelativeLayout;

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/widget/Button;

.field x:Landroid/widget/Button;

.field y:Landroid/content/Intent;

.field z:Landroid/support/v7/widget/CardView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    return-void
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

.method private a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    const/16 v0, 0x2710

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x4e20

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x7530

    goto :goto_0

    :pswitch_3
    const v0, 0x9c40

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lhizli/batarya/sarjetme/app/FastCharger;)V
    .locals 0

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->i()V

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

.method public static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lhizli/batarya/sarjetme/app/FastCharger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(Ljava/lang/String;)Ljava/lang/String;

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

.method private e()V
    .locals 1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->D:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->w:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 1

    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/fanrunqi/waveprogress/WaveProgressView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->k:Landroid/widget/ImageView;

    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->r:Landroid/widget/Button;

    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00db

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->u:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->z:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->A:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->B:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->C:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e0090

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->D:Landroid/support/v7/widget/CardView;

    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e0096

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->w:Landroid/widget/Button;

    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->x:Landroid/widget/Button;

    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->G:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->H:Landroid/widget/TextView;

    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->I:Landroid/widget/TextView;

    return-void
.end method

.method private g()V
    .locals 4

    const v3, 0x7f0d0017

    const/4 v2, 0x0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->z:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->A:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->B:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->C:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->D:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->A:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->C:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->B:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->z:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->D:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Lhizli/batarya/sarjetme/app/FastCharger$1;

    invoke-direct {v0, p0}, Lhizli/batarya/sarjetme/app/FastCharger$1;-><init>(Lhizli/batarya/sarjetme/app/FastCharger;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lhizli/batarya/sarjetme/app/FastCharger;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private i()V
    .locals 4

    const v2, 0x7f050014

    const/4 v3, 0x0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->t:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger;->z:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger;->z:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lhizli/batarya/sarjetme/app/FastCharger$2;

    invoke-direct {v2, p0, v1}, Lhizli/batarya/sarjetme/app/FastCharger$2;-><init>(Lhizli/batarya/sarjetme/app/FastCharger;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private j()V
    .locals 5

    const v4, 0x7f020084

    const v3, 0x9c40

    const/4 v2, 0x1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->O:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    :goto_2
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_5
    return-void

    :cond_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->k:Landroid/widget/ImageView;

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->k:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    const/16 v1, 0x4e20

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_6
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    const/16 v1, 0x7530

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_7
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    iput v3, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->M:Ljava/lang/Integer;

    goto :goto_5

    :pswitch_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->M:Ljava/lang/Integer;

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->M:Ljava/lang/Integer;

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->J:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->G:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

.method public c()V
    .locals 9

    const/16 v8, 0x14

    const/4 v7, 0x0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    const-string v4, "pakages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    if-le v0, v8, :cond_2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v8, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    :cond_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    const v1, 0x7f020080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v7}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    const/16 v0, 0x2710

    iput v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f050011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lhizli/batarya/sarjetme/app/FastCharger$4;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/FastCharger$4;-><init>(Lhizli/batarya/sarjetme/app/FastCharger;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1
.end method

.method public onAdError(Lcom/facebook/ads/AdError;)V
    .locals 0

    return-void
.end method

.method public onAdsLoaded()V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f0e0090

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->L:Lcom/facebook/ads/NativeAdScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->L:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAdScrollView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->K:Lcom/facebook/ads/NativeAdsManager;

    sget-object v2, Lcom/facebook/ads/NativeAdView$Type;->HEIGHT_300:Lcom/facebook/ads/NativeAdView$Type;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->L:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->L:Lcom/facebook/ads/NativeAdScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const v1, 0x7f020080

    const/16 v3, 0x2710

    const/16 v2, 0x14

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger;->C:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lhizli/batarya/sarjetme/app/FastCharger$3;

    invoke-direct {v2, p0, v1}, Lhizli/batarya/sarjetme/app/FastCharger$3;-><init>(Lhizli/batarya/sarjetme/app/FastCharger;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->h:Landroid/widget/ImageView;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->O:I

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->m:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v6, p0, Lhizli/batarya/sarjetme/app/FastCharger;->O:I

    goto :goto_0

    :sswitch_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->k:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->o:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_0

    :sswitch_5
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->j:Landroid/widget/ImageView;

    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v2, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    goto/16 :goto_0

    :sswitch_6
    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v7}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    iput v3, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->i:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v7}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    iput v3, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buraya bak\u0131n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Bu programla bataryam\u0131 5x daha h\u0131zl\u0131 \u015farj edebiliyorum! https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payla\u015f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v4, "message/rfc822"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v4, "android.intent.extra.EMAIL"

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "un4saken@hotmail.co.uk"

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n Device :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lhizli/batarya/sarjetme/app/FastCharger;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Versiyon:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Ekran Y\u00fcksekli\u011fi  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "px"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Ekran Geni\u015fli\u011fi  :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " l\u00fctfen sorununuzu yaz\u0131n .."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v1, "G\u00f6nder"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :sswitch_9
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lhizli/batarya/sarjetme/app/CloseAllTools;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    const-string v1, "SetValue"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->y:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0096 -> :sswitch_8
        0x7f0e0097 -> :sswitch_9
        0x7f0e0098 -> :sswitch_7
        0x7f0e00b2 -> :sswitch_a
        0x7f0e00b9 -> :sswitch_1
        0x7f0e00ba -> :sswitch_4
        0x7f0e00bb -> :sswitch_5
        0x7f0e00bc -> :sswitch_2
        0x7f0e00bd -> :sswitch_3
        0x7f0e00be -> :sswitch_6
        0x7f0e00da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x9c40

    const/16 v1, 0x400

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->setContentView(I)V

    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->b:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->b:Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->b:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->f()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->h()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->j()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->e()V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->a()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->g()V

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->a:Lcom/google/android/gms/ads/g;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->a:Lcom/google/android/gms/ads/g;

    const-string v1, "ca-app-pub-3014314167355758/6458894823"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Ljava/lang/String;)V

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->a:Lcom/google/android/gms/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/ads/c;)V

    const v0, 0x7f050012

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->n:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->R:Landroid/view/Window;

    :try_start_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->N:I

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->O:I

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->Q:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    iget v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    const v0, 0x9c40

    iput v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->P:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Hata"

    const-string v2, "Ekran parlakl\u0131\u011f\u0131 ayar\u0131 yap\u0131lam\u0131yor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger;->s:Landroid/media/AudioManager;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger;->M:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(I)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->j()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->j()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-direct {p0}, Lhizli/batarya/sarjetme/app/FastCharger;->j()V

    return-void
.end method
