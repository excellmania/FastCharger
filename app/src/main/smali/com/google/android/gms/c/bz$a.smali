.class Lcom/google/android/gms/c/bz$a;
.super Lcom/google/android/gms/location/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/y",
            "<",
            "Lcom/google/android/gms/location/e;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/bz$a;->a:Lcom/google/android/gms/c/y;

    new-instance v1, Lcom/google/android/gms/c/bz$a$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/bz$a$2;-><init>(Lcom/google/android/gms/c/bz$a;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/y;->a(Lcom/google/android/gms/c/y$c;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/bz$a;->a:Lcom/google/android/gms/c/y;

    new-instance v1, Lcom/google/android/gms/c/bz$a$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/bz$a$1;-><init>(Lcom/google/android/gms/c/bz$a;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/y;->a(Lcom/google/android/gms/c/y$c;)V

    return-void
.end method
