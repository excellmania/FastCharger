.class public final enum Lcom/onesignal/t$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/onesignal/t$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/onesignal/t$g;

.field public static final enum b:Lcom/onesignal/t$g;

.field public static final enum c:Lcom/onesignal/t$g;

.field private static final synthetic d:[Lcom/onesignal/t$g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/onesignal/t$g;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/onesignal/t$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$g;->a:Lcom/onesignal/t$g;

    new-instance v0, Lcom/onesignal/t$g;

    const-string v1, "InAppAlert"

    invoke-direct {v0, v1, v3}, Lcom/onesignal/t$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$g;->b:Lcom/onesignal/t$g;

    new-instance v0, Lcom/onesignal/t$g;

    const-string v1, "Notification"

    invoke-direct {v0, v1, v4}, Lcom/onesignal/t$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$g;->c:Lcom/onesignal/t$g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/t$g;

    sget-object v1, Lcom/onesignal/t$g;->a:Lcom/onesignal/t$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/onesignal/t$g;->b:Lcom/onesignal/t$g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/onesignal/t$g;->c:Lcom/onesignal/t$g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/onesignal/t$g;->d:[Lcom/onesignal/t$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/t$g;
    .locals 1

    const-class v0, Lcom/onesignal/t$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/onesignal/t$g;

    return-object v0
.end method

.method public static values()[Lcom/onesignal/t$g;
    .locals 1

    sget-object v0, Lcom/onesignal/t$g;->d:[Lcom/onesignal/t$g;

    invoke-virtual {v0}, [Lcom/onesignal/t$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/t$g;

    return-object v0
.end method
