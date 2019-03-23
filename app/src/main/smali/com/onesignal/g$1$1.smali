.class Lcom/onesignal/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/onesignal/g$1;


# direct methods
.method constructor <init>(Lcom/onesignal/g$1;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/g$1$1;->c:Lcom/onesignal/g$1;

    iput-object p2, p0, Lcom/onesignal/g$1$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/onesignal/g$1$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    add-int/lit8 v0, p2, 0x3

    iget-object v1, p0, Lcom/onesignal/g$1$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/g$1$1;->c:Lcom/onesignal/g$1;

    iget-object v2, v2, Lcom/onesignal/g$1;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "actionSelected"

    iget-object v3, p0, Lcom/onesignal/g$1$1;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/onesignal/g$1$1;->b:Landroid/content/Intent;

    const-string v2, "onesignal_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/onesignal/g$1$1;->c:Lcom/onesignal/g$1;

    iget-object v0, v0, Lcom/onesignal/g$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/g$1$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/onesignal/m;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/onesignal/g$1$1;->c:Lcom/onesignal/g$1;

    iget-object v0, v0, Lcom/onesignal/g$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/g$1$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/onesignal/m;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
