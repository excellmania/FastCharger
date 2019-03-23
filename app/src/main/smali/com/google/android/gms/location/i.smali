.class public final Lcom/google/android/gms/location/i;
.super Lcom/google/android/gms/common/internal/safeparcel/a;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/api/Status;

.field private final c:Lcom/google/android/gms/location/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/ae;

    invoke-direct {v0}, Lcom/google/android/gms/location/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/i;->a:I

    iput-object p2, p0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/i;->c:Lcom/google/android/gms/location/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/i;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/i;->a:I

    return v0
.end method

.method public c()Lcom/google/android/gms/location/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/i;->c:Lcom/google/android/gms/location/j;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/ae;->a(Lcom/google/android/gms/location/i;Landroid/os/Parcel;I)V

    return-void
.end method
