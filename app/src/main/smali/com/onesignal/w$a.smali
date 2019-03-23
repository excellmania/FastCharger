.class Lcom/onesignal/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(ZLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/onesignal/w$a;->a:Z

    iput-object p2, p0, Lcom/onesignal/w$a;->b:Lorg/json/JSONObject;

    return-void
.end method
