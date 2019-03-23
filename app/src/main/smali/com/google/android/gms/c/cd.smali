.class public Lcom/google/android/gms/c/cd;
.super Lcom/google/android/gms/common/internal/safeparcel/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/c/cd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lcom/google/android/gms/c/cb;

.field c:Lcom/google/android/gms/location/x;

.field d:Landroid/app/PendingIntent;

.field e:Lcom/google/android/gms/location/w;

.field f:Lcom/google/android/gms/c/bv;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/ce;

    invoke-direct {v0}, Lcom/google/android/gms/c/ce;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/cd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/c/cb;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/cd;->g:I

    iput p2, p0, Lcom/google/android/gms/c/cd;->a:I

    iput-object p3, p0, Lcom/google/android/gms/c/cd;->b:Lcom/google/android/gms/c/cb;

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/c/cd;->c:Lcom/google/android/gms/location/x;

    iput-object p5, p0, Lcom/google/android/gms/c/cd;->d:Landroid/app/PendingIntent;

    if-nez p6, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/c/cd;->e:Lcom/google/android/gms/location/w;

    if-nez p7, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/c/cd;->f:Lcom/google/android/gms/c/bv;

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/location/x$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/x;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p6}, Lcom/google/android/gms/location/w$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/w;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {p7}, Lcom/google/android/gms/c/bv$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/bv;

    move-result-object v1

    goto :goto_2
.end method

.method public static a(Lcom/google/android/gms/location/w;Lcom/google/android/gms/c/bv;)Lcom/google/android/gms/c/cd;
    .locals 8
    .param p1    # Lcom/google/android/gms/c/bv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/c/cd;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/w;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/c/bv;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/c/cd;-><init>(IILcom/google/android/gms/c/cb;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v3

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/location/x;Lcom/google/android/gms/c/bv;)Lcom/google/android/gms/c/cd;
    .locals 8
    .param p1    # Lcom/google/android/gms/c/bv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/c/cd;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/x;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/c/bv;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/c/cd;-><init>(IILcom/google/android/gms/c/cb;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v7, v3

    goto :goto_0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/cd;->g:I

    return v0
.end method

.method b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/cd;->c:Lcom/google/android/gms/location/x;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/cd;->c:Lcom/google/android/gms/location/x;

    invoke-interface {v0}, Lcom/google/android/gms/location/x;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method c()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/cd;->e:Lcom/google/android/gms/location/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/cd;->e:Lcom/google/android/gms/location/w;

    invoke-interface {v0}, Lcom/google/android/gms/location/w;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method d()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/cd;->f:Lcom/google/android/gms/c/bv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/cd;->f:Lcom/google/android/gms/c/bv;

    invoke-interface {v0}, Lcom/google/android/gms/c/bv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/c/ce;->a(Lcom/google/android/gms/c/cd;Landroid/os/Parcel;I)V

    return-void
.end method
