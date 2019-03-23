.class Lcom/google/android/gms/c/ts$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ts;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/ts;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ts;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ts$1;->a:Lcom/google/android/gms/c/ts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ts$1;->a:Lcom/google/android/gms/c/ts;

    iget-object v0, v0, Lcom/google/android/gms/c/ts;->b:Lcom/google/android/gms/c/rp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/ts$1;->a:Lcom/google/android/gms/c/ts;

    iget-object v0, v0, Lcom/google/android/gms/c/ts;->b:Lcom/google/android/gms/c/rp;

    iget-object v0, p0, Lcom/google/android/gms/c/ts$1;->a:Lcom/google/android/gms/c/ts;

    iget-object v0, v0, Lcom/google/android/gms/c/ts;->a:Lcom/google/android/gms/c/tr;

    :cond_0
    return-void
.end method
