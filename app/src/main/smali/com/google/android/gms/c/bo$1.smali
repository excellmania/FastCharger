.class Lcom/google/android/gms/c/bo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ci;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/ci",
        "<",
        "Lcom/google/android/gms/c/bx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/bo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/bo$1;->a:Lcom/google/android/gms/c/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/bo$1;->a:Lcom/google/android/gms/c/bo;

    invoke-static {v0}, Lcom/google/android/gms/c/bo;->a(Lcom/google/android/gms/c/bo;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/c/bx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/bo$1;->a:Lcom/google/android/gms/c/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/c/bo;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/bx;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/bo$1;->b()Lcom/google/android/gms/c/bx;

    move-result-object v0

    return-object v0
.end method
