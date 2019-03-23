.class Lcom/google/android/gms/c/he$4;
.super Lcom/google/android/gms/c/he$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/he;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;)Lcom/google/android/gms/c/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/c/he$a",
        "<",
        "Lcom/google/android/gms/c/hl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/c/mo;

.field final synthetic d:Lcom/google/android/gms/c/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/he;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/he$4;->d:Lcom/google/android/gms/c/he;

    iput-object p2, p0, Lcom/google/android/gms/c/he$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/c/he$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/c/he$4;->c:Lcom/google/android/gms/c/mo;

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/he$a;-><init>(Lcom/google/android/gms/c/he;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/hl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/he$4;->d:Lcom/google/android/gms/c/he;

    invoke-static {v0}, Lcom/google/android/gms/c/he;->c(Lcom/google/android/gms/c/he;)Lcom/google/android/gms/c/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/he$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/c/he$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/c/he$4;->c:Lcom/google/android/gms/c/mo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/c/gt;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;)Lcom/google/android/gms/c/hl;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/he$4;->d:Lcom/google/android/gms/c/he;

    iget-object v1, p0, Lcom/google/android/gms/c/he$4;->a:Landroid/content/Context;

    const-string v2, "native_ad"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/he;->a(Lcom/google/android/gms/c/he;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/c/ib;

    invoke-direct {v0}, Lcom/google/android/gms/c/ib;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/c/hq;)Lcom/google/android/gms/c/hl;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/he$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/he$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/c/he$4;->c:Lcom/google/android/gms/c/mo;

    const v3, 0x99dea0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/c/hq;->createAdLoaderBuilder(Lcom/google/android/gms/a/a;Ljava/lang/String;Lcom/google/android/gms/c/mo;I)Lcom/google/android/gms/c/hl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/he$4;->a()Lcom/google/android/gms/c/hl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/c/hq;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/he$4;->a(Lcom/google/android/gms/c/hq;)Lcom/google/android/gms/c/hl;

    move-result-object v0

    return-object v0
.end method
