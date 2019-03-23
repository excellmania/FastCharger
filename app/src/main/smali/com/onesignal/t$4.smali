.class final Lcom/onesignal/t$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/t;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, -0x6

    const/4 v1, 0x1

    if-ge p2, v1, :cond_2

    invoke-static {}, Lcom/onesignal/w;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/onesignal/t;->l()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/onesignal/t;->l()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/onesignal/t;->a(I)I

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/onesignal/t;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/onesignal/t;->c(Z)Z

    invoke-static {}, Lcom/onesignal/t;->k()V

    return-void

    :cond_2
    invoke-static {}, Lcom/onesignal/t;->l()I

    move-result v0

    if-ge v0, v2, :cond_1

    invoke-static {p2}, Lcom/onesignal/t;->a(I)I

    goto :goto_0
.end method
