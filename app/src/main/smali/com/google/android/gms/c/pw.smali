.class public Lcom/google/android/gms/c/pw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/google/android/gms/c/qj$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/google/android/gms/c/pg;

.field public i:Lcom/google/android/gms/c/qf;

.field public j:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/pw;->j:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/pw;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->d:Landroid/location/Location;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->h:Lcom/google/android/gms/c/pg;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/qf;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->i:Lcom/google/android/gms/c/qf;

    return-object p0
.end method

.method public a(Lcom/google/android/gms/c/qj$a;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->e:Lcom/google/android/gms/c/qj$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/android/gms/c/pw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/c/pw;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/c/pw;->c:Ljava/util/List;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->j:Lorg/json/JSONObject;

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/c/pw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pw;->f:Ljava/lang/String;

    return-object p0
.end method
