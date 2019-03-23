.class public Lcom/onesignal/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/onesignal/t$e;

.field c:Lcom/onesignal/t$f;

.field d:Z

.field e:Z

.field f:Lcom/onesignal/t$g;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onesignal/t$g;->b:Lcom/onesignal/t$g;

    iput-object v0, p0, Lcom/onesignal/t$a;->f:Lcom/onesignal/t$g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onesignal/t$g;->b:Lcom/onesignal/t$g;

    iput-object v0, p0, Lcom/onesignal/t$a;->f:Lcom/onesignal/t$g;

    iput-object p1, p0, Lcom/onesignal/t$a;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/onesignal/t$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onesignal/t$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/t$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/t$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/t;->a(Lcom/onesignal/t$a;)V

    return-void
.end method
