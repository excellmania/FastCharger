.class Lhizli/batarya/sarjetme/app/b$2;
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

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/b$2;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/b$2;->a:Lhizli/batarya/sarjetme/app/b;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://search?q=pub:un4saken"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lhizli/batarya/sarjetme/app/b;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
