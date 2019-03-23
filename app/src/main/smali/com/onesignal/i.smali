.class Lcom/onesignal/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/i$a;,
        Lcom/onesignal/i$b;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field private static b:Lcom/onesignal/h;

.field private static c:Lcom/onesignal/i$b;

.field private static d:Ljava/lang/Thread;

.field private static e:Z


# direct methods
.method static a()V
    .locals 3

    sget-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/onesignal/i;->e()V

    new-instance v0, Lcom/onesignal/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/i$a;-><init>(Lcom/onesignal/i$1;)V

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;

    sget-object v2, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$a;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/location/g;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/GoogleApiClient$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a(Lcom/google/android/gms/common/api/GoogleApiClient$b;)Lcom/google/android/gms/common/api/GoogleApiClient$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a(Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/GoogleApiClient$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    new-instance v1, Lcom/onesignal/h;

    invoke-direct {v1, v0}, Lcom/onesignal/h;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v1, Lcom/onesignal/i;->b:Lcom/onesignal/h;

    sget-object v0, Lcom/onesignal/i;->b:Lcom/onesignal/h;

    invoke-virtual {v0}, Lcom/onesignal/h;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    const-string v2, "Location permission exists but there was an error initializing: "

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/onesignal/i;->b()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;ZLcom/onesignal/i$b;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v4, 0x0

    sput-object p2, Lcom/onesignal/i;->c:Lcom/onesignal/i$b;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/onesignal/e$c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/onesignal/e$c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/onesignal/i;->e:Z

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {p2, v4, v4, v4, v4}, Lcom/onesignal/i$b;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/onesignal/i;->a()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    sput-object v1, Lcom/onesignal/i;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    sget-object v1, Lcom/onesignal/i;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/onesignal/PermissionsActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    sput-object v1, Lcom/onesignal/i;->a:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    invoke-static {}, Lcom/onesignal/i;->a()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/onesignal/i;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/onesignal/i;->a()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/i;->b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method static b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->b:Z

    invoke-static {v1, v1, v1, v1}, Lcom/onesignal/i;->b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    sget-object v0, Lcom/onesignal/i;->b:Lcom/onesignal/h;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/i;->b:Lcom/onesignal/h;

    invoke-virtual {v0}, Lcom/onesignal/h;->b()V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Lcom/onesignal/i;->c:Lcom/onesignal/i$b;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/onesignal/i$b;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    sget-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic c()Lcom/onesignal/h;
    .locals 1

    sget-object v0, Lcom/onesignal/i;->b:Lcom/onesignal/h;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/i;->e:Z

    return v0
.end method

.method private static e()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/i$1;

    invoke-direct {v1}, Lcom/onesignal/i$1;-><init>()V

    const-string v2, "OS_GMS_LOCATION_FALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    sget-object v0, Lcom/onesignal/i;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
