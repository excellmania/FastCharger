.class public final enum Lcom/facebook/ads/internal/util/w$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/util/w$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/util/w$b;

.field public static final enum b:Lcom/facebook/ads/internal/util/w$b;

.field public static final enum c:Lcom/facebook/ads/internal/util/w$b;

.field public static final enum d:Lcom/facebook/ads/internal/util/w$b;

.field private static final synthetic f:[Lcom/facebook/ads/internal/util/w$b;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/util/w$b;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/util/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/w$b;->a:Lcom/facebook/ads/internal/util/w$b;

    new-instance v0, Lcom/facebook/ads/internal/util/w$b;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/util/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/w$b;->b:Lcom/facebook/ads/internal/util/w$b;

    new-instance v0, Lcom/facebook/ads/internal/util/w$b;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/util/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    new-instance v0, Lcom/facebook/ads/internal/util/w$b;

    const-string v1, "MRC"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/internal/util/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/util/w$b;->d:Lcom/facebook/ads/internal/util/w$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/internal/util/w$b;

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->a:Lcom/facebook/ads/internal/util/w$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->b:Lcom/facebook/ads/internal/util/w$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->c:Lcom/facebook/ads/internal/util/w$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->d:Lcom/facebook/ads/internal/util/w$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/internal/util/w$b;->f:[Lcom/facebook/ads/internal/util/w$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/util/w$b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/util/w$b;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/w$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/util/w$b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/util/w$b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/util/w$b;->f:[Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/util/w$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/util/w$b;

    return-object v0
.end method
