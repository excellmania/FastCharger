.class public final Lcom/google/android/gms/c/eu$a;
.super Lcom/google/android/gms/c/ek;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/c/ek",
        "<",
        "Lcom/google/android/gms/c/eu$a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/ek;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/c/eu$a;->a()Lcom/google/android/gms/c/eu$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/eu$a;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/c/eu$a;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/c/eu$a;->ah:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/ei;)Lcom/google/android/gms/c/eu$a;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/c/ek;->a(Lcom/google/android/gms/c/ei;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/eu$a;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/c/ei;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/c/ej;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/c/eu$a;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/c/eu$a;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/c/ej;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/c/ej;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/c/ej;->a(ILjava/lang/String;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/c/ek;->a(Lcom/google/android/gms/c/ej;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/c/ek;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/c/eu$a;->a:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/c/eu$a;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/c/ej;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/c/ej;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/c/ej;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/c/ei;)Lcom/google/android/gms/c/eq;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/eu$a;->a(Lcom/google/android/gms/c/ei;)Lcom/google/android/gms/c/eu$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/android/gms/c/ek;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/eu$a;->d()Lcom/google/android/gms/c/eq;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/c/eu$a;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/eu$a;->g()Lcom/google/android/gms/c/eu$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/android/gms/c/eq;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/eu$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/eu$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/c/eu$a;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/c/eu$a;

    iget v2, p0, Lcom/google/android/gms/c/eu$a;->a:I

    iget v3, p1, Lcom/google/android/gms/c/eu$a;->a:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v2}, Lcom/google/android/gms/c/em;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v2}, Lcom/google/android/gms/c/em;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    iget-object v1, p1, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/em;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public g()Lcom/google/android/gms/c/eu$a;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/c/ek;->c()Lcom/google/android/gms/c/ek;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/eu$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/c/eu$a;->a:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v2}, Lcom/google/android/gms/c/em;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/c/eu$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/c/eu$a;->ag:Lcom/google/android/gms/c/em;

    invoke-virtual {v1}, Lcom/google/android/gms/c/em;->hashCode()I

    move-result v1

    goto :goto_2
.end method
