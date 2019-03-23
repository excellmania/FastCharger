.class public Lcom/onesignal/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/x;


# static fields
.field private static a:Lcom/onesignal/x$a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onesignal/y;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/onesignal/y;->a:Lcom/onesignal/x$a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v1, Lcom/onesignal/y;->b:Z

    sget-object v0, Lcom/onesignal/y;->a:Lcom/onesignal/x$a;

    invoke-interface {v0, p0, v1}, Lcom/onesignal/x$a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/onesignal/y;->b:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/x$a;)V
    .locals 2

    sput-object p3, Lcom/onesignal/y;->a:Lcom/onesignal/x$a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/y$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/onesignal/y$1;-><init>(Lcom/onesignal/y;Landroid/content/Context;Lcom/onesignal/x$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
