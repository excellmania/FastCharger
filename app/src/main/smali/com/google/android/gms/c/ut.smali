.class public Lcom/google/android/gms/c/ut;
.super Lcom/google/android/gms/common/api/m;

# interfaces
.implements Lcom/google/android/gms/c/uq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/ut$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/m",
        "<",
        "Lcom/google/android/gms/common/api/a$a$b;",
        ">;",
        "Lcom/google/android/gms/c/uq;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/c/up;->c:Lcom/google/android/gms/common/api/a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/c/vb;

    invoke-direct {v2}, Lcom/google/android/gms/c/vb;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/c/ai;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/c/uq;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/c/ut;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/ut;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static b(Lcom/google/android/gms/c/ur;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ur;->j:Lcom/google/android/gms/c/up$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ur;->i:Lcom/google/android/gms/c/eu$c;

    iget-object v0, v0, Lcom/google/android/gms/c/eu$c;->k:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ur;->i:Lcom/google/android/gms/c/eu$c;

    iget-object v1, p0, Lcom/google/android/gms/c/ur;->j:Lcom/google/android/gms/c/up$c;

    invoke-interface {v1}, Lcom/google/android/gms/c/up$c;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/c/eu$c;->k:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/ur;->k:Lcom/google/android/gms/c/up$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/ur;->i:Lcom/google/android/gms/c/eu$c;

    iget-object v0, v0, Lcom/google/android/gms/c/eu$c;->q:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/ur;->i:Lcom/google/android/gms/c/eu$c;

    iget-object v1, p0, Lcom/google/android/gms/c/ur;->k:Lcom/google/android/gms/c/up$c;

    invoke-interface {v1}, Lcom/google/android/gms/c/up$c;->a()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/c/eu$c;->q:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/ur;->i:Lcom/google/android/gms/c/eu$c;

    invoke-static {v0}, Lcom/google/android/gms/c/eq;->a(Lcom/google/android/gms/c/eq;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/ur;->c:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ur;)Lcom/google/android/gms/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/ur;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/ut$a;

    invoke-virtual {p0}, Lcom/google/android/gms/c/ut;->c()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/c/ut$a;-><init>(Lcom/google/android/gms/c/ur;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/ut;->b(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method
