.class Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/OnActivityPausedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleListenerCompat$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/ActivityLifecycleListenerCompat$1;


# direct methods
.method constructor <init>(Lcom/onesignal/ActivityLifecycleListenerCompat$1;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleListenerCompat$1$1;->this$0:Lcom/onesignal/ActivityLifecycleListenerCompat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/onesignal/a;->d(Landroid/app/Activity;)V

    return-void
.end method
