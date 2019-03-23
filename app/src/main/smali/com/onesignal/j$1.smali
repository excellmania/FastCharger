.class final Lcom/onesignal/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/j;->a(Landroid/content/Context;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/j$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/onesignal/j$1;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/onesignal/j;->a(Landroid/os/Bundle;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/onesignal/t;->a(Lorg/json/JSONArray;ZZ)V

    return-void
.end method
