.class public abstract Lcom/google/android/gms/c/ek;
.super Lcom/google/android/gms/c/eq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/c/ek",
        "<TM;>;>",
        "Lcom/google/android/gms/c/eq;"
    }
.end annotation


# instance fields
.field protected ag:Lcom/google/android/gms/c/em;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/eq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ej;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v1}, Lcom/google/android/gms/c/em;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/em;->b(I)Lcom/google/android/gms/c/en;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/c/en;->a(Lcom/google/android/gms/c/ej;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/c/ei;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->p()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/c/ei;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/c/et;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->p()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/c/ei;->a(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/c/es;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/c/es;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/c/em;

    invoke-direct {v3}, Lcom/google/android/gms/c/em;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/c/en;

    invoke-direct {v0}, Lcom/google/android/gms/c/en;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/c/em;->a(ILcom/google/android/gms/c/en;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/en;->a(Lcom/google/android/gms/c/es;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/em;->a(I)Lcom/google/android/gms/c/en;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v2}, Lcom/google/android/gms/c/em;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/c/ek;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/c/em;->b(I)Lcom/google/android/gms/c/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/c/en;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public c()Lcom/google/android/gms/c/ek;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/c/eq;->d()Lcom/google/android/gms/c/eq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/ek;

    invoke-static {p0, v0}, Lcom/google/android/gms/c/eo;->a(Lcom/google/android/gms/c/ek;Lcom/google/android/gms/c/ek;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/ek;->c()Lcom/google/android/gms/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/android/gms/c/eq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/ek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/ek;

    return-object v0
.end method
