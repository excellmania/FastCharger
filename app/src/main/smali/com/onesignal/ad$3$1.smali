.class Lcom/onesignal/ad$3$1;
.super Lcom/onesignal/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ad$3;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/ad$3;


# direct methods
.method constructor <init>(Lcom/onesignal/ad$3;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    invoke-direct {p0}, Lcom/onesignal/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0}, Lcom/onesignal/ad;->e(Lcom/onesignal/ad;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v1, v1, Lcom/onesignal/ad$3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0}, Lcom/onesignal/ad;->f(Lcom/onesignal/ad;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "purchaseTokens"

    iget-object v2, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v2, v2, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v2}, Lcom/onesignal/ad;->e(Lcom/onesignal/ad;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0}, Lcom/onesignal/ad;->f(Lcom/onesignal/ad;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExistingPurchases"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0}, Lcom/onesignal/ad;->f(Lcom/onesignal/ad;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0, v3}, Lcom/onesignal/ad;->b(Lcom/onesignal/ad;Z)Z

    iget-object v0, p0, Lcom/onesignal/ad$3$1;->a:Lcom/onesignal/ad$3;

    iget-object v0, v0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v0, v3}, Lcom/onesignal/ad;->a(Lcom/onesignal/ad;Z)Z

    return-void
.end method
