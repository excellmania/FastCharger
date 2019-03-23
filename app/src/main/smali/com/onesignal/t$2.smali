.class final Lcom/onesignal/t$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/t;->a(Lcom/onesignal/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/onesignal/q;


# direct methods
.method constructor <init>(Lcom/onesignal/q;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/t$2;->a:Lcom/onesignal/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/onesignal/t;->f:Lcom/onesignal/t$a;

    iget-object v0, v0, Lcom/onesignal/t$a;->b:Lcom/onesignal/t$e;

    iget-object v1, p0, Lcom/onesignal/t$2;->a:Lcom/onesignal/q;

    invoke-interface {v0, v1}, Lcom/onesignal/t$e;->a(Lcom/onesignal/q;)V

    return-void
.end method
