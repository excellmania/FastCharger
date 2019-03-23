.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;


# static fields
.field static a:Z

.field static b:Z

.field private static c:Lcom/onesignal/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$1;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->c:Lcom/onesignal/a$a;

    sget-object v0, Lcom/onesignal/PermissionsActivity;->c:Lcom/onesignal/a$a;

    invoke-static {v0}, Lcom/onesignal/a;->a(Lcom/onesignal/a$a;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->a:Z

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/onesignal/PermissionsActivity;->a:Z

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/i;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/e$a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->a:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->b()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/onesignal/t;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->b()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->b:Z

    sput-boolean v1, Lcom/onesignal/PermissionsActivity;->a:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/onesignal/i;->a()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/onesignal/PermissionsActivity;->c:Lcom/onesignal/a$a;

    invoke-static {v0}, Lcom/onesignal/a;->b(Lcom/onesignal/a$a;)V

    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/onesignal/i;->b()V

    goto :goto_0
.end method
