.class public Lcom/google/android/gms/c/vi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/google/android/gms/c/vj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/vi;->a:Lcom/google/android/gms/common/api/a;

    iput p2, p0, Lcom/google/android/gms/c/vi;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/vi;->c:Lcom/google/android/gms/c/vj;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/vi;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/vi;->c:Lcom/google/android/gms/c/vj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/vj;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/c/vi;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/vi;->c:Lcom/google/android/gms/c/vj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/vj;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/c/vj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/vi;->c:Lcom/google/android/gms/c/vj;

    return-void
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/c/vi;->a()V

    iget-object v0, p0, Lcom/google/android/gms/c/vi;->c:Lcom/google/android/gms/c/vj;

    iget-object v1, p0, Lcom/google/android/gms/c/vi;->a:Lcom/google/android/gms/common/api/a;

    iget v2, p0, Lcom/google/android/gms/c/vi;->b:I

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/c/vj;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;I)V

    return-void
.end method
