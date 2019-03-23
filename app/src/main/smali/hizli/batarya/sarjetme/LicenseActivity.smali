.class public Lhizli/batarya/sarjetme/app/LicenseActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Lcom/google/android/gms/ads/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lhizli/batarya/sarjetme/app/LicenseActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->setContentView(I)V

    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string v1, "License"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->b:Lcom/google/android/gms/ads/g;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->b:Lcom/google/android/gms/ads/g;

    const-string v1, "ca-app-pub-3014314167355758/6458894823"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Ljava/lang/String;)V

    const v0, 0x7f0e008d

    invoke-virtual {p0, v0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c$a;->a()Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->a(Lcom/google/android/gms/ads/c;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/LicenseActivity;->b:Lcom/google/android/gms/ads/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/g;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lhizli/batarya/sarjetme/app/LicenseActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
