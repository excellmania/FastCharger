.class final Lcom/onesignal/t$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/t;->a(Lcom/onesignal/t$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/t$b;


# direct methods
.method constructor <init>(Lcom/onesignal/t$b;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/t$9;->a:Lcom/onesignal/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/onesignal/t;->B()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/onesignal/w;->b(Z)Lcom/onesignal/w$a;

    move-result-object v0

    iget-boolean v2, v0, Lcom/onesignal/w$a;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/onesignal/t;->f(Z)Z

    :cond_0
    iget-object v1, v0, Lcom/onesignal/w$a;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/onesignal/t$9;->a:Lcom/onesignal/t$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/onesignal/t$b;->a(Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/onesignal/t$9;->a:Lcom/onesignal/t$b;

    iget-object v0, v0, Lcom/onesignal/w$a;->b:Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Lcom/onesignal/t$b;->a(Lorg/json/JSONObject;)V

    goto :goto_1
.end method
