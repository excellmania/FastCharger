.class public Lhizli/batarya/sarjetme/app/BatteryDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field a:Lcom/google/android/gms/ads/g;

.field b:Landroid/widget/ListView;

.field c:Lhizli/batarya/sarjetme/app/a;

.field d:Landroid/support/v7/widget/Toolbar;

.field e:[Ljava/lang/String;

.field f:[Ljava/lang/String;

.field g:[Ljava/lang/Integer;

.field public h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Derece"

    aput-object v1, v0, v2

    const-string v1, "Volt"

    aput-object v1, v0, v3

    const-string v1, "Seviye"

    aput-object v1, v0, v4

    const-string v1, "Teknoloji"

    aput-object v1, v0, v5

    const-string v1, "Sa\u011fl\u0131k"

    aput-object v1, v0, v6

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->e:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f02007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f02008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f02006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f020079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->g:[Ljava/lang/Integer;

    new-instance v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;

    invoke-direct {v0, p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;-><init>(Lhizli/batarya/sarjetme/app/BatteryDetailActivity;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->setContentView(I)V

    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->d:Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "Pil bilgisi"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->h:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->a:Lcom/google/android/gms/ads/g;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->a:Lcom/google/android/gms/ads/g;

    const-string v1, "ca-app-pub-3014314167355758/6458894823"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Ljava/lang/String;)V

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->a:Lcom/google/android/gms/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/ads/c;)V

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
    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
