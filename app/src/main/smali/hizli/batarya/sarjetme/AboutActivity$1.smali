.class Lhizli/batarya/sarjetme/app/AboutActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/AboutActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/AboutActivity;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lhizli/batarya/sarjetme/app/AboutActivity;->i:Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/AboutActivity;->i:Landroid/content/Intent;

    const-string v1, "market://search?q=pub:un4saken"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    invoke-virtual {v0}, Lhizli/batarya/sarjetme/app/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/AboutActivity;->i:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/AboutActivity$1;->a:Lhizli/batarya/sarjetme/app/AboutActivity;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/AboutActivity;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lhizli/batarya/sarjetme/app/AboutActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
