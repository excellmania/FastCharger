.class Lcom/onesignal/w$b;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Landroid/os/Handler;

.field c:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const-string v0, "OSH_NetworkHandlerThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    iput p1, p0, Lcom/onesignal/w$b;->a:I

    invoke-virtual {p0}, Lcom/onesignal/w$b;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/onesignal/w$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    return-void
.end method

.method private d()Ljava/lang/Runnable;
    .locals 1

    iget v0, p0, Lcom/onesignal/w$b;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/onesignal/w$b$1;

    invoke-direct {v0, p0}, Lcom/onesignal/w$b$1;-><init>(Lcom/onesignal/w$b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/onesignal/w$b;->c:I

    iget-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/w$b;->d()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method c()V
    .locals 4

    iget v0, p0, Lcom/onesignal/w$b;->c:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/onesignal/w$b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onesignal/w$b;->c:I

    iget-object v0, p0, Lcom/onesignal/w$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/onesignal/w$b;->d()Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/onesignal/w$b;->c:I

    mul-int/lit16 v2, v2, 0x3a98

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
