.class public Lcom/google/android/gms/c/oj;
.super Lcom/google/android/gms/c/oh;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private g:Lcom/google/android/gms/c/oi;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/c/oh;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/ol$a;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/c/oj;->c:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->k()Lcom/google/android/gms/c/ha;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/c/ha;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/oj;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/c/oi;

    iget-object v3, p0, Lcom/google/android/gms/c/oj;->c:Lcom/google/android/gms/c/tr;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/c/oi;-><init>(Lcom/google/android/gms/c/ts$a;Lcom/google/android/gms/c/tr;II)V

    iput-object v2, p0, Lcom/google/android/gms/c/oj;->g:Lcom/google/android/gms/c/oi;

    iget-object v0, p0, Lcom/google/android/gms/c/oj;->c:Lcom/google/android/gms/c/tr;

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$a;)V

    iget-object v0, p0, Lcom/google/android/gms/c/oj;->g:Lcom/google/android/gms/c/oi;

    iget-object v1, p0, Lcom/google/android/gms/c/oj;->e:Lcom/google/android/gms/c/pj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/oi;->a(Lcom/google/android/gms/c/pj;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/gms/c/ha;->g:I

    iget v0, v0, Lcom/google/android/gms/c/ha;->d:I

    goto :goto_0
.end method

.method protected c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/oj;->g:Lcom/google/android/gms/c/oi;

    invoke-virtual {v0}, Lcom/google/android/gms/c/oi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/oj;->g:Lcom/google/android/gms/c/oi;

    invoke-virtual {v0}, Lcom/google/android/gms/c/oi;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method
