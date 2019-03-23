.class Lcom/onesignal/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/i$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-static {}, Lcom/onesignal/i;->b()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v0, 0x0

    const/4 v3, 0x0

    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->b:Z

    sget-object v1, Lcom/google/android/gms/location/g;->b:Lcom/google/android/gms/location/b;

    invoke-static {}, Lcom/onesignal/i;->c()Lcom/onesignal/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/h;->c()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v2, v6, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v3, v6, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {}, Lcom/onesignal/i;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lcom/onesignal/i;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    :goto_1
    invoke-static {}, Lcom/onesignal/i;->c()Lcom/onesignal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/h;->b()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v3, v3, v3}, Lcom/onesignal/i;->a(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Float;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/onesignal/i;->b()V

    return-void
.end method
