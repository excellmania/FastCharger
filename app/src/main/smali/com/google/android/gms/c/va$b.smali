.class public Lcom/google/android/gms/c/va$b;
.super Lcom/google/android/gms/c/va;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/c/vf$a",
        "<+",
        "Lcom/google/android/gms/common/api/f;",
        "Lcom/google/android/gms/common/api/a$c;",
        ">;>",
        "Lcom/google/android/gms/c/va;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/google/android/gms/c/vf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/c/vf$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/va;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/c/va$b;->b:Lcom/google/android/gms/c/vf$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/f;Z)V
    .locals 1
    .param p1    # Lcom/google/android/gms/c/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/c/va$b;->b:Lcom/google/android/gms/c/vf$a;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/c/f;->a(Lcom/google/android/gms/c/vh;Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/p$a",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/va$b;->b:Lcom/google/android/gms/c/vf$a;

    invoke-virtual {p1}, Lcom/google/android/gms/c/p$a;->b()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/vf$a;->b(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/c/va$b;->b:Lcom/google/android/gms/c/vf$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/vf$a;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
