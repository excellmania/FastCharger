.class public Lcom/google/android/gms/c/ha;
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
            "Lcom/google/android/gms/c/ha;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:[Lcom/google/android/gms/c/ha;

.field public final i:Z

.field public final j:Z

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/hb;

    invoke-direct {v0}, Lcom/google/android/gms/c/hb;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/ha;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v3, 0x0

    const/4 v1, 0x5

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/c/ha;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/c/ha;ZZZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/c/ha;ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/ha;->a:I

    iput-object p2, p0, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/c/ha;->c:I

    iput p4, p0, Lcom/google/android/gms/c/ha;->d:I

    iput-boolean p5, p0, Lcom/google/android/gms/c/ha;->e:Z

    iput p6, p0, Lcom/google/android/gms/c/ha;->f:I

    iput p7, p0, Lcom/google/android/gms/c/ha;->g:I

    iput-object p8, p0, Lcom/google/android/gms/c/ha;->h:[Lcom/google/android/gms/c/ha;

    iput-boolean p9, p0, Lcom/google/android/gms/c/ha;->i:Z

    iput-boolean p10, p0, Lcom/google/android/gms/c/ha;->j:Z

    iput-boolean p11, p0, Lcom/google/android/gms/c/ha;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/c/ha;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    aget-object v6, p2, v2

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/c/ha;->a:I

    iput-boolean v2, p0, Lcom/google/android/gms/c/ha;->e:Z

    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/c/ha;->j:Z

    iget-boolean v0, p0, Lcom/google/android/gms/c/ha;->j:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/ha;->f:I

    sget-object v0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/ha;->c:I

    :goto_0
    iget v0, p0, Lcom/google/android/gms/c/ha;->f:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/c/ha;->c:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/c/sy;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/c/sy;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v7}, Lcom/google/android/gms/c/ha;->a(Landroid/util/DisplayMetrics;)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/c/sy;->e(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/c/ha;->g:I

    :goto_3
    iget v4, p0, Lcom/google/android/gms/c/ha;->g:I

    int-to-float v4, v4

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-double v8, v4

    double-to-int v4, v8

    double-to-int v5, v8

    int-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    move v5, v4

    :goto_4
    if-eqz v3, :cond_7

    invoke-static {v7}, Lcom/google/android/gms/c/ha;->c(Landroid/util/DisplayMetrics;)I

    move-result v4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/c/sy;->a(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/c/ha;->d:I

    if-nez v0, :cond_1

    if-eqz v3, :cond_8

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_as"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    :goto_6
    array-length v0, p2

    if-le v0, v1, :cond_a

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/c/ha;

    iput-object v0, p0, Lcom/google/android/gms/c/ha;->h:[Lcom/google/android/gms/c/ha;

    move v0, v2

    :goto_7
    array-length v1, p2

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/c/ha;->h:[Lcom/google/android/gms/c/ha;

    new-instance v3, Lcom/google/android/gms/c/ha;

    aget-object v4, p2, v0

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/c/ha;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/ha;->f:I

    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/ha;->c:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v3, v2

    goto/16 :goto_2

    :cond_5
    invoke-static {v7}, Lcom/google/android/gms/c/ha;->a(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/c/ha;->g:I

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/google/android/gms/c/ha;->f:I

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v5

    iget v8, p0, Lcom/google/android/gms/c/ha;->f:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/c/sy;->a(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/c/ha;->g:I

    move v5, v4

    goto :goto_4

    :cond_7
    iget v4, p0, Lcom/google/android/gms/c/ha;->c:I

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gms/c/ha;->j:Z

    if-eqz v0, :cond_9

    const-string v0, "320x50_mb"

    iput-object v0, p0, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/ha;->h:[Lcom/google/android/gms/c/ha;

    :cond_b
    iput-boolean v2, p0, Lcom/google/android/gms/c/ha;->i:Z

    iput-boolean v2, p0, Lcom/google/android/gms/c/ha;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/c/ha;[Lcom/google/android/gms/c/ha;)V
    .locals 12

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/c/ha;->c:I

    iget v4, p1, Lcom/google/android/gms/c/ha;->d:I

    iget-boolean v5, p1, Lcom/google/android/gms/c/ha;->e:Z

    iget v6, p1, Lcom/google/android/gms/c/ha;->f:I

    iget v7, p1, Lcom/google/android/gms/c/ha;->g:I

    iget-boolean v9, p1, Lcom/google/android/gms/c/ha;->i:Z

    iget-boolean v10, p1, Lcom/google/android/gms/c/ha;->j:Z

    iget-boolean v11, p1, Lcom/google/android/gms/c/ha;->k:Z

    move-object v0, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/c/ha;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/c/ha;ZZZ)V

    return-void
.end method

.method public static a(Landroid/util/DisplayMetrics;)I
    .locals 1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a()Lcom/google/android/gms/c/ha;
    .locals 12

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/c/ha;

    const/4 v1, 0x5

    const-string v2, "reward_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/c/ha;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/c/ha;ZZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/c/ha;
    .locals 12

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/c/ha;

    const/4 v1, 0x5

    const-string v2, "320x50_mb"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/c/ha;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/c/ha;ZZZ)V

    return-object v0
.end method

.method public static b(Landroid/util/DisplayMetrics;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/c/ha;->c(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static c(Landroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x32

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/ha;->k:Z

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/d;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/c/ha;->f:I

    iget v1, p0, Lcom/google/android/gms/c/ha;->c:I

    iget-object v2, p0, Lcom/google/android/gms/c/ha;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/j;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/c/hb;->a(Lcom/google/android/gms/c/ha;Landroid/os/Parcel;I)V

    return-void
.end method
