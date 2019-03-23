.class Lhizli/batarya/sarjetme/app/MainActivity$5;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/MainActivity;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/MainActivity;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    const-string v1, "%"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->b(Lhizli/batarya/sarjetme/app/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    invoke-direct {v1, p0, v4}, Lhizli/batarya/sarjetme/app/MainActivity$5$1;-><init>(Lhizli/batarya/sarjetme/app/MainActivity$5;I)V

    const-wide/16 v2, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
