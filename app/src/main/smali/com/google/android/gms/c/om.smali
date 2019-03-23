.class public Lcom/google/android/gms/c/om;
.super Lcom/google/android/gms/c/oh;

# interfaces
.implements Lcom/google/android/gms/c/ts$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/c/oh;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/c/om;->e:Lcom/google/android/gms/c/pj;

    iget v0, v0, Lcom/google/android/gms/c/pj;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/om;->c:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$a;)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/om;->f()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/om;->c:Lcom/google/android/gms/c/tr;

    iget-object v1, p0, Lcom/google/android/gms/c/om;->e:Lcom/google/android/gms/c/pj;

    iget-object v1, v1, Lcom/google/android/gms/c/pj;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/c/om;->e:Lcom/google/android/gms/c/pj;

    iget-object v2, v2, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/c/tr;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 0

    return-void
.end method
