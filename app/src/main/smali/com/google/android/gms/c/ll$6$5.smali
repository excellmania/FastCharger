.class Lcom/google/android/gms/c/ll$6$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/ll$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ll$6;->a(Lcom/google/android/gms/c/qq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/qq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ll$6;Lcom/google/android/gms/c/qq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/c/ll$6$5;->a:Lcom/google/android/gms/c/qq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/lm;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/c/lm;->f:Lcom/google/android/gms/c/qt;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/c/lm;->f:Lcom/google/android/gms/c/qt;

    iget-object v1, p0, Lcom/google/android/gms/c/ll$6$5;->a:Lcom/google/android/gms/c/qq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/qt;->a(Lcom/google/android/gms/c/qq;)V

    :cond_0
    return-void
.end method
