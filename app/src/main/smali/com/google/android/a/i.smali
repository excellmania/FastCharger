.class final Lcom/google/android/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/h;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/a/j;

.field private final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/a/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[[Lcom/google/android/a/r;

.field private final e:[I

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Init 1.5.8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/i;->f:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/i;->g:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-array v0, p1, [[Lcom/google/android/a/r;

    iput-object v0, p0, Lcom/google/android/a/i;->d:[[Lcom/google/android/a/r;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/a/i;->e:[I

    new-instance v0, Lcom/google/android/a/i$1;

    invoke-direct {v0, p0}, Lcom/google/android/a/i$1;-><init>(Lcom/google/android/a/i;)V

    iput-object v0, p0, Lcom/google/android/a/i;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/a/j;

    iget-object v1, p0, Lcom/google/android/a/i;->a:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/google/android/a/i;->f:Z

    iget-object v3, p0, Lcom/google/android/a/i;->e:[I

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/j;-><init>(Landroid/os/Handler;Z[III)V

    iput-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/j;->a(J)V

    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/a/i;->d:[[Lcom/google/android/a/r;

    iget-object v2, p0, Lcom/google/android/a/i;->d:[[Lcom/google/android/a/r;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/a/i;->g:I

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h$c;

    iget-boolean v2, p0, Lcom/google/android/a/i;->f:Z

    iget v3, p0, Lcom/google/android/a/i;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/h$c;->onPlayerStateChanged(ZI)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/a/i;->g:I

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h$c;

    iget-boolean v2, p0, Lcom/google/android/a/i;->f:Z

    iget v3, p0, Lcom/google/android/a/i;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/h$c;->onPlayerStateChanged(ZI)V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/google/android/a/i;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/i;->h:I

    iget v0, p0, Lcom/google/android/a/i;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h$c;

    invoke-interface {v0}, Lcom/google/android/a/h$c;->onPlayWhenReadyCommitted()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/a/g;

    iget-object v1, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/h$c;

    invoke-interface {v1, v0}, Lcom/google/android/a/h$c;->onPlayerError(Lcom/google/android/a/g;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/j;->a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/android/a/h$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/a/i;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/a/i;->f:Z

    iget v0, p0, Lcom/google/android/a/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/i;->h:I

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0, p1}, Lcom/google/android/a/j;->a(Z)V

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h$c;

    iget v2, p0, Lcom/google/android/a/i;->g:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/a/h$c;->onPlayerStateChanged(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs a([Lcom/google/android/a/z;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/i;->d:[[Lcom/google/android/a/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0, p1}, Lcom/google/android/a/j;->a([Lcom/google/android/a/z;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/i;->f:Z

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0}, Lcom/google/android/a/j;->d()V

    iget-object v0, p0, Lcom/google/android/a/i;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/google/android/a/h$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/i;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0}, Lcom/google/android/a/j;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0}, Lcom/google/android/a/j;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 10

    const-wide/16 v0, 0x64

    const-wide/16 v8, -0x1

    invoke-virtual {p0}, Lcom/google/android/a/i;->f()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/a/i;->c()J

    move-result-wide v4

    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    :goto_1
    long-to-int v0, v0

    goto :goto_0

    :cond_2
    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_1
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/i;->b:Lcom/google/android/a/j;

    invoke-virtual {v0}, Lcom/google/android/a/j;->b()J

    move-result-wide v0

    return-wide v0
.end method
