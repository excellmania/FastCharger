.class public final enum Lcom/onesignal/t$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/onesignal/t$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/onesignal/t$d;

.field public static final enum b:Lcom/onesignal/t$d;

.field public static final enum c:Lcom/onesignal/t$d;

.field public static final enum d:Lcom/onesignal/t$d;

.field public static final enum e:Lcom/onesignal/t$d;

.field public static final enum f:Lcom/onesignal/t$d;

.field public static final enum g:Lcom/onesignal/t$d;

.field private static final synthetic h:[Lcom/onesignal/t$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->a:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "FATAL"

    invoke-direct {v0, v1, v4}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->b:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v6}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v7}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "DEBUG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    new-instance v0, Lcom/onesignal/t$d;

    const-string v1, "VERBOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onesignal/t$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/t$d;->g:Lcom/onesignal/t$d;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/onesignal/t$d;

    sget-object v1, Lcom/onesignal/t$d;->a:Lcom/onesignal/t$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/onesignal/t$d;->b:Lcom/onesignal/t$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/onesignal/t$d;->c:Lcom/onesignal/t$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/onesignal/t$d;->d:Lcom/onesignal/t$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/onesignal/t$d;->e:Lcom/onesignal/t$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/onesignal/t$d;->f:Lcom/onesignal/t$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/onesignal/t$d;->g:Lcom/onesignal/t$d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/t$d;->h:[Lcom/onesignal/t$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/t$d;
    .locals 1

    const-class v0, Lcom/onesignal/t$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/onesignal/t$d;

    return-object v0
.end method

.method public static values()[Lcom/onesignal/t$d;
    .locals 1

    sget-object v0, Lcom/onesignal/t$d;->h:[Lcom/onesignal/t$d;

    invoke-virtual {v0}, [Lcom/onesignal/t$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/t$d;

    return-object v0
.end method
