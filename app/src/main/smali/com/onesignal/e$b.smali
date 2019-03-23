.class Lcom/onesignal/e$b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1

    instance-of v0, p0, Lcom/onesignal/e$d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/onesignal/e$d;

    invoke-interface {v0, p2}, Lcom/onesignal/e$d;->a(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
