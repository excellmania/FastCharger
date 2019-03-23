.class Lcom/onesignal/ad$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ad;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/onesignal/ad;


# direct methods
.method constructor <init>(Lcom/onesignal/ad;Lorg/json/JSONArray;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    iput-object p2, p0, Lcom/onesignal/ad$3;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/onesignal/ad$3;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/onesignal/ad$3;->a:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/onesignal/ad$3;->c:Lcom/onesignal/ad;

    invoke-static {v1}, Lcom/onesignal/ad;->g(Lcom/onesignal/ad;)Z

    move-result v1

    new-instance v2, Lcom/onesignal/ad$3$1;

    invoke-direct {v2, p0}, Lcom/onesignal/ad$3$1;-><init>(Lcom/onesignal/ad$3;)V

    invoke-static {v0, v1, v2}, Lcom/onesignal/t;->a(Lorg/json/JSONArray;ZLcom/onesignal/v$a;)V

    return-void
.end method
