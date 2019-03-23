.class final Lcom/onesignal/w$3;
.super Lcom/onesignal/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/w;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/w$3;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/onesignal/w$3;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed last request. statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    const-string v0, "No user with this id found"

    invoke-static {p1, p2, v0}, Lcom/onesignal/w;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/w;->f()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/w;->a(Ljava/lang/Integer;)Lcom/onesignal/w$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/w$b;->c()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/onesignal/w;->j()Lcom/onesignal/w$c;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/w$3;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/onesignal/w$3;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method
