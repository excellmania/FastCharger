.class Lhizli/batarya/sarjetme/app/MainActivity$5$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/MainActivity$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhizli/batarya/sarjetme/app/MainActivity$5;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/MainActivity$5;I)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iput p2, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    new-instance v1, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;

    invoke-direct {v1, p0}, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;-><init>(Lhizli/batarya/sarjetme/app/MainActivity$5$1;)V

    invoke-virtual {v0, v1}, Lhizli/batarya/sarjetme/app/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
