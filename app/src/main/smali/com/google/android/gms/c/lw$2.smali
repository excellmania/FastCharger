.class Lcom/google/android/gms/c/lw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/lw;->a(Lcom/google/android/gms/c/cm;)Lcom/google/android/gms/c/lw$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/tk$c",
        "<",
        "Lcom/google/android/gms/c/ls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/lw$d;

.field final synthetic b:Lcom/google/android/gms/c/lw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lw;Lcom/google/android/gms/c/lw$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    iput-object p2, p0, Lcom/google/android/gms/c/lw$2;->a:Lcom/google/android/gms/c/lw$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ls;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    invoke-static {v0}, Lcom/google/android/gms/c/lw;->c(Lcom/google/android/gms/c/lw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/c/lw;->a(Lcom/google/android/gms/c/lw;I)I

    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    invoke-static {v0}, Lcom/google/android/gms/c/lw;->g(Lcom/google/android/gms/c/lw;)Lcom/google/android/gms/c/lw$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->a:Lcom/google/android/gms/c/lw$d;

    iget-object v2, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    invoke-static {v2}, Lcom/google/android/gms/c/lw;->g(Lcom/google/android/gms/c/lw;)Lcom/google/android/gms/c/lw$d;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    invoke-static {v0}, Lcom/google/android/gms/c/lw;->g(Lcom/google/android/gms/c/lw;)Lcom/google/android/gms/c/lw$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw$d;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/lw$2;->b:Lcom/google/android/gms/c/lw;

    iget-object v2, p0, Lcom/google/android/gms/c/lw$2;->a:Lcom/google/android/gms/c/lw$d;

    invoke-static {v0, v2}, Lcom/google/android/gms/c/lw;->a(Lcom/google/android/gms/c/lw;Lcom/google/android/gms/c/lw$d;)Lcom/google/android/gms/c/lw$d;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/ls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/lw$2;->a(Lcom/google/android/gms/c/ls;)V

    return-void
.end method
