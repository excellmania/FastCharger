.class Lcom/google/android/a/q$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/q;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/google/android/a/q;


# direct methods
.method constructor <init>(Lcom/google/android/a/q;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/q$2;->b:Lcom/google/android/a/q;

    iput-object p2, p0, Lcom/google/android/a/q$2;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/q$2;->b:Lcom/google/android/a/q;

    invoke-static {v0}, Lcom/google/android/a/q;->a(Lcom/google/android/a/q;)Lcom/google/android/a/q$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/q$2;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/google/android/a/q$a;->onDrawnToSurface(Landroid/view/Surface;)V

    return-void
.end method
