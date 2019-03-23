.class Lcom/onesignal/SyncService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/SyncService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/SyncService;


# direct methods
.method constructor <init>(Lcom/onesignal/SyncService;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/SyncService$1;->a:Lcom/onesignal/SyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/SyncService$1;->a:Lcom/onesignal/SyncService;

    invoke-virtual {v0}, Lcom/onesignal/SyncService;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/onesignal/t;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/t;->a:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/t;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/w;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/w;->a(Z)V

    iget-object v0, p0, Lcom/onesignal/SyncService$1;->a:Lcom/onesignal/SyncService;

    invoke-static {v0}, Lcom/onesignal/SyncService;->a(Lcom/onesignal/SyncService;)V

    iget-object v0, p0, Lcom/onesignal/SyncService$1;->a:Lcom/onesignal/SyncService;

    invoke-virtual {v0}, Lcom/onesignal/SyncService;->stopSelf()V

    goto :goto_0
.end method
