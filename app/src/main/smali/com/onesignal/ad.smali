.class Lcom/onesignal/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/ServiceConnection;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Landroid/content/Context;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/SharedPreferences$Editor;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x63

    sput v0, Lcom/onesignal/ad;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/onesignal/ad;->j:Z

    iput-boolean v1, p0, Lcom/onesignal/ad;->k:Z

    iput-object p1, p0, Lcom/onesignal/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/onesignal/ad;->g:Landroid/content/Context;

    const-string v3, "GTPlayerPurchases"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/onesignal/ad;->i:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onesignal/ad;->h:Ljava/util/ArrayList;

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const-string v2, "purchaseTokens"

    const-string v5, "[]"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/onesignal/ad;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/onesignal/ad;->j:Z

    iget-boolean v0, p0, Lcom/onesignal/ad;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "ExistingPurchases"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/ad;->j:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/onesignal/ad;->a()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/onesignal/ad;->a:I

    return p0
.end method

.method static synthetic a(Lcom/onesignal/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ad;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/onesignal/ad;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ad;->e:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0}, Lcom/onesignal/ad;->c(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/onesignal/ad;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/ad;->c()V

    return-void
.end method

.method static synthetic a(Lcom/onesignal/ad;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onesignal/ad;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/ad;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/ad;->c:Ljava/lang/Class;

    invoke-static {v0}, Lcom/onesignal/ad;->e(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/ad;->f:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/onesignal/ad;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ITEM_ID_LIST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/onesignal/ad;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/onesignal/ad;->d:Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/onesignal/ad;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "inapp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DETAILS_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/math/BigDecimal;

    const-string v5, "price_amount_micros"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigDecimal;

    const v6, 0xf4240

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sku"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "iso"

    const-string v7, "price_currency_code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "amount"

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    const-string v2, "Failed to track IAP purchases"

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/onesignal/ad$3;

    invoke-direct {v0, p0, v2, p2}, Lcom/onesignal/ad$3;-><init>(Lcom/onesignal/ad;Lorg/json/JSONArray;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$c;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/onesignal/ad;->a:I

    const/16 v2, -0x63

    if-ne v1, v2, :cond_0

    const-string v1, "com.android.vending.BILLING"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/onesignal/ad;->a:I

    :cond_0
    :try_start_0
    sget v1, Lcom/onesignal/ad;->a:I

    if-nez v1, :cond_1

    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/onesignal/ad;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    sget v1, Lcom/onesignal/ad;->a:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sput v0, Lcom/onesignal/ad;->a:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/onesignal/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onesignal/ad;->k:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/onesignal/ad;->c:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Lcom/onesignal/ad;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/ad;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0}, Lcom/onesignal/ad;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/onesignal/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/onesignal/ad;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/onesignal/ad;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/ad;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v5, v5, v2

    const-class v6, Landroid/os/IBinder;

    if-ne v5, v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/onesignal/ad;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/ad$2;

    invoke-direct {v1, p0}, Lcom/onesignal/ad$2;-><init>(Lcom/onesignal/ad;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/onesignal/ad;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/ad;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    aget-object v6, v5, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-object v6, v5, v6

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static e(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    aget-object v7, v5, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    aget-object v7, v5, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x2

    aget-object v7, v5, v7

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const/4 v7, 0x3

    aget-object v5, v5, v7

    const-class v7, Landroid/os/Bundle;

    if-ne v5, v7, :cond_0

    const-class v5, Landroid/os/Bundle;

    if-ne v6, v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic e(Lcom/onesignal/ad;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/ad;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/onesignal/ad;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/ad;->i:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic g(Lcom/onesignal/ad;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/onesignal/ad;->j:Z

    return v0
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcom/onesignal/ad;->b:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onesignal/ad$1;

    invoke-direct {v0, p0}, Lcom/onesignal/ad$1;-><init>(Lcom/onesignal/ad;)V

    iput-object v0, p0, Lcom/onesignal/ad;->b:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/onesignal/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/onesignal/ad;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/onesignal/ad;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onesignal/ad;->c()V

    goto :goto_0
.end method
