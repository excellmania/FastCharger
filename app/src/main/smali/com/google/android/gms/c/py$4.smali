.class Lcom/google/android/gms/c/py$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/so;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/py;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/il;Lcom/google/android/gms/c/px;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/so",
        "<",
        "Lcom/google/android/gms/c/ls;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/py;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ls;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/c/kq;->i:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/ls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/py$4;->a(Lcom/google/android/gms/c/ls;)V

    return-void
.end method
