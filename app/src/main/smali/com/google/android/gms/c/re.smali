.class public Lcom/google/android/gms/c/re;
.super Lcom/google/android/gms/c/ri$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private volatile a:Lcom/google/android/gms/c/rc;

.field private volatile b:Lcom/google/android/gms/c/rf;

.field private volatile c:Lcom/google/android/gms/c/rd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/rd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/ri$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->a:Lcom/google/android/gms/c/rc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->a:Lcom/google/android/gms/c/rc;

    invoke-interface {v0}, Lcom/google/android/gms/c/rc;->g()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/a/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->a:Lcom/google/android/gms/c/rc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->a:Lcom/google/android/gms/c/rc;

    invoke-interface {v0, p2}, Lcom/google/android/gms/c/rc;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/c/rk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0, p2}, Lcom/google/android/gms/c/rd;->b(Lcom/google/android/gms/c/rk;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/gms/c/rc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/re;->a:Lcom/google/android/gms/c/rc;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/rf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/re;->b:Lcom/google/android/gms/c/rf;

    return-void
.end method

.method public b(Lcom/google/android/gms/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/re;->b:Lcom/google/android/gms/c/rf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->b:Lcom/google/android/gms/c/rf;

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/rf;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/gms/a/a;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/re;->b:Lcom/google/android/gms/c/rf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->b:Lcom/google/android/gms/c/rf;

    invoke-static {p1}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/c/rf;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0}, Lcom/google/android/gms/c/rd;->L()V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0}, Lcom/google/android/gms/c/rd;->M()V

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0}, Lcom/google/android/gms/c/rd;->N()V

    :cond_0
    return-void
.end method

.method public f(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0}, Lcom/google/android/gms/c/rd;->O()V

    :cond_0
    return-void
.end method

.method public g(Lcom/google/android/gms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/re;->c:Lcom/google/android/gms/c/rd;

    invoke-interface {v0}, Lcom/google/android/gms/c/rd;->P()V

    :cond_0
    return-void
.end method
