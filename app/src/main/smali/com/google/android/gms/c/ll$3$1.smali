.class Lcom/google/android/gms/c/ll$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ll$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ll$3;->a(Lcom/google/android/gms/c/nv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/nv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ll$3;Lcom/google/android/gms/c/nv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/c/ll$3$1;->a:Lcom/google/android/gms/c/nv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/lm;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/c/lm;->c:Lcom/google/android/gms/c/nw;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/c/lm;->c:Lcom/google/android/gms/c/nw;

    iget-object v1, p0, Lcom/google/android/gms/c/ll$3$1;->a:Lcom/google/android/gms/c/nv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/nw;->a(Lcom/google/android/gms/c/nv;)V

    :cond_0
    return-void
.end method