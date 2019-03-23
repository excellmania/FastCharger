.class final Lcom/onesignal/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/onesignal/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/t;->E()V
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
.method public a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 1

    invoke-static {p1}, Lcom/onesignal/t;->a(Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {p2}, Lcom/onesignal/t;->b(Ljava/lang/Double;)Ljava/lang/Double;

    invoke-static {p3}, Lcom/onesignal/t;->a(Ljava/lang/Float;)Ljava/lang/Float;

    invoke-static {p4}, Lcom/onesignal/t;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/onesignal/t;->b(Z)Z

    invoke-static {}, Lcom/onesignal/t;->k()V

    return-void
.end method
