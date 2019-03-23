.class public abstract Lcom/google/android/gms/c/pe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/pd$a;
.implements Lcom/google/android/gms/c/sl;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/pe$b;,
        Lcom/google/android/gms/c/pe$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/pd$a;",
        "Lcom/google/android/gms/c/sl",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/tk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/c/pd$a;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/pe;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/c/pe;->a:Lcom/google/android/gms/c/tk;

    iput-object p2, p0, Lcom/google/android/gms/c/pe;->b:Lcom/google/android/gms/c/pd$a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/google/android/gms/c/pj;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/pe;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/pe;->b:Lcom/google/android/gms/c/pd$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/pd$a;->a(Lcom/google/android/gms/c/pj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/google/android/gms/c/pp;Lcom/google/android/gms/c/pg;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/c/pi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/pi;-><init>(Lcom/google/android/gms/c/pd$a;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/c/pp;->a(Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/pq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service."

    invoke-static {v2, v1}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/c/ry;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/c/pe;->b:Lcom/google/android/gms/c/pd$a;

    new-instance v2, Lcom/google/android/gms/c/pj;

    invoke-direct {v2, v0}, Lcom/google/android/gms/c/pj;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/c/pd$a;->a(Lcom/google/android/gms/c/pj;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/c/ry;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/c/ry;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/c/ry;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/c/ry;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public abstract b()Lcom/google/android/gms/c/pp;
.end method

.method public c()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->b()Lcom/google/android/gms/c/pp;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pe;->b:Lcom/google/android/gms/c/pd$a;

    new-instance v1, Lcom/google/android/gms/c/pj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/pj;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/pd$a;->a(Lcom/google/android/gms/c/pj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->a()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/pe;->a:Lcom/google/android/gms/c/tk;

    new-instance v2, Lcom/google/android/gms/c/pe$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/pe$1;-><init>(Lcom/google/android/gms/c/pe;Lcom/google/android/gms/c/pp;)V

    new-instance v0, Lcom/google/android/gms/c/pe$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/pe$2;-><init>(Lcom/google/android/gms/c/pe;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/c/tk;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->a()V

    return-void
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/pe;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
