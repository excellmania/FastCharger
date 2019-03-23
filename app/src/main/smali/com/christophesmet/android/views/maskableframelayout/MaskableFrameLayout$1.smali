.class Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;


# direct methods
.method constructor <init>(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iput-object p2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->a:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    invoke-virtual {v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iget-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    invoke-static {v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->b:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    const-string v1, "GlobalLayoutListener not removed as ViewTreeObserver is not valid"

    invoke-static {v0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Ljava/lang/String;)V

    goto :goto_0
.end method
