.class Lcom/google/android/gms/c/lw$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/lw$c;->d_()V
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
.field final synthetic a:Lcom/google/android/gms/c/lw$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lw$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/lw$c$2;->a:Lcom/google/android/gms/c/lw$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/lx;)V
    .locals 1

    const-string v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/lw$c$2;->a:Lcom/google/android/gms/c/lw$c;

    invoke-static {v0}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/lw$c;)Lcom/google/android/gms/c/lw$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw$d;->f_()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/lx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/lw$c$2;->a(Lcom/google/android/gms/c/lx;)V

    return-void
.end method
