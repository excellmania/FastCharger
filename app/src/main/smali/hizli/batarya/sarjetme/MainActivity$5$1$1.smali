.class Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/MainActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/MainActivity$5$1;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget v1, v1, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget v1, v1, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->a:I

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    const-string v1, "Pil"

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setBottomText(Ljava/lang/String;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->b(Lhizli/batarya/sarjetme/app/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v1}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$5$1$1;->a:Lhizli/batarya/sarjetme/app/MainActivity$5$1;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5$1;->b:Lhizli/batarya/sarjetme/app/MainActivity$5;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity$5;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    const-string v1, "Pil"

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setBottomText(Ljava/lang/String;)V

    goto :goto_0
.end method
