.class Lcom/google/android/gms/c/ah$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ah;->a(Lcom/google/android/gms/c/dh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/dh;

.field final synthetic b:Lcom/google/android/gms/c/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ah;Lcom/google/android/gms/c/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ah$1;->b:Lcom/google/android/gms/c/ah;

    iput-object p2, p0, Lcom/google/android/gms/c/ah$1;->a:Lcom/google/android/gms/c/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/ah$1;->b:Lcom/google/android/gms/c/ah;

    iget-object v1, p0, Lcom/google/android/gms/c/ah$1;->a:Lcom/google/android/gms/c/dh;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/ah;->a(Lcom/google/android/gms/c/ah;Lcom/google/android/gms/c/dh;)V

    return-void
.end method
