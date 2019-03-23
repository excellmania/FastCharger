.class Lcom/google/android/gms/c/lt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/lt;->a(Landroid/content/Context;Lcom/google/android/gms/c/tc;Ljava/lang/String;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/ads/internal/d;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/c/tc;

.field final synthetic c:Lcom/google/android/gms/c/lt$a;

.field final synthetic d:Lcom/google/android/gms/c/cm;

.field final synthetic e:Lcom/google/android/gms/ads/internal/d;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/c/lt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lt;Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/lt$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/ads/internal/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/lt$1;->g:Lcom/google/android/gms/c/lt;

    iput-object p2, p0, Lcom/google/android/gms/c/lt$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/c/lt$1;->b:Lcom/google/android/gms/c/tc;

    iput-object p4, p0, Lcom/google/android/gms/c/lt$1;->c:Lcom/google/android/gms/c/lt$a;

    iput-object p5, p0, Lcom/google/android/gms/c/lt$1;->d:Lcom/google/android/gms/c/cm;

    iput-object p6, p0, Lcom/google/android/gms/c/lt$1;->e:Lcom/google/android/gms/ads/internal/d;

    iput-object p7, p0, Lcom/google/android/gms/c/lt$1;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/c/lt$1;->g:Lcom/google/android/gms/c/lt;

    iget-object v1, p0, Lcom/google/android/gms/c/lt$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/c/lt$1;->b:Lcom/google/android/gms/c/tc;

    iget-object v3, p0, Lcom/google/android/gms/c/lt$1;->c:Lcom/google/android/gms/c/lt$a;

    iget-object v4, p0, Lcom/google/android/gms/c/lt$1;->d:Lcom/google/android/gms/c/cm;

    iget-object v5, p0, Lcom/google/android/gms/c/lt$1;->e:Lcom/google/android/gms/ads/internal/d;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/c/lt;->a(Lcom/google/android/gms/c/lt;Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/lt$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/ls;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/lt$1;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/ls;->b(Ljava/lang/String;)V

    return-void
.end method
