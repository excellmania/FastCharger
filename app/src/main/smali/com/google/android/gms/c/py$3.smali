.class final Lcom/google/android/gms/c/py$3;
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
.field final synthetic a:Lcom/google/android/gms/c/px;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/c/qb;

.field final synthetic d:Lcom/google/android/gms/c/pg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/px;Landroid/content/Context;Lcom/google/android/gms/c/qb;Lcom/google/android/gms/c/pg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/py$3;->a:Lcom/google/android/gms/c/px;

    iput-object p2, p0, Lcom/google/android/gms/c/py$3;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/c/py$3;->c:Lcom/google/android/gms/c/qb;

    iput-object p4, p0, Lcom/google/android/gms/c/py$3;->d:Lcom/google/android/gms/c/pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/py$3;->a:Lcom/google/android/gms/c/px;

    iget-object v0, v0, Lcom/google/android/gms/c/px;->e:Lcom/google/android/gms/c/qh;

    iget-object v1, p0, Lcom/google/android/gms/c/py$3;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/c/py$3;->c:Lcom/google/android/gms/c/qb;

    iget-object v3, p0, Lcom/google/android/gms/c/py$3;->d:Lcom/google/android/gms/c/pg;

    iget-object v3, v3, Lcom/google/android/gms/c/pg;->k:Lcom/google/android/gms/c/tc;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/c/qh;->a(Landroid/content/Context;Lcom/google/android/gms/c/qb;Lcom/google/android/gms/c/tc;)V

    return-void
.end method
