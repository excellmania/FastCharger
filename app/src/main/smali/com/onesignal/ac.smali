.class Lcom/onesignal/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/ac$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/onesignal/ac$a;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/onesignal/ac;->b:Z

    iput-object p1, p0, Lcom/onesignal/ac;->a:Landroid/content/Context;

    :try_start_0
    const-string v0, "com.amazon.device.iap.internal.d"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/ac;->d:Ljava/lang/Class;

    iget-object v0, p0, Lcom/onesignal/ac;->d:Ljava/lang/Class;

    const-string v1, "d"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/ac;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/onesignal/ac;->d:Ljava/lang/Class;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/ac;->f:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/onesignal/ac;->f:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v0, Lcom/onesignal/ac$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/ac$a;-><init>(Lcom/onesignal/ac;Lcom/onesignal/ac$1;)V

    iput-object v0, p0, Lcom/onesignal/ac;->c:Lcom/onesignal/ac$a;

    iget-object v1, p0, Lcom/onesignal/ac;->c:Lcom/onesignal/ac$a;

    iget-object v0, p0, Lcom/onesignal/ac;->f:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/onesignal/ac;->e:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    iput-object v0, v1, Lcom/onesignal/ac$a;->a:Lcom/amazon/device/iap/PurchasingListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onesignal/ac;->b:Z

    invoke-direct {p0}, Lcom/onesignal/ac;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/onesignal/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/onesignal/ac;->c:Lcom/onesignal/ac$a;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/onesignal/ac;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/ac;->f:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/onesignal/ac;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/PurchasingListener;

    iget-object v1, p0, Lcom/onesignal/ac;->c:Lcom/onesignal/ac$a;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/onesignal/ac;->c:Lcom/onesignal/ac$a;

    iput-object v0, v1, Lcom/onesignal/ac$a;->a:Lcom/amazon/device/iap/PurchasingListener;

    invoke-direct {p0}, Lcom/onesignal/ac;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
