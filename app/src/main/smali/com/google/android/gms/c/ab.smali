.class public Lcom/google/android/gms/c/ab;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/c/va;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/va;ILcom/google/android/gms/common/api/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/va;",
            "I",
            "Lcom/google/android/gms/common/api/m",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/ab;->a:Lcom/google/android/gms/c/va;

    iput p2, p0, Lcom/google/android/gms/c/ab;->b:I

    iput-object p3, p0, Lcom/google/android/gms/c/ab;->c:Lcom/google/android/gms/common/api/m;

    return-void
.end method
