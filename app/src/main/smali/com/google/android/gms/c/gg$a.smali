.class public Lcom/google/android/gms/c/gg$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/gg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/c/fz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/gg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/fz;Lcom/google/android/gms/c/fz;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->b()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->b()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->a()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->a()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->a()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->a()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->d()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->b()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->c()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/c/fz;->a()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->d()F

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->b()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->c()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/gms/c/fz;->a()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_0

    cmpg-float v0, v2, v3

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/c/fz;

    check-cast p2, Lcom/google/android/gms/c/fz;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/c/gg$a;->a(Lcom/google/android/gms/c/fz;Lcom/google/android/gms/c/fz;)I

    move-result v0

    return v0
.end method
