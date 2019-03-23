.class Lcom/onesignal/ac$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amazon/device/iap/PurchasingListener;

.field final synthetic b:Lcom/onesignal/ac;


# direct methods
.method private constructor <init>(Lcom/onesignal/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ac$a;->b:Lcom/onesignal/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ac;Lcom/onesignal/ac$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onesignal/ac$a;-><init>(Lcom/onesignal/ac;)V

    return-void
.end method
