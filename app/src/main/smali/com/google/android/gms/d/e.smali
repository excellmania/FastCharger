.class public Lcom/google/android/gms/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/d/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/d/j",
            "<TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/d/j;

    invoke-direct {v0}, Lcom/google/android/gms/d/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/d/d;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/d/d",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/j;

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/j;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)Z
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/d/e;->a:Lcom/google/android/gms/d/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/d/j;->b(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
