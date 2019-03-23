.class public Lcom/onesignal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/x;


# static fields
.field private static c:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/onesignal/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/onesignal/z;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/onesignal/z;->c:I

    return v0
.end method

.method static synthetic a(Lcom/onesignal/z;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/z;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/z$2;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/z$2;-><init>(Lcom/onesignal/z;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/onesignal/z;)Lcom/onesignal/x$a;
    .locals 1

    iget-object v0, p0, Lcom/onesignal/z;->b:Lcom/onesignal/x$a;

    return-object v0
.end method

.method private b()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.vending"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, "Market"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/onesignal/z;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/onesignal/z;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onesignal/z;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "GT_DO_NOT_SHOW_MISSING_GPS"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/onesignal/z;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/onesignal/z$1;

    invoke-direct {v0, p0}, Lcom/onesignal/z$1;-><init>(Lcom/onesignal/z;)V

    invoke-static {v0}, Lcom/onesignal/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/x$a;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/onesignal/z;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/z;->b:Lcom/onesignal/x$a;

    :try_start_0
    invoke-direct {p0}, Lcom/onesignal/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/onesignal/z;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v1, "\'Google Play services\' app not installed or disabled on the device."

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onesignal/z;->b:Lcom/onesignal/x$a;

    const/4 v1, 0x0

    const/4 v2, -0x7

    invoke-interface {v0, v1, v2}, Lcom/onesignal/x$a;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v2, "Could not register with GCM due to an error with the AndroidManifest.xml file or with \'Google Play services\'."

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/onesignal/z;->b:Lcom/onesignal/x$a;

    const/4 v1, -0x8

    invoke-interface {v0, v3, v1}, Lcom/onesignal/x$a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
