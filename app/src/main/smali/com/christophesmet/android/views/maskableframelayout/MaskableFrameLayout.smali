.class public Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method

.method private a(I)Landroid/graphics/PorterDuffXfermode;
    .locals 3

    const/16 v1, 0xb

    packed-switch p1, :pswitch_data_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE_ADD is not supported on api lvl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE_OVERLAY is not supported on api lvl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget v0, Lcom/christophesmet/android/a/a/a$a;->MaskableLayout_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(II)V
    .locals 1

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Width and height must be higher than 0"

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setDrawingCacheEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    invoke-direct {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/christophesmet/android/a/a/a$a;->MaskableLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/christophesmet/android/a/a/a$a;->MaskableLayout_porterduffxfermode:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(I)Landroid/graphics/PorterDuffXfermode;

    move-result-object v0

    iput-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw v0

    :cond_3
    const-string v0, "Couldn\'t load theme, mask in xml won\'t be loaded."

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Are you sure you don\'t want to provide a mask ?"

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MaskableFrameLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Can\'t create a mask with height 0 or width 0. Or the layout has no children and is wrap content"

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "No bitmap mask loaded, view will NOT be masked !"

    invoke-direct {p0, v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;-><init>(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->e:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mask or paint is null ..."

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDrawableMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(II)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setMask(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->setMask(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Unable to load resources, mask will not be loaded as drawable"

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMask(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->invalidate()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->a:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
