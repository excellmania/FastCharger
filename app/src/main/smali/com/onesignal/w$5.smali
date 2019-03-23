.class final Lcom/onesignal/w$5;
.super Lcom/onesignal/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/w;->b(Z)Lcom/onesignal/w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/w;->b:Z

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/onesignal/w;->j()Lcom/onesignal/w$c;

    move-result-object v1

    iget-object v1, v1, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    const-string v2, "tags"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/w;->k()Lcom/onesignal/w$c;

    move-result-object v2

    iget-object v2, v2, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/onesignal/w;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/w;->j()Lcom/onesignal/w$c;

    move-result-object v2

    iget-object v2, v2, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    const-string v3, "tags"

    const-string v4, "tags"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/onesignal/w;->j()Lcom/onesignal/w$c;

    move-result-object v2

    invoke-static {v2}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;)V

    invoke-static {}, Lcom/onesignal/w;->k()Lcom/onesignal/w$c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/w$c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/onesignal/w;->k()Lcom/onesignal/w$c;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
