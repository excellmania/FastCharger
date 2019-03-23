.class Lcom/google/android/gms/ads/internal/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/rv$a;

.field final synthetic b:Lcom/google/android/gms/c/rp;

.field final synthetic c:Lcom/google/android/gms/c/jb;

.field final synthetic d:Lcom/google/android/gms/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/rp;Lcom/google/android/gms/c/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/c$3;->b:Lcom/google/android/gms/c/rp;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/c$3;->c:Lcom/google/android/gms/c/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v0, v0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-boolean v0, v0, Lcom/google/android/gms/c/pj;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->y:Lcom/google/android/gms/c/jf;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v1, v1, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-object v1, v1, Lcom/google/android/gms/c/pj;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v1, v1, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-object v1, v1, Lcom/google/android/gms/c/pj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/sj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/c/jc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v3, v3, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iget-object v3, v3, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/c/jc;-><init>(Lcom/google/android/gms/ads/internal/h;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput v5, v0, Lcom/google/android/gms/ads/internal/w;->E:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/c;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->y:Lcom/google/android/gms/c/jf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/jf;->a(Lcom/google/android/gms/c/je;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iput-boolean v5, v0, Lcom/google/android/gms/ads/internal/c;->d:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/e;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/rv$a;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->b:Lcom/google/android/gms/c/rp;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/c/rp;)Lcom/google/android/gms/c/tr;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/c$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/c$3$1;-><init>(Lcom/google/android/gms/ads/internal/c$3;Lcom/google/android/gms/ads/internal/e;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/c/tr;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/c$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/c$3$2;-><init>(Lcom/google/android/gms/ads/internal/c$3;Lcom/google/android/gms/ads/internal/e;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/c/tr;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iput v4, v0, Lcom/google/android/gms/ads/internal/w;->E:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->d()Lcom/google/android/gms/c/ol;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/w;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$3;->a:Lcom/google/android/gms/c/rv$a;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/w;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/w;->d:Lcom/google/android/gms/c/cm;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/c/mo;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/c$3;->d:Lcom/google/android/gms/ads/internal/c;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/c$3;->c:Lcom/google/android/gms/c/jb;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/c/ol;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/ol$a;Lcom/google/android/gms/c/jb;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/w;->h:Lcom/google/android/gms/c/sl;

    goto :goto_0
.end method
