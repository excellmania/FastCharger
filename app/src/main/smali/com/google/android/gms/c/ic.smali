.class public Lcom/google/android/gms/c/ic;
.super Lcom/google/android/gms/c/hn$a;


# instance fields
.field private a:Lcom/google/android/gms/c/hj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/hn$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/ic;)Lcom/google/android/gms/c/hj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ic;->a:Lcom/google/android/gms/c/hj;

    return-object v0
.end method


# virtual methods
.method public F()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/ha;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/hi;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/ic;->a:Lcom/google/android/gms/c/hj;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/hp;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/hr;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/ii;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/jf;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/nw;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/ob;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/qt;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/c/gv;)Z
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/c/sz;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/c/ic$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/ic$1;-><init>(Lcom/google/android/gms/c/ic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()Lcom/google/android/gms/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/c/ha;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/google/android/gms/c/hu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
