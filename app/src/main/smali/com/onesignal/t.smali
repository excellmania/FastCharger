.class public Lcom/onesignal/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/t$a;,
        Lcom/onesignal/t$b;,
        Lcom/onesignal/t$c;,
        Lcom/onesignal/t$f;,
        Lcom/onesignal/t$e;,
        Lcom/onesignal/t$g;,
        Lcom/onesignal/t$d;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/Double;

.field private static B:Ljava/lang/Double;

.field private static C:Ljava/lang/Float;

.field private static D:Ljava/lang/Integer;

.field private static E:Z

.field private static F:Lcom/onesignal/t$b;

.field private static G:Z

.field private static H:Z

.field private static I:Z

.field private static J:Lorg/json/JSONObject;

.field private static K:I

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Landroid/content/Context;

.field static d:Z

.field public static e:Ljava/lang/String;

.field static f:Lcom/onesignal/t$a;

.field static g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static h:Z

.field private static i:Lcom/onesignal/t$d;

.field private static j:Lcom/onesignal/t$d;

.field private static k:Ljava/lang/String;

.field private static l:I

.field private static m:Z

.field private static n:Lcom/onesignal/t$c;

.field private static o:J

.field private static p:J

.field private static q:Lcom/onesignal/ad;

.field private static r:Lcom/onesignal/ac;

.field private static s:Lcom/onesignal/d;

.field private static t:I

.field private static u:Lcom/onesignal/s;

.field private static v:Ljava/lang/String;

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/onesignal/t$d;->a:Lcom/onesignal/t$d;

    sput-object v0, Lcom/onesignal/t;->i:Lcom/onesignal/t$d;

    sget-object v0, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    sput-object v0, Lcom/onesignal/t;->j:Lcom/onesignal/t$d;

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/t;->k:Ljava/lang/String;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/onesignal/t;->o:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/onesignal/t;->p:J

    new-instance v0, Lcom/onesignal/c;

    invoke-direct {v0}, Lcom/onesignal/c;-><init>()V

    sput-object v0, Lcom/onesignal/t;->s:Lcom/onesignal/d;

    const-string v0, "native"

    sput-object v0, Lcom/onesignal/t;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/t;->E:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/t;->g:Ljava/util/Collection;

    const/4 v0, 0x0

    sput v0, Lcom/onesignal/t;->K:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic A()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/t;->I:Z

    return v0
.end method

.method static synthetic B()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/t;->G:Z

    return v0
.end method

.method static synthetic C()V
    .locals 0

    invoke-static {}, Lcom/onesignal/t;->K()V

    return-void
.end method

.method private static D()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/onesignal/t;->H:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcom/onesignal/t;->H:Z

    sput-boolean v0, Lcom/onesignal/t;->w:Z

    sget-boolean v2, Lcom/onesignal/t;->I:Z

    if-eqz v2, :cond_1

    sput-boolean v0, Lcom/onesignal/t;->x:Z

    :cond_1
    invoke-static {}, Lcom/onesignal/t;->E()V

    invoke-static {}, Lcom/onesignal/t;->G()V

    sget-boolean v2, Lcom/onesignal/t;->z:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-boolean v2, v2, Lcom/onesignal/t$a;->d:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sput-boolean v0, Lcom/onesignal/t;->z:Z

    goto :goto_0
.end method

