.class Lcom/google/android/gms/c/p$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/p$b;->a(Lcom/google/android/gms/common/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/a;

.field final synthetic b:Lcom/google/android/gms/c/p$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/p$b;Lcom/google/android/gms/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    iput-object p2, p0, Lcom/google/android/gms/c/p$b$1;->a:Lcom/google/android/gms/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->a:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/p$b;->a(Lcom/google/android/gms/c/p$b;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    invoke-static {v0}, Lcom/google/android/gms/c/p$b;->a(Lcom/google/android/gms/c/p$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    invoke-static {v0}, Lcom/google/android/gms/c/p$b;->b(Lcom/google/android/gms/c/p$b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    invoke-static {v0}, Lcom/google/android/gms/c/p$b;->a(Lcom/google/android/gms/c/p$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/y;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    iget-object v0, v0, Lcom/google/android/gms/c/p$b;->a:Lcom/google/android/gms/c/p;

    invoke-static {v0}, Lcom/google/android/gms/c/p;->j(Lcom/google/android/gms/c/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/p$b$1;->b:Lcom/google/android/gms/c/p$b;

    invoke-static {v1}, Lcom/google/android/gms/c/p$b;->c(Lcom/google/android/gms/c/p$b;)Lcom/google/android/gms/c/vc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/p$a;

    iget-object v1, p0, Lcom/google/android/gms/c/p$b$1;->a:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/p$a;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0
.end method
