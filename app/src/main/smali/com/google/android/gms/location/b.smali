.class public interface abstract Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    .annotation build Landroid/support/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation
.end method
