.class Landroid/support/design/widget/StateListAnimator$1;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p0}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-static {v0}, Landroid/support/design/widget/StateListAnimator;->access$000(Landroid/support/design/widget/StateListAnimator;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/StateListAnimator;->access$002(Landroid/support/design/widget/StateListAnimator;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;

    :cond_0
    return-void
.end method