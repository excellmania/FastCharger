.class Lhizli/batarya/sarjetme/app/MainActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/MainActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/MainActivity;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/MainActivity$6;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$6;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

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
