.class Lcom/google/android/gms/c/pt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/pt;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/rv$a;

.field final synthetic b:Lcom/google/android/gms/c/pt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/pt;Lcom/google/android/gms/c/rv$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pt$1;->b:Lcom/google/android/gms/c/pt;

    iput-object p2, p0, Lcom/google/android/gms/c/pt$1;->a:Lcom/google/android/gms/c/rv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/pt$1;->b:Lcom/google/android/gms/c/pt;

    invoke-static {v0}, Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/pb$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/pt$1;->a:Lcom/google/android/gms/c/rv$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/pb$a;->a(Lcom/google/android/gms/c/rv$a;)V

    iget-object v0, p0, Lcom/google/android/gms/c/pt$1;->b:Lcom/google/android/gms/c/pt;

    invoke-static {v0}, Lcom/google/android/gms/c/pt;->b(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/lw$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pt$1;->b:Lcom/google/android/gms/c/pt;

    invoke-static {v0}, Lcom/google/android/gms/c/pt;->b(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/lw$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw$c;->d_()V

    iget-object v0, p0, Lcom/google/android/gms/c/pt$1;->b:Lcom/google/android/gms/c/pt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pt;Lcom/google/android/gms/c/lw$c;)Lcom/google/android/gms/c/lw$c;

    :cond_0
    return-void
.end method