.class Lhizli/batarya/sarjetme/app/b$4;
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

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const v3, 0x7f080042

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, v0, Lhizli/batarya/sarjetme/app/b;->a:Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/b;->a:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/b;->a:Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buraya bak\u0131n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1}, Lhizli/batarya/sarjetme/app/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Bu programla bataryam\u0131 5x daha h\u0131zl\u0131 \u015farj edebiliyorum! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1}, Lhizli/batarya/sarjetme/app/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1}, Lhizli/batarya/sarjetme/app/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/b;->a:Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/b;->a:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Payla\u015f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v2}, Lhizli/batarya/sarjetme/app/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/b$4;->a:Lhizli/batarya/sarjetme/app/b;

    invoke-virtual {v1, v0}, Lhizli/batarya/sarjetme/app/b;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
