.class Lhizli/batarya/sarjetme/app/FastCharger$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/FastCharger;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/FastCharger;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/FastCharger;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/16 v5, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    if-ne v1, v2, :cond_4

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "status"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    const-string v1, "%"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setMaxProgress(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/fanrunqi/waveprogress/WaveProgressView;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v4, 0x43020000    # 130.0f

    invoke-virtual {v1, v2, v4}, Lcn/fanrunqi/waveprogress/WaveProgressView;->a(FF)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const-string v2, "#4D000000"

    const/16 v4, 0x46

    invoke-virtual {v1, v2, v4}, Lcn/fanrunqi/waveprogress/WaveProgressView;->a(Ljava/lang/String;I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const-string v2, "#4D76FF03"

    invoke-virtual {v1, v2}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setWaveColor(Ljava/lang/String;)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->c:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setmWaveSpeed(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v2, v2, Lhizli/batarya/sarjetme/app/FastCharger;->n:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/16 v1, 0x62

    if-gt v0, v1, :cond_2

    const/16 v1, 0x5b

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v2, v2, Lhizli/batarya/sarjetme/app/FastCharger;->n:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/16 v1, 0x63

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/FastCharger;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    packed-switch v3, :pswitch_data_0

    :cond_4
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    if-ne v0, v1, :cond_5

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    invoke-virtual {v0}, Lhizli/batarya/sarjetme/app/FastCharger;->finish()V

    :cond_5
    return-void

    :pswitch_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->I:Landroid/widget/TextView;

    const-string v1, "Priz"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->I:Landroid/widget/TextView;

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$1;->a:Lhizli/batarya/sarjetme/app/FastCharger;

    invoke-static {v0}, Lhizli/batarya/sarjetme/app/FastCharger;->a(Lhizli/batarya/sarjetme/app/FastCharger;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
