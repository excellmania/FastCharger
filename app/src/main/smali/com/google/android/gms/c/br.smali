.class public Lcom/google/android/gms/c/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/g;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/c/ca;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/c/ca;->k()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
