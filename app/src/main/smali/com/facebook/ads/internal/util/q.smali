.class public Lcom/facebook/ads/internal/util/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/util/q$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/util/q$a;
    .locals 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->a:Lcom/facebook/ads/internal/util/q$a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->b:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->a:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->d:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->e:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->f:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/util/q$a;->c:Lcom/facebook/ads/internal/util/q$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
