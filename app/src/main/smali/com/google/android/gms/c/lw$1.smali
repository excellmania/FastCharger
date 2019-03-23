.class Lcom/google/android/gms/c/lw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/lw;->c(Lcom/google/android/gms/c/cm;)Lcom/google/android/gms/c/lw$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/cm;

.field final synthetic b:Lcom/google/android/gms/c/lw$d;

.field final synthetic c:Lcom/google/android/gms/c/lw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lw;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/lw$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    iput-object p2, p0, Lcom/google/android/gms/c/lw$1;->a:Lcom/google/android/gms/c/cm;

    iput-object p3, p0, Lcom/google/android/gms/c/lw$1;->b:Lcom/google/android/gms/c/lw$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->a(Lcom/google/android/gms/c/lw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v2}, Lcom/google/android/gms/c/lw;->b(Lcom/google/android/gms/c/lw;)Lcom/google/android/gms/c/tc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/lw$1;->a:Lcom/google/android/gms/c/cm;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/c/lw;->a(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/cm;)Lcom/google/android/gms/c/ls;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/lw$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/c/lw$1$1;-><init>(Lcom/google/android/gms/c/lw$1;Lcom/google/android/gms/c/ls;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ls;->a(Lcom/google/android/gms/c/ls$a;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/c/lw$1$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/lw$1$2;-><init>(Lcom/google/android/gms/c/lw$1;Lcom/google/android/gms/c/ls;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    new-instance v1, Lcom/google/android/gms/c/sv;

    invoke-direct {v1}, Lcom/google/android/gms/c/sv;-><init>()V

    new-instance v2, Lcom/google/android/gms/c/lw$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/c/lw$1$3;-><init>(Lcom/google/android/gms/c/lw$1;Lcom/google/android/gms/c/ls;Lcom/google/android/gms/c/sv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/c/sv;->a(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->f(Lcom/google/android/gms/c/lw;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->f(Lcom/google/android/gms/c/lw;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/google/android/gms/c/sj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/lw$1$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/lw$1$4;-><init>(Lcom/google/android/gms/c/lw$1;Lcom/google/android/gms/c/ls;)V

    sget v0, Lcom/google/android/gms/c/lw$a;->a:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->f(Lcom/google/android/gms/c/lw;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->f(Lcom/google/android/gms/c/lw;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ls;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/c/lw$1;->c:Lcom/google/android/gms/c/lw;

    invoke-static {v1}, Lcom/google/android/gms/c/lw;->f(Lcom/google/android/gms/c/lw;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ls;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
