.class public final Lcom/google/android/gms/c/fg;
.super Lcom/google/android/gms/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/a/c",
        "<",
        "Lcom/google/android/gms/c/fi;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/c/fg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/fg;

    invoke-direct {v0}, Lcom/google/android/gms/c/fg;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/fg;->a:Lcom/google/android/gms/c/fg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.adshield.AdShieldCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/c/fh;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/k;->b()Lcom/google/android/gms/common/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/k;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/c/fg;->a:Lcom/google/android/gms/c/fg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/fg;->b(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/c/fh;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/c/ff;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/ff;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/c/fh;
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/c/fg;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/fi;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/c/fi;->a(Ljava/lang/String;Lcom/google/android/gms/a/a;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/c/fh$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/fh;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/c/fg;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/fi;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/c/fi;->b(Ljava/lang/String;Lcom/google/android/gms/a/a;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/a/c$a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/fg;->b(Landroid/os/IBinder;)Lcom/google/android/gms/c/fi;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/os/IBinder;)Lcom/google/android/gms/c/fi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/c/fi$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/fi;

    move-result-object v0

    return-object v0
.end method
