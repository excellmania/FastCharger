.class public Lcom/google/android/gms/c/uu;
.super Lcom/google/android/gms/common/internal/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/t",
        "<",
        "Lcom/google/android/gms/c/ux;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V
    .locals 7

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/t;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/o;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/uu;->b(Landroid/os/IBinder;)Lcom/google/android/gms/c/ux;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/uw;Lcom/google/android/gms/c/ur;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/uu;->u()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/ux;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/c/ux;->a(Lcom/google/android/gms/c/uw;Lcom/google/android/gms/c/ur;)V

    return-void
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/c/ux;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/c/ux$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/ux;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method
