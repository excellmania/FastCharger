.class public final Lcom/google/android/gms/c/pi;
.super Lcom/google/android/gms/c/pq$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/c/pd$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/pd$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/pq$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/c/pi;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/pj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/pi;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/pd$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/c/pd$a;->a(Lcom/google/android/gms/c/pj;)V

    :cond_0
    return-void
.end method
