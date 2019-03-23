.class Lcom/google/android/gms/c/qp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/qp;->a(Lcom/google/android/gms/c/qx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/qp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/qp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/qp$1;->a:Lcom/google/android/gms/c/qp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/qp$1;->a:Lcom/google/android/gms/c/qp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/qp;->a(Lcom/google/android/gms/c/qp;I)V

    return-void
.end method
