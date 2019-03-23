.class final Lcom/onesignal/v$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/v;->a(Ljava/lang/String;Lcom/onesignal/v$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/onesignal/v$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/onesignal/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/v$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/v$3;->b:Lcom/onesignal/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/onesignal/v$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/v$3;->b:Lcom/onesignal/v$a;

    invoke-static {v0, v2, v2, v1}, Lcom/onesignal/v;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V

    return-void
.end method
