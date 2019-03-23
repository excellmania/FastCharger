.class public Lcom/onesignal/SyncService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static a()V
    .locals 2

    sget-object v0, Lcom/onesignal/t$d;->g:Lcom/onesignal/t$d;

    const-string v1, "Starting SyncService:onTaskRemoved."

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    invoke-virtual {v0}, Lcom/onesignal/a$c;->b()V

    invoke-static {}, Lcom/onesignal/w;->a()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/t;->a(Z)V

    sget-object v0, Lcom/onesignal/t$d;->g:Lcom/onesignal/t$d;

    const-string v1, "Completed SyncService:onTaskRemoved."

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/onesignal/SyncService;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/SyncService;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/onesignal/t;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/onesignal/t;->a(JZ)V

    goto :goto_0
.end method


# virtual methods
.method b()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/onesignal/SyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-boolean v0, Lcom/onesignal/t;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/SyncService$1;

    invoke-direct {v1, p0}, Lcom/onesignal/SyncService$1;-><init>(Lcom/onesignal/SyncService;)V

    const-string v2, "OS_SYNCSRV_ONCREATE"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    sget-boolean v0, Lcom/onesignal/t;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {}, Lcom/onesignal/SyncService;->a()V

    invoke-virtual {p0}, Lcom/onesignal/SyncService;->stopSelf()V

    invoke-virtual {p0}, Lcom/onesignal/SyncService;->b()V

    return-void
.end method
