.class Lcom/google/android/gms/c/fp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/fp;-><init>(Lcom/google/android/gms/c/fm;Lcom/google/android/gms/c/lw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/tk$c",
        "<",
        "Lcom/google/android/gms/c/lx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/fp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/fp$1;->a:Lcom/google/android/gms/c/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/lx;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/fp$1;->a:Lcom/google/android/gms/c/fp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/fp;->a(Lcom/google/android/gms/c/fp;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/c/fp$1;->a:Lcom/google/android/gms/c/fp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/fp;->a(Lcom/google/android/gms/c/lx;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/lx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/fp$1;->a(Lcom/google/android/gms/c/lx;)V

    return-void
.end method
