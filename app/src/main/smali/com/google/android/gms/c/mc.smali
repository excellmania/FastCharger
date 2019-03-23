.class public final Lcom/google/android/gms/c/mc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/mb;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/c/th;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/google/android/gms/c/th",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/tf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/tf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
