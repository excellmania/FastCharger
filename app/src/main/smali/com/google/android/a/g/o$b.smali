.class final Lcom/google/android/a/g/o$b;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/g/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/g/o;

.field private final b:Lcom/google/android/a/g/o$c;

.field private final c:Lcom/google/android/a/g/o$a;

.field private volatile d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/o;Landroid/os/Looper;Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/g/o$b;->a:Lcom/google/android/a/g/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    iput-object p4, p0, Lcom/google/android/a/g/o$b;->c:Lcom/google/android/a/g/o$a;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->a:Lcom/google/android/a/g/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o;Z)Z

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->a:Lcom/google/android/a/g/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o;Lcom/google/android/a/g/o$b;)Lcom/google/android/a/g/o$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0}, Lcom/google/android/a/g/o$c;->f()V

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/g/o$b;->b()V

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0}, Lcom/google/android/a/g/o$c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->c:Lcom/google/android/a/g/o$a;

    iget-object v1, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0, v1}, Lcom/google/android/a/g/o$a;->b(Lcom/google/android/a/g/o$c;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/a/g/o$b;->c:Lcom/google/android/a/g/o$a;

    iget-object v1, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0, v1}, Lcom/google/android/a/g/o$a;->a(Lcom/google/android/a/g/o$c;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/a/g/o$b;->c:Lcom/google/android/a/g/o$a;

    iget-object v2, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/google/android/a/g/o$a;->a(Lcom/google/android/a/g/o$c;Ljava/io/IOException;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/g/o$b;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0}, Lcom/google/android/a/g/o$c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".load()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/a/h/v;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0}, Lcom/google/android/a/g/o$c;->h()V

    invoke-static {}, Lcom/google/android/a/h/v;->a()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/a/g/o$b;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/a/g/o$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/a/g/o$b;->b:Lcom/google/android/a/g/o$c;

    invoke-interface {v0}, Lcom/google/android/a/g/o$c;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-virtual {p0, v2}, Lcom/google/android/a/g/o$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/a/g/o$d;

    invoke-direct {v1, v0}, Lcom/google/android/a/g/o$d;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/a/g/o$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/a/g/o$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method
