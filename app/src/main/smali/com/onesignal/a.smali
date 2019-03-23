.class Lcom/onesignal/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/a$b;,
        Lcom/onesignal/a$c;,
        Lcom/onesignal/a$a;
    }
.end annotation


# static fields
.field static a:Z

.field static b:Landroid/app/Activity;

.field static c:Lcom/onesignal/a$c;

.field private static d:Lcom/onesignal/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/a$c;

    invoke-direct {v0}, Lcom/onesignal/a$c;-><init>()V

    sput-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    return-void
.end method

.method private static a()V
    .locals 4

    sget-object v1, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curActivity is NOW: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static a(Lcom/onesignal/a$a;)V
    .locals 1

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-interface {p0, v0}, Lcom/onesignal/a$a;->a(Landroid/app/Activity;)V

    sput-object p0, Lcom/onesignal/a;->d:Lcom/onesignal/a$a;

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcom/onesignal/a;->d:Lcom/onesignal/a$a;

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    sget-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    new-instance v1, Lcom/onesignal/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onesignal/a$b;-><init>(Lcom/onesignal/a$1;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/a$c;->a(Lcom/onesignal/a$b;)V

    return-void
.end method

.method static b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static b(Lcom/onesignal/a$a;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/a;->d:Lcom/onesignal/a$a;

    return-void
.end method

.method private static c()V
    .locals 1

    sget-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    invoke-virtual {v0}, Lcom/onesignal/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/onesignal/a;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/a;->a:Z

    sget-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    invoke-virtual {v0}, Lcom/onesignal/a$c;->a()V

    invoke-static {}, Lcom/onesignal/t;->a()V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/onesignal/a;->c:Lcom/onesignal/a$c;

    invoke-virtual {v0}, Lcom/onesignal/a$c;->b()V

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/a;->g(Landroid/app/Activity;)V

    invoke-static {}, Lcom/onesignal/a;->a()V

    invoke-static {}, Lcom/onesignal/a;->c()V

    return-void
.end method

.method static d(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/a;->b()V

    :cond_0
    invoke-static {}, Lcom/onesignal/a;->a()V

    return-void
.end method

.method static e(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/a;->b()V

    :cond_0
    invoke-static {}, Lcom/onesignal/a;->a()V

    return-void
.end method

.method static f(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(Lcom/onesignal/t$d;Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/onesignal/a;->b()V

    :cond_0
    invoke-static {}, Lcom/onesignal/a;->a()V

    return-void
.end method

.method private static g(Landroid/app/Activity;)V
    .locals 2

    sput-object p0, Lcom/onesignal/a;->b:Landroid/app/Activity;

    sget-object v0, Lcom/onesignal/a;->d:Lcom/onesignal/a$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/a;->d:Lcom/onesignal/a$a;

    sget-object v1, Lcom/onesignal/a;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/onesignal/a$a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
