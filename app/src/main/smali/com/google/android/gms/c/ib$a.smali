.class Lcom/google/android/gms/c/ib$a;
.super Lcom/google/android/gms/c/hk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/ib;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ib$a;->a:Lcom/google/android/gms/c/ib;

    invoke-direct {p0}, Lcom/google/android/gms/c/hk$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/ib;Lcom/google/android/gms/c/ib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/ib$a;-><init>(Lcom/google/android/gms/c/ib;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/gv;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/c/ib$a$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/ib$a$1;-><init>(Lcom/google/android/gms/c/ib$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
