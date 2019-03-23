.class Lhizli/batarya/sarjetme/app/FastCharger$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/FastCharger;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lhizli/batarya/sarjetme/app/FastCharger;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/FastCharger;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->b:Lhizli/batarya/sarjetme/app/FastCharger;

    iput-object p2, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->b:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->C:Landroid/support/v7/widget/CardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->b:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->B:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->b:Lhizli/batarya/sarjetme/app/FastCharger;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/FastCharger;->B:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/FastCharger$3;->b:Lhizli/batarya/sarjetme/app/FastCharger;

    invoke-virtual {v0}, Lhizli/batarya/sarjetme/app/FastCharger;->c()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
