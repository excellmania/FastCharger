.class Lcom/onesignal/f;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/onesignal/f;->a:I

    return-void
.end method

.method static a(ILandroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/onesignal/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/onesignal/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "notification"

    const-string v3, "dismissed = 0 AND opened = 0 AND is_summary = 0 "

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1, p1}, Lcom/onesignal/f;->a(ILandroid/content/Context;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lcom/onesignal/f;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget v2, Lcom/onesignal/f;->a:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.onesignal.BadgeCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DISABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    sput v2, Lcom/onesignal/f;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget v2, Lcom/onesignal/f;->a:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    sput v0, Lcom/onesignal/f;->a:I

    sget-object v3, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
