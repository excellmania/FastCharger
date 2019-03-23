.class public Lcom/google/android/gms/location/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/common/api/a$a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/location/b;

.field public static final c:Lcom/google/android/gms/location/c;

.field public static final d:Lcom/google/android/gms/location/k;

.field private static final e:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g",
            "<",
            "Lcom/google/android/gms/c/ca;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/c/ca;",
            "Lcom/google/android/gms/common/api/a$a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/g;->e:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/location/g$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/g$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/g;->f:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "LocationServices.API"

    sget-object v2, Lcom/google/android/gms/location/g;->f:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/location/g;->e:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/location/g;->a:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/c/br;

    invoke-direct {v0}, Lcom/google/android/gms/c/br;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/g;->b:Lcom/google/android/gms/location/b;

    new-instance v0, Lcom/google/android/gms/c/bu;

    invoke-direct {v0}, Lcom/google/android/gms/c/bu;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/g;->c:Lcom/google/android/gms/location/c;

    new-instance v0, Lcom/google/android/gms/c/cj;

    invoke-direct {v0}, Lcom/google/android/gms/c/cj;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/g;->d:Lcom/google/android/gms/location/k;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/c/ca;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/c;->b(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/location/g;->e:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/ca;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/c;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
