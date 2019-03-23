.class Lcom/google/android/gms/c/nf$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/nf;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/nf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/nf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/nf$1;->a:Lcom/google/android/gms/c/nf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/nf$1;->a:Lcom/google/android/gms/c/nf;

    invoke-virtual {v0}, Lcom/google/android/gms/c/nf;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/nf$1;->a:Lcom/google/android/gms/c/nf;

    invoke-static {v2}, Lcom/google/android/gms/c/nf;->a(Lcom/google/android/gms/c/nf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/c/sj;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
