.class public Lcom/google/android/gms/c/g;
.super Lcom/google/android/gms/c/vg;


# instance fields
.field private final e:Lcom/google/android/gms/common/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/c/vc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/c/p;


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/c/vg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/g;->e:Lcom/google/android/gms/common/util/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/g;->f:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/c/g;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/g;->f:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/c/p;->b(Lcom/google/android/gms/common/a;I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/c/vg;->b()V

    iget-object v0, p0, Lcom/google/android/gms/c/g;->f:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->b(Lcom/google/android/gms/c/g;)V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/g;->f:Lcom/google/android/gms/c/p;

    invoke-virtual {v0}, Lcom/google/android/gms/c/p;->c()V

    return-void
.end method

.method d()Lcom/google/android/gms/common/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/a",
            "<",
            "Lcom/google/android/gms/c/vc",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/g;->e:Lcom/google/android/gms/common/util/a;

    return-object v0
.end method
