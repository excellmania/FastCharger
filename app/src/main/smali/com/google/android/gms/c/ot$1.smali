.class Lcom/google/android/gms/c/ot$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/ot;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/c/th;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/c/te;

.field final synthetic c:Lcom/google/android/gms/c/ot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/ot;Lorg/json/JSONObject;Lcom/google/android/gms/c/te;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    iput-object p2, p0, Lcom/google/android/gms/c/ot$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/c/ot$1;->b:Lcom/google/android/gms/c/te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-virtual {v0}, Lcom/google/android/gms/c/ot;->a()Lcom/google/android/gms/c/tr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-static {v0}, Lcom/google/android/gms/c/ot;->a(Lcom/google/android/gms/c/ot;)Lcom/google/android/gms/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/r;->a(Lcom/google/android/gms/c/tr;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-static {v3, v0}, Lcom/google/android/gms/c/ot;->a(Lcom/google/android/gms/c/ot;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-static {v4, v0}, Lcom/google/android/gms/c/ot;->b(Lcom/google/android/gms/c/ot;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/c/ts;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/ot;->a(Lcom/google/android/gms/c/ot;Lcom/google/android/gms/c/tr;)V

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/c/ot$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/c/ot$1$1;-><init>(Lcom/google/android/gms/c/ot$1;Lcom/google/android/gms/c/tr;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$b;)V

    invoke-interface {v1}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/c/ot$1$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/ot$1$2;-><init>(Lcom/google/android/gms/c/ot$1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/ts;->a(Lcom/google/android/gms/c/ts$a;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ot$1;->c:Lcom/google/android/gms/c/ot;

    invoke-static {v0}, Lcom/google/android/gms/c/ot;->b(Lcom/google/android/gms/c/ot;)Lcom/google/android/gms/c/rv$a;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/c/is;->cc:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/android/gms/c/or;->a(Lcom/google/android/gms/c/rv$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/c/tr;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/c/ot$1;->b:Lcom/google/android/gms/c/te;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/te;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