.method private static E()V
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/onesignal/t;->E:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-boolean v2, v2, Lcom/onesignal/t$a;->d:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/onesignal/t;->z:Z

    if-nez v2, :cond_0

    :goto_0
    new-instance v2, Lcom/onesignal/t$1;

    invoke-direct {v2}, Lcom/onesignal/t$1;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/onesignal/i;->a(Landroid/content/Context;ZLcom/onesignal/i$b;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sput-boolean v0, Lcom/onesignal/t;->x:Z

    invoke-static {}, Lcom/onesignal/t;->J()V

    goto :goto_1
.end method

.method private static F()V
    .locals 4

    sget v0, Lcom/onesignal/t;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/onesignal/y;

    invoke-direct {v0}, Lcom/onesignal/y;-><init>()V

    :goto_0
    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/t;->b:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/t$4;

    invoke-direct {v3}, Lcom/onesignal/t$4;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/x;->a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/x$a;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onesignal/z;

    invoke-direct {v0}, Lcom/onesignal/z;-><init>()V

    goto :goto_0
.end method

.method private static G()V
    .locals 4

    sget-boolean v0, Lcom/onesignal/t;->y:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/t;->F()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/onesignal/t$5;

    invoke-direct {v1}, Lcom/onesignal/t$5;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/android_params.js"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?player_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, v1}, Lcom/onesignal/v;->a(Ljava/lang/String;Lcom/onesignal/v$a;)V

    goto :goto_0
.end method

.method private static H()V
    .locals 4

    sget-object v0, Lcom/onesignal/t;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/onesignal/t;->b(Lorg/json/JSONArray;ZZ)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onesignal/t;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method private static I()I
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static J()V
    .locals 3

    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser: registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/t;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/t;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", awlFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/onesignal/t;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-boolean v0, Lcom/onesignal/t;->w:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/t;->x:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/onesignal/t;->y:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/t$8;

    invoke-direct {v1}, Lcom/onesignal/t$8;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static K()V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/onesignal/t;->n:Lcom/onesignal/t$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/onesignal/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onesignal/w;->c()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/onesignal/t;->n:Lcom/onesignal/t$c;

    invoke-interface {v3, v2, v0}, Lcom/onesignal/t$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    sput-object v1, Lcom/onesignal/t;->n:Lcom/onesignal/t$c;

    goto :goto_0
.end method

.method private static L()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/t;->d(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static M()V
    .locals 4

    sget-boolean v0, Lcom/onesignal/t;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/t;->h:Z

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/onesignal/t;->c:Landroid/content/Context;

    const-class v3, Lcom/onesignal/SyncService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/onesignal/t;->l:I

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/onesignal/t$a;
    .locals 2

    new-instance v0, Lcom/onesignal/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onesignal/t$a;-><init>(Landroid/content/Context;Lcom/onesignal/t$1;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->A:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->C:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "custom"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "i"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "i"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    const-string v2, "Not a OneSignal formatted GCM message. No \'i\' field in custom."

    invoke-static {v1, v2}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    const-string v3, "Could not parse bundle, probably not a OneSignal notification."

    invoke-static {v2, v3, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    const-string v2, "Not a OneSignal formatted GCM message. No \'custom\' field in the bundle."

    invoke-static {v1, v2}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "custom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "i"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a()V
    .locals 2

    invoke-static {}, Lcom/onesignal/t;->M()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/t;->m:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/t;->o:J

    invoke-static {}, Lcom/onesignal/t;->L()Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/t;->I:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(J)V

    invoke-static {}, Lcom/onesignal/t;->D()V

    sget-object v0, Lcom/onesignal/t;->q:Lcom/onesignal/ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->q:Lcom/onesignal/ad;

    invoke-virtual {v0}, Lcom/onesignal/ad;->a()V

    :cond_0
    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method static a(J)V
    .locals 2

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static a(JZ)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "app_id"

    sget-object v2, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "state"

    const-string v2, "ping"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "active_time"

    invoke-virtual {v0, v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/onesignal/t;->c(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/on_focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onesignal/t$7;

    invoke-direct {v2}, Lcom/onesignal/t$7;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {v1, v0, v2}, Lcom/onesignal/v;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1, v0, v2}, Lcom/onesignal/v;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v2, "Generating on_focus:JSON Failed."

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/t$e;Lcom/onesignal/t$f;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onesignal/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/t$a;-><init>(Lcom/onesignal/t$1;)V

    sput-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    :cond_0
    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iput-object p3, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iput-object p4, v0, Lcom/onesignal/t$a;->c:Lcom/onesignal/t$f;

    sput-object p1, Lcom/onesignal/t;->b:Ljava/lang/String;

    new-instance v0, Lcom/onesignal/s;

    invoke-direct {v0}, Lcom/onesignal/s;-><init>()V

    sput-object v0, Lcom/onesignal/t;->u:Lcom/onesignal/s;

    sget-object v0, Lcom/onesignal/t;->u:Lcom/onesignal/s;

    invoke-virtual {v0}, Lcom/onesignal/s;->a()I

    move-result v0

    sput v0, Lcom/onesignal/t;->t:I

    sget-object v0, Lcom/onesignal/t;->u:Lcom/onesignal/s;

    sget v1, Lcom/onesignal/t;->t:I

    invoke-virtual {v0, v1, p2}, Lcom/onesignal/s;->a(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/onesignal/t;->l:I

    sget v0, Lcom/onesignal/t;->l:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Lcom/onesignal/t;->d:Z

    if-eqz v0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    :cond_3
    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/t;->H()V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Landroid/app/Activity;

    sput-boolean v0, Lcom/onesignal/t;->m:Z

    sput-object p2, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/app/Activity;

    sput-object p0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/onesignal/t;->M()V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/t;->o:J

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/w;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_b

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/onesignal/b;

    invoke-direct {v1}, Lcom/onesignal/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_2
    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/onesignal/ac;

    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/ac;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/t;->r:Lcom/onesignal/ac;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-static {}, Lcom/onesignal/t;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v1, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    const-string v1, "APP ID changed, clearing user id as it is no longer valid."

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/t;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/onesignal/w;->e()V

    :cond_5
    :goto_4
    sget-boolean v0, Lcom/onesignal/t;->m:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/onesignal/t;->L()Z

    move-result v0

    sput-boolean v0, Lcom/onesignal/t;->I:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(J)V

    invoke-static {}, Lcom/onesignal/t;->D()V

    :cond_7
    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/onesignal/t;->H()V

    :cond_8
    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/ad;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/onesignal/ad;

    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/ad;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/t;->q:Lcom/onesignal/ad;

    :cond_9
    sput-boolean v2, Lcom/onesignal/t;->d:Z

    goto/16 :goto_0

    :cond_a
    sput-boolean v2, Lcom/onesignal/a;->a:Z

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListenerCompat;->startListener()V

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    sget-object v1, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/f;->a(ILandroid/content/Context;)V

    sget-object v0, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/t;->d(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;Z)V
    .locals 3

    invoke-static {p0, p1}, Lcom/onesignal/t;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    const-string v1, "DISABLE"

    const-string v2, "com.onesignal.NotificationOpened.DEFAULT"

    invoke-static {p0, v2}, Lcom/onesignal/s;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/onesignal/t;->a(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2, p2}, Lcom/onesignal/t;->b(Lorg/json/JSONArray;ZZ)V

    if-nez p2, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/onesignal/t;->f(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static a(Lcom/onesignal/q;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    invoke-interface {v0, p0}, Lcom/onesignal/t$e;->a(Lcom/onesignal/q;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/onesignal/t$2;

    invoke-direct {v0, p0}, Lcom/onesignal/t$2;-><init>(Lcom/onesignal/q;)V

    invoke-static {v0}, Lcom/onesignal/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/onesignal/t$a;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/t;->b(Lcom/onesignal/t$a;)V

    return-void
.end method

.method private static a(Lcom/onesignal/t$b;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/t$9;

    invoke-direct {v1, p0}, Lcom/onesignal/t$9;-><init>(Lcom/onesignal/t$b;)V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Lcom/onesignal/t$c;)V
    .locals 1

    sput-object p0, Lcom/onesignal/t;->n:Lcom/onesignal/t$c;

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/t;->K()V

    :cond_0
    return-void
.end method

.method static a(Lcom/onesignal/t$d;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v1, 0x1

    sget-object v0, Lcom/onesignal/t;->j:Lcom/onesignal/t$d;

    invoke-virtual {p0, v0}, Lcom/onesignal/t$d;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/onesignal/t$d;->g:Lcom/onesignal/t$d;

    if-ne p0, v0, :cond_3

    const-string v0, "OneSignal"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    sget-object v0, Lcom/onesignal/t;->i:Lcom/onesignal/t$d;

    invoke-virtual {p0, v0}, Lcom/onesignal/t$d;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/onesignal/t$6;

    invoke-direct {v1, p0, v0}, Lcom/onesignal/t$6;-><init>(Lcom/onesignal/t$d;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onesignal/t;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    if-ne p0, v0, :cond_4

    const-string v0, "OneSignal"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    if-ne p0, v0, :cond_5

    const-string v0, "OneSignal"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    if-ne p0, v0, :cond_6

    const-string v0, "OneSignal"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    if-eq p0, v0, :cond_7

    sget-object v0, Lcom/onesignal/t$d;->b:Lcom/onesignal/t$d;

    if-ne p0, v0, :cond_0

    :cond_7
    const-string v0, "OneSignal"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneSignal"

    const-string v2, "Error showing logging message."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/onesignal/t;->k:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GT_PLAYER_ID"

    sget-object v2, Lcom/onesignal/t;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/t;->b(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/json/JSONArray;ZLcom/onesignal/v$a;)V
    .locals 3

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_id"

    sget-object v2, Lcom/onesignal/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v1, "existing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "purchases"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/on_purchase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p2}, Lcom/onesignal/v;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v2, "Failed to generate JSON for sendPurchases."

    invoke-static {v1, v2, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONArray;ZZ)V
    .locals 2

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->c:Lcom/onesignal/t$f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onesignal/t;->c(Lorg/json/JSONArray;ZZ)Lcom/onesignal/q;

    move-result-object v0

    sget-object v1, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v1, v1, Lcom/onesignal/t$a;->c:Lcom/onesignal/t$f;

    iget-object v0, v0, Lcom/onesignal/q;->a:Lcom/onesignal/o;

    invoke-interface {v1, v0}, Lcom/onesignal/t$f;->a(Lcom/onesignal/o;)V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/t;->m:Z

    sget-boolean v0, Lcom/onesignal/t;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/onesignal/t;->r:Lcom/onesignal/ac;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onesignal/t;->r:Lcom/onesignal/ac;

    invoke-virtual {v0}, Lcom/onesignal/ac;->a()V

    :cond_2
    sget-wide v0, Lcom/onesignal/t;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/onesignal/t;->o:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/onesignal/t;->o:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x15180

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-object v2, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-nez v2, :cond_3

    sget-object v0, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v1, "Android Context not found, please call OneSignal.init when your app starts."

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/onesignal/t;->a(J)V

    invoke-static {}, Lcom/onesignal/t;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    if-nez p0, :cond_4

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {v0, v1}, Lcom/onesignal/t;->c(J)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/t;->a(JZ)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "custom"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "custom"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "u"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "u"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x58080000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v4, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing JSON item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for launching a web URL."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    return v0
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1

    invoke-static {p1}, Lcom/onesignal/t;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onesignal/t;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/onesignal/t$d;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/onesignal/t;->i:Lcom/onesignal/t$d;

    invoke-virtual {p0, v1}, Lcom/onesignal/t$d;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lt v1, v0, :cond_0

    sget-object v1, Lcom/onesignal/t;->j:Lcom/onesignal/t$d;

    invoke-virtual {p0, v1}, Lcom/onesignal/t$d;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/onesignal/u;->a(Landroid/content/Context;)Lcom/onesignal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/u;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "notification_id"

    aput-object v1, v2, v9

    new-array v4, v8, [Ljava/lang/String;

    aput-object p0, v4, v9

    const-string v1, "notification"

    const-string v3, "notification_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_2

    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate GCM message received, skip processing of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->B:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->J:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onesignal/t;->c(J)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "i"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    invoke-static {p0}, Lcom/onesignal/t;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "player_id"

    invoke-static {p0}, Lcom/onesignal/t;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "opened"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifications/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/onesignal/t$3;

    invoke-direct {v3}, Lcom/onesignal/t$3;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/onesignal/v;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static b(Lcom/onesignal/t$a;)V
    .locals 5

    const/4 v4, 0x4

    sput-object p0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v1, v0, Lcom/onesignal/t$a;->a:Landroid/content/Context;

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/onesignal/t$a;->a:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "onesignal_google_project_number"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "onesignal_app_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v3, v3, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    sget-object v4, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v4, v4, Lcom/onesignal/t$a;->c:Lcom/onesignal/t$f;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/onesignal/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/t$e;Lcom/onesignal/t$f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/onesignal/t;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/onesignal/t;->c()V

    sget-object v0, Lcom/onesignal/t;->F:Lcom/onesignal/t$b;

    invoke-static {v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$b;)V

    return-void
.end method

.method private static b(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    if-eqz p3, :cond_0

    sget-object v1, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    invoke-static {v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static b(Lorg/json/JSONArray;ZZ)V
    .locals 1

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/onesignal/t;->g:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/onesignal/t;->c(Lorg/json/JSONArray;ZZ)Lcom/onesignal/q;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/t;->a(Lcom/onesignal/q;)V

    goto :goto_0
.end method

.method static b()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/t;->m:Z

    return v0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_VIBRATE_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/t;->x:Z

    return p0
.end method

.method private static c(Lorg/json/JSONArray;ZZ)Lcom/onesignal/q;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v0, 0x1

    new-instance v6, Lcom/onesignal/q;

    invoke-direct {v6}, Lcom/onesignal/q;-><init>()V

    new-instance v7, Lcom/onesignal/o;

    invoke-direct {v7}, Lcom/onesignal/o;-><init>()V

    invoke-static {}, Lcom/onesignal/t;->i()Z

    move-result v2

    iput-boolean v2, v7, Lcom/onesignal/o;->a:Z

    iput-boolean p1, v7, Lcom/onesignal/o;->b:Z

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v7, Lcom/onesignal/o;->c:I

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_2

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v8, "custom"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v2}, Lcom/onesignal/j;->a(Lorg/json/JSONObject;)Lcom/onesignal/r;

    move-result-object v8

    iput-object v8, v7, Lcom/onesignal/o;->d:Lcom/onesignal/r;

    if-nez v3, :cond_5

    const-string v8, "actionSelected"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "actionSelected"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    :goto_1
    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    move-object v11, v2

    move v2, v0

    move-object v0, v11

    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v3, v7, Lcom/onesignal/o;->f:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/onesignal/o;->f:Ljava/util/List;

    :cond_1
    iget-object v3, v7, Lcom/onesignal/o;->f:Ljava/util/List;

    iget-object v8, v7, Lcom/onesignal/o;->d:Lcom/onesignal/r;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    sget-object v8, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing JSON item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for callback."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_3

    :cond_2
    iput-object v7, v6, Lcom/onesignal/q;->a:Lcom/onesignal/o;

    new-instance v0, Lcom/onesignal/p;

    invoke-direct {v0}, Lcom/onesignal/p;-><init>()V

    iput-object v0, v6, Lcom/onesignal/q;->b:Lcom/onesignal/p;

    iget-object v0, v6, Lcom/onesignal/q;->b:Lcom/onesignal/p;

    iput-object v3, v0, Lcom/onesignal/p;->b:Ljava/lang/String;

    iget-object v1, v6, Lcom/onesignal/q;->b:Lcom/onesignal/p;

    if-eqz v3, :cond_3

    sget-object v0, Lcom/onesignal/p$a;->b:Lcom/onesignal/p$a;

    :goto_5
    iput-object v0, v1, Lcom/onesignal/p;->a:Lcom/onesignal/p$a;

    if-eqz p2, :cond_4

    iget-object v0, v6, Lcom/onesignal/q;->a:Lcom/onesignal/o;

    sget-object v1, Lcom/onesignal/o$a;->b:Lcom/onesignal/o$a;

    iput-object v1, v0, Lcom/onesignal/o;->e:Lcom/onesignal/o$a;

    :goto_6
    return-object v6

    :cond_3
    sget-object v0, Lcom/onesignal/p$a;->a:Lcom/onesignal/p$a;

    goto :goto_5

    :cond_4
    iget-object v0, v6, Lcom/onesignal/q;->a:Lcom/onesignal/o;

    sget-object v1, Lcom/onesignal/o$a;->a:Lcom/onesignal/o$a;

    iput-object v1, v0, Lcom/onesignal/o;->e:Lcom/onesignal/o$a;

    goto :goto_6

    :catch_1
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_4

    :cond_5
    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/onesignal/t;->v:Ljava/lang/String;

    return-object p0
.end method

.method static c()V
    .locals 1

    sget-object v0, Lcom/onesignal/t;->n:Lcom/onesignal/t$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onesignal/t$10;

    invoke-direct {v0}, Lcom/onesignal/t$10;-><init>()V

    invoke-static {v0}, Lcom/onesignal/t;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static c(J)V
    .locals 4

    sput-wide p0, Lcom/onesignal/t;->p:J

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/onesignal/t;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GT_UNSENT_ACTIVE_TIME"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "net_type"

    sget-object v1, Lcom/onesignal/t;->u:Lcom/onesignal/s;

    invoke-virtual {v1}, Lcom/onesignal/s;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_SOUND_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/t;->w:Z

    return p0
.end method

.method static d(Landroid/content/Context;)J
    .locals 4

    invoke-static {p0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GT_APP_ID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/t;->y:Z

    return p0
.end method

.method static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-class v0, Lcom/onesignal/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/onesignal/t;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/t;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/onesignal/t;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/t;->H:Z

    return p0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static f()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v1, v1, Lcom/onesignal/t$a;->f:Lcom/onesignal/t$g;

    sget-object v2, Lcom/onesignal/t$g;->c:Lcom/onesignal/t$g;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/t;->G:Z

    return p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_APP_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static g()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v1, v1, Lcom/onesignal/t$a;->f:Lcom/onesignal/t$g;

    sget-object v2, Lcom/onesignal/t$g;->b:Lcom/onesignal/t$g;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static h()J
    .locals 4

    sget-wide v0, Lcom/onesignal/t;->p:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_UNSENT_ACTIVE_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/onesignal/t;->p:J

    :cond_0
    sget-object v0, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/onesignal/t;->p:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-wide v0, Lcom/onesignal/t;->p:J

    return-wide v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/onesignal/t;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GT_PLAYER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static i()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/t;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/t;->I:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(J)V

    return-void
.end method

.method static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/onesignal/t;->J()V

    return-void
.end method

.method static synthetic l()I
    .locals 1

    sget v0, Lcom/onesignal/t;->l:I

    return v0
.end method

.method static synthetic m()I
    .locals 1

    sget v0, Lcom/onesignal/t;->K:I

    return v0
.end method

.method static synthetic n()I
    .locals 2

    sget v0, Lcom/onesignal/t;->K:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/t;->K:I

    return v0
.end method

.method static synthetic o()V
    .locals 0

    invoke-static {}, Lcom/onesignal/t;->G()V

    return-void
.end method

.method static synthetic p()V
    .locals 0

    invoke-static {}, Lcom/onesignal/t;->F()V

    return-void
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Lcom/onesignal/d;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->s:Lcom/onesignal/d;

    return-object v0
.end method

.method static synthetic s()I
    .locals 1

    invoke-static {}, Lcom/onesignal/t;->I()I

    move-result v0

    return v0
.end method

.method static synthetic t()I
    .locals 1

    sget v0, Lcom/onesignal/t;->t:I

    return v0
.end method

.method static synthetic u()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->J:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic v()Lcom/onesignal/s;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->u:Lcom/onesignal/s;

    return-object v0
.end method

.method static synthetic w()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->A:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic x()Ljava/lang/Double;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->B:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic y()Ljava/lang/Float;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->C:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic z()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/onesignal/t;->D:Ljava/lang/Integer;

    return-object v0
.end method
