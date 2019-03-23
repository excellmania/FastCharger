.class final Lcom/onesignal/t$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/t;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/onesignal/w;->b()Lcom/onesignal/w$c;

    move-result-object v3

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "app_id"

    sget-object v5, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "identifier"

    invoke-static {}, Lcom/onesignal/t;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/onesignal/t;->r()Lcom/onesignal/d;

    move-result-object v4

    sget-object v5, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/onesignal/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "ad_id"

    invoke-virtual {v3, v5, v4}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v4, "device_os"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "timezone"

    invoke-static {}, Lcom/onesignal/t;->s()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "language"

    invoke-static {}, Lcom/onesignal/s;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sdk"

    const-string v5, "030403"

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "sdk_type"

    sget-object v5, Lcom/onesignal/t;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "android_package"

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "device_model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "device_type"

    invoke-static {}, Lcom/onesignal/t;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "subscribableStatus"

    invoke-static {}, Lcom/onesignal/t;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onesignal/w$c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    const-string v4, "game_version"

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onesignal/t;->u()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "pkgs"

    invoke-virtual {v3, v0, v5}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v0, "net_type"

    invoke-static {}, Lcom/onesignal/t;->v()Lcom/onesignal/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/s;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "carrier"

    invoke-static {}, Lcom/onesignal/t;->v()Lcom/onesignal/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "rooted"

    invoke-static {}, Lcom/onesignal/ab;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "lat"

    invoke-static {}, Lcom/onesignal/t;->w()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "long"

    invoke-static {}, Lcom/onesignal/t;->x()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "loc_acc"

    invoke-static {}, Lcom/onesignal/t;->y()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "loc_type"

    invoke-static {}, Lcom/onesignal/t;->z()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/onesignal/w$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/onesignal/t;->A()Z

    move-result v0

    invoke-static {v3, v0}, Lcom/onesignal/w;->a(Lcom/onesignal/w$c;Z)V

    invoke-static {v2}, Lcom/onesignal/t;->e(Z)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
