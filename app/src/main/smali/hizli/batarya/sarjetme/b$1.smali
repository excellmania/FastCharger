.class Lhizli/batarya/sarjetme/app/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/b;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/b;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/b$1;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$1;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1}, Lhizli/batarya/sarjetme/app/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lhizli/batarya/sarjetme/app/LicenseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$1;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1, v0}, Lhizli/batarya/sarjetme/app/b;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
