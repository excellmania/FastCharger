.class public abstract Lcom/google/android/gms/c/mw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/mw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/c/mw",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/uh$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/gms/c/oy$a;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/google/android/gms/c/nx;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/google/android/gms/c/qz;

.field private m:Lcom/google/android/gms/c/dk$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/c/oy$a;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/c/uh$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/uh$a;

    invoke-direct {v0}, Lcom/google/android/gms/c/uh$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/c/mw;->a:Lcom/google/android/gms/c/uh$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/mw;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/c/mw;->i:Z

    iput-boolean v2, p0, Lcom/google/android/gms/c/mw;->j:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/c/mw;->k:J

    iput-object v1, p0, Lcom/google/android/gms/c/mw;->m:Lcom/google/android/gms/c/dk$a;

    iput p1, p0, Lcom/google/android/gms/c/mw;->b:I

    iput-object p2, p0, Lcom/google/android/gms/c/mw;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/c/mw;->e:Lcom/google/android/gms/c/oy$a;

    new-instance v0, Lcom/google/android/gms/c/fw;

    invoke-direct {v0}, Lcom/google/android/gms/c/fw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/mw;->a(Lcom/google/android/gms/c/qz;)Lcom/google/android/gms/c/mw;

    invoke-static {p2}, Lcom/google/android/gms/c/mw;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/mw;->d:I

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/c/mw;)Lcom/google/android/gms/c/uh$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->a:Lcom/google/android/gms/c/uh$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/mw;->b:I

    return v0
.end method

.method public a(Lcom/google/android/gms/c/mw;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/mw",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->m()Lcom/google/android/gms/c/mw$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/c/mw;->m()Lcom/google/android/gms/c/mw$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/c/mw;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/c/mw$a;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/c/mw$a;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/gms/c/mw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/c/mw",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/mw;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/dk$a;)Lcom/google/android/gms/c/mw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/dk$a;",
            ")",
            "Lcom/google/android/gms/c/mw",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/c/mw;->m:Lcom/google/android/gms/c/dk$a;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/nx;)Lcom/google/android/gms/c/mw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/nx;",
            ")",
            "Lcom/google/android/gms/c/mw",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/c/mw;->g:Lcom/google/android/gms/c/nx;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/qz;)Lcom/google/android/gms/c/mw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/qz;",
            ")",
            "Lcom/google/android/gms/c/mw",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/c/mw;->l:Lcom/google/android/gms/c/qz;

    return-object p0
.end method

.method protected abstract a(Lcom/google/android/gms/c/ku;)Lcom/google/android/gms/c/oy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/ku;",
            ")",
            "Lcom/google/android/gms/c/oy",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/gms/c/uc;)Lcom/google/android/gms/c/uc;
    .locals 0

    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/mw;->d:I

    return v0
.end method

.method public b(Lcom/google/android/gms/c/uc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->e:Lcom/google/android/gms/c/oy$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->e:Lcom/google/android/gms/c/oy$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/oy$a;->a(Lcom/google/android/gms/c/uc;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/c/uh$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->a:Lcom/google/android/gms/c/uh$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/c/uh$a;->a(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/c/mw;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/c/mw;->k:J

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->c:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->g:Lcom/google/android/gms/c/nx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->g:Lcom/google/android/gms/c/nx;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/nx;->b(Lcom/google/android/gms/c/mw;)V

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/c/uh$a;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/c/mw$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/c/mw$1;-><init>(Lcom/google/android/gms/c/mw;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/c/mw;->a:Lcom/google/android/gms/c/uh$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/c/uh$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->a:Lcom/google/android/gms/c/uh$a;

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/uh$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/c/mw;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/c/uh;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/c/mw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/mw;->a(Lcom/google/android/gms/c/mw;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/android/gms/c/dk$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->m:Lcom/google/android/gms/c/dk$a;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/mw;->h:Z

    return v0
.end method

.method public m()Lcom/google/android/gms/c/mw$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/c/mw$a;->b:Lcom/google/android/gms/c/mw$a;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->l:Lcom/google/android/gms/c/qz;

    invoke-interface {v0}, Lcom/google/android/gms/c/qz;->a()I

    move-result v0

    return v0
.end method

.method public o()Lcom/google/android/gms/c/qz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/mw;->l:Lcom/google/android/gms/c/qz;

    return-object v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/mw;->j:Z

    return-void
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/mw;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string v1, "0x"

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "[ ] "

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/c/mw;->m()Lcom/google/android/gms/c/mw$a;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/c/mw;->f:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
