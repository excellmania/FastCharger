.class public Lcom/facebook/ads/internal/h/c/c/d;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/facebook/ads/internal/h/c/c/e;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/facebook/ads/internal/h/c/c/h;

.field private c:Landroid/view/Surface;

.field private d:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/MediaController;

.field private f:Lcom/facebook/ads/internal/h/c/c/g;

.field private g:Lcom/facebook/ads/internal/h/c/c/g;

.field private h:Landroid/view/View;

.field private i:I

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:F

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/c/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/c/c/d;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    iput v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    iput v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->n:F

    iput-boolean v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/c/c/d;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    return-object v0
.end method

.method private setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->b:Lcom/facebook/ads/internal/h/c/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->b:Lcom/facebook/ads/internal/h/c/c/h;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/h/c/c/h;->a(Lcom/facebook/ads/internal/h/c/c/g;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->k:J

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/internal/h/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/internal/h/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setup(Landroid/net/Uri;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->h:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->f:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/h/c/c/d;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    invoke-static {v0, p2}, Lcom/facebook/ads/internal/h/c/c/d;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

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

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    div-int/2addr v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    goto :goto_0

    :cond_3
    if-ne v5, v3, :cond_4

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    div-int/2addr v1, v3

    :goto_1
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

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

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->k:J

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->c:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->h:Landroid/view/View;

    if-nez v0, :cond_4

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->e:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->n:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setRequestedVolume(F)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput v4, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v4, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->start()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->h:Landroid/view/View;

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->c:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->c:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->c:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->j:J

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput-object v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->b:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/d;->p:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot prepare media player with SurfaceTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->o:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->pause()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->l:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->m:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    goto :goto_0
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->h:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c/c/d$2;-><init>(Lcom/facebook/ads/internal/h/c/c/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->o:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/h/c/c/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/h/c/c/d$1;-><init>(Lcom/facebook/ads/internal/h/c/c/d;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    iput p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->n:F

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->b:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->a:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/h/c/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->b:Lcom/facebook/ads/internal/h/c/c/h;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/d;->a:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/h/c/c/d;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/facebook/ads/internal/h/c/c/d;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    iput-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->g:Lcom/facebook/ads/internal/h/c/c/g;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->c:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->f:Lcom/facebook/ads/internal/h/c/c/g;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->g:Lcom/facebook/ads/internal/h/c/c/g;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->a:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setup(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/h/c/c/d;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/facebook/ads/internal/h/c/c/d;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v2, p0, Lcom/facebook/ads/internal/h/c/c/d;->i:I

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/h/c/c/d;->setVideoState(Lcom/facebook/ads/internal/h/c/c/g;)V

    goto :goto_0
.end method
