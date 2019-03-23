.class Lcom/onesignal/w$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/w$b;->d()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/w$b;


# direct methods
.method constructor <init>(Lcom/onesignal/w$b;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/w$b$1;->a:Lcom/onesignal/w$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/w;->a(Z)V

    return-void
.end method
