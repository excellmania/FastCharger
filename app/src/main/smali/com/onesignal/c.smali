.class Lcom/onesignal/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/c/a;->b(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "OptedOut"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    const-string v2, "Error getting Google Ad id: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
