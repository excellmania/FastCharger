.class Lcom/onesignal/ad$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ad;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/ad;


# direct methods
.method constructor <init>(Lcom/onesignal/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ad$1;->a:Lcom/onesignal/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    const-string v0, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/ad;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/onesignal/ad$1;->a:Lcom/onesignal/ad;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/ad;->a(Lcom/onesignal/ad;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onesignal/ad$1;->a:Lcom/onesignal/ad;

    invoke-static {v0}, Lcom/onesignal/ad;->a(Lcom/onesignal/ad;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/16 v0, -0x63

    invoke-static {v0}, Lcom/onesignal/ad;->a(I)I

    iget-object v0, p0, Lcom/onesignal/ad$1;->a:Lcom/onesignal/ad;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/ad;->a(Lcom/onesignal/ad;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
