.class public Lcom/google/android/gms/c/q;
.super Lcom/google/android/gms/c/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Lcom/google/android/gms/c/h;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/m",
            "<TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/c/q;->a:Lcom/google/android/gms/common/api/m;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/q;->a:Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/m;->d()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/c/vf$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/c/vf$a",
            "<+",
            "Lcom/google/android/gms/common/api/f;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/q;->a:Lcom/google/android/gms/common/api/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/c/vf$a;)Lcom/google/android/gms/c/vf$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/al;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/gms/c/al;)V
    .locals 0

    return-void
.end method
