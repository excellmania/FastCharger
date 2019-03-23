.class public Lcom/facebook/ads/internal/h/c/c/b;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/internal/h/c/c/e;
.implements Lcom/google/android/a/e/h$a;
.implements Lcom/google/android/a/g/d$a;
.implements Lcom/google/android/a/h$c;
.implements Lcom/google/android/a/q$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/h/c/c/b$a;,
        Lcom/facebook/ads/internal/h/c/c/b$b;,
        Lcom/facebook/ads/internal/h/c/c/b$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/h/c/c/h;

.field private e:Landroid/os/Handler;

.field private f:Landroid/view/Surface;

.field private g:Lcom/google/android/a/z;

.field private h:Lcom/google/android/a/z;

.field private i:Lcom/facebook/ads/internal/h/c/c/b$c;

.field private j:Lcom/google/android/a/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/ads/internal/h/c/c/b$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Landroid/widget/MediaController;

.field private m:Lcom/facebook/ads/internal/h/c/c/g;

.field private n:Lcom/facebook/ads/internal/h/c/c/g;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:I

.field private x:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/c/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/c/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->n:Lcom/facebook/ads/internal/h/c/c/g;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->p:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->r:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->x:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c/c/b$1;-><init>(Lcom/facebook/ads/internal/h/c/c/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->i:Lcom/facebook/ads/internal/h/c/c/b$c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->l:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/facebook/ads/internal/h/c/c/b$a;)Lcom/facebook/ads/internal/h/c/c/b$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/facebook/ads/internal/h/c/c/g;)Lcom/facebook/ads/internal/h/c/c/g;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->n:Lcom/facebook/ads/internal/h/c/c/g;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/h;)Lcom/google/android/a/h;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/z;)Lcom/google/android/a/z;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->g:Lcom/google/android/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/h/c/c/b;->setPlayerSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/z;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->g:Lcom/google/android/a/z;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/c/c/b;Lcom/google/android/a/z;)Lcom/google/android/a/z;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->h:Lcom/google/android/a/z;

    return-object p1
.end method

.method private b()V
    .locals 7

    const/high16 v1, 0x10000

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    iget-object v4, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ads"

    invoke-static {v5, v6}, Lcom/google/android/a/h/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/h/c/c/a;-><init>(ILandroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/h/c/c/b;)V

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->i:Lcom/facebook/ads/internal/h/c/c/b$c;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b$b;->a(Lcom/facebook/ads/internal/h/c/c/b$c;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/h/c/c/c;

    const/16 v2, 0x100

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/b;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ads"

    invoke-static {v5, v6}, Lcom/google/android/a/h/x;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/h/c/c/c;-><init>(IILandroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/internal/h/c/c/b;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/z;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->h:Lcom/google/android/a/z;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0}, Lcom/google/android/a/h;->b()V

    iput-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    iput-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->l:Landroid/widget/MediaController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/h/c/c/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->l:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/facebook/ads/internal/h/c/c/b$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/h/c/c/b;)F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->x:F

    return v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/h/c/c/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/h/c/c/b;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    return-object v0
.end method

.method private setPlayerSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->f:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->g:Lcom/google/android/a/z;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->f:Landroid/view/Surface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/a/h;->a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->d:Lcom/facebook/ads/internal/h/c/c/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->d:Lcom/facebook/ads/internal/h/c/c/h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/h;->a(Lcom/facebook/ads/internal/h/c/c/g;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/a/h;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0}, Lcom/google/android/a/h;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0, p0}, Lcom/google/android/a/h;->b(Lcom/google/android/a/h$c;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c/c/b;->c()V

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c/c/b$a;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0}, Lcom/google/android/a/h;->c()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->t:J

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/internal/h/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/internal/h/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->n:Lcom/facebook/ads/internal/h/c/c/g;

    return-object v0
.end method

.method public onBandwidthSample(IJJ)V
    .locals 0

    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->printStackTrace()V

    const-string v0, "[ExoPlayer] Error during decoder operation"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/a/o$a;)V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p1}, Lcom/google/android/a/o$a;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExoPlayer] Error while instantiating the decoder for mime type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/a/o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ExoPlayer] Error loading media data from sourceID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/h/c/c/b;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/h/c/c/b;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    if-lez v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    div-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    goto :goto_0

    :cond_3
    if-ne v5, v3, :cond_4

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    div-int/2addr v1, v3

    :goto_1
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/a/g;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p1}, Lcom/google/android/a/g;->printStackTrace()V

    const-string v0, "[ExoPlayer] Error during playback of ExoPlayer"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->s:J

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->b:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->f:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :pswitch_3
    iget-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->s:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->s:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->t:J

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->x:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setRequestedVolume(F)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v2}, Lcom/google/android/a/h;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    iget-wide v2, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/h;->a(J)V

    iput-wide v4, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0}, Lcom/google/android/a/h;->d()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->c:Lcom/facebook/ads/internal/h/c/c/g;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b$a;->seekTo(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    invoke-interface {v0, v1}, Lcom/google/android/a/h;->a(Z)V

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setup(Landroid/net/Uri;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->p:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/h/c/c/b;->setPlayerSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->n:Lcom/facebook/ads/internal/h/c/c/g;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->p:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/b;->a()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->q:Z

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->v:I

    iput p2, p0, Lcom/facebook/ads/internal/h/c/c/b;->w:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/b;->requestLayout()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c/c/b$a;->pause()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/h/c/c/b$a;->seekTo(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->u:J

    goto :goto_0
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->o:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/b$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c/c/b$3;-><init>(Lcom/facebook/ads/internal/h/c/c/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->r:Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c/c/b$2;-><init>(Lcom/facebook/ads/internal/h/c/c/b;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 4

    iput p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->x:F

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->b:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/b;->h:Lcom/google/android/a/z;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/a/h;->a(Lcom/google/android/a/h$a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->c:Ljava/lang/String;

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/h/c/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->d:Lcom/facebook/ads/internal/h/c/c/h;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->j:Lcom/google/android/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->m:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c/c/b;->c()V

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/h/c/c/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/h/c/c/b;->b()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->b:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/b;->setup(Landroid/net/Uri;)V

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->n:Lcom/facebook/ads/internal/h/c/c/g;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b;->k:Lcom/facebook/ads/internal/h/c/c/b$a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c/c/b$a;->start()V

    goto :goto_0
.end method
