.class Lcom/google/android/gms/c/bz$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/bz$a;->a(Lcom/google/android/gms/location/LocationAvailability;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/y$c",
        "<",
        "Lcom/google/android/gms/location/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationAvailability;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/bz$a;Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/c/bz$a$2;->a:Lcom/google/android/gms/location/LocationAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/location/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/bz$a$2;->a:Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/location/LocationAvailability;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/bz$a$2;->a(Lcom/google/android/gms/location/e;)V

    return-void
.end method
