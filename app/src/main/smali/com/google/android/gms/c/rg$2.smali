.class Lcom/google/android/gms/c/rg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/rg;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/rv;

.field final synthetic b:Lcom/google/android/gms/c/rg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/rg;Lcom/google/android/gms/c/rv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/rg$2;->b:Lcom/google/android/gms/c/rg;

    iput-object p2, p0, Lcom/google/android/gms/c/rg$2;->a:Lcom/google/android/gms/c/rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/rg$2;->b:Lcom/google/android/gms/c/rg;

    invoke-static {v0}, Lcom/google/android/gms/c/rg;->a(Lcom/google/android/gms/c/rg;)Lcom/google/android/gms/c/qp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/rg$2;->a:Lcom/google/android/gms/c/rv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/qp;->b(Lcom/google/android/gms/c/rv;)V

    return-void
.end method
