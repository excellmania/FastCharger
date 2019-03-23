.class Lcom/onesignal/g$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/onesignal/g$1;


# direct methods
.method constructor <init>(Lcom/onesignal/g$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/g$1$2;->b:Lcom/onesignal/g$1;

    iput-object p2, p0, Lcom/onesignal/g$1$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/onesignal/g$1$2;->b:Lcom/onesignal/g$1;

    iget-object v0, v0, Lcom/onesignal/g$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/g$1$2;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/onesignal/m;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
