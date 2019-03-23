.class public Lcom/google/android/gms/c/js;
.super Lcom/google/android/gms/common/internal/safeparcel/a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/c/js;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final f:Lcom/google/android/gms/c/ii;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/jt;

    invoke-direct {v0}, Lcom/google/android/gms/c/jt;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/js;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/c/ii;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/js;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/c/js;->b:Z

    iput p3, p0, Lcom/google/android/gms/c/js;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/c/js;->d:Z

    iput p5, p0, Lcom/google/android/gms/c/js;->e:I

    iput-object p6, p0, Lcom/google/android/gms/c/js;->f:Lcom/google/android/gms/c/ii;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/b/c;)V
    .locals 7

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->a()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->c()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->d()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->e()Lcom/google/android/gms/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v6, Lcom/google/android/gms/c/ii;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->e()Lcom/google/android/gms/ads/i;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/c/ii;-><init>(Lcom/google/android/gms/ads/i;)V

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/c/js;-><init>(IZIZILcom/google/android/gms/c/ii;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/c/jt;->a(Lcom/google/android/gms/c/js;Landroid/os/Parcel;I)V

    return-void
.end method
