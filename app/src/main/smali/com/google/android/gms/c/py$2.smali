.class final Lcom/google/android/gms/c/py$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/py;->a(Landroid/content/Context;Lcom/google/android/gms/c/lw;Lcom/google/android/gms/c/il;Lcom/google/android/gms/c/px;Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/lw;

.field final synthetic b:Lcom/google/android/gms/c/qb;

.field final synthetic c:Lcom/google/android/gms/c/jb;

.field final synthetic d:Lcom/google/android/gms/c/iz;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lw;Lcom/google/android/gms/c/qb;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/c/iz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/py$2;->a:Lcom/google/android/gms/c/lw;

    iput-object p2, p0, Lcom/google/android/gms/c/py$2;->b:Lcom/google/android/gms/c/qb;

    iput-object p3, p0, Lcom/google/android/gms/c/py$2;->c:Lcom/google/android/gms/c/jb;

    iput-object p4, p0, Lcom/google/android/gms/c/py$2;->d:Lcom/google/android/gms/c/iz;

    iput-object p5, p0, Lcom/google/android/gms/c/py$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/c/py$2;->a:Lcom/google/android/gms/c/lw;

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw;->a()Lcom/google/android/gms/c/lw$c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/py$2;->b:Lcom/google/android/gms/c/qb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/qb;->a(Lcom/google/android/gms/c/lw$c;)V

    iget-object v1, p0, Lcom/google/android/gms/c/py$2;->c:Lcom/google/android/gms/c/jb;

    iget-object v2, p0, Lcom/google/android/gms/c/py$2;->d:Lcom/google/android/gms/c/iz;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/c/jb;->a(Lcom/google/android/gms/c/iz;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/c/py$2;->c:Lcom/google/android/gms/c/jb;

    invoke-virtual {v1}, Lcom/google/android/gms/c/jb;->a()Lcom/google/android/gms/c/iz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/c/py$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/c/py$2$1;-><init>(Lcom/google/android/gms/c/py$2;Lcom/google/android/gms/c/iz;)V

    new-instance v1, Lcom/google/android/gms/c/py$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/py$2$2;-><init>(Lcom/google/android/gms/c/py$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    return-void
.end method
