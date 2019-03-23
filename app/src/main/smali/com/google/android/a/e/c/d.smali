.class final Lcom/google/android/a/e/c/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/c/d$a;
    }
.end annotation


# direct methods
.method public static a(I[J[IJ)Lcom/google/android/a/e/c/d$a;
    .locals 19

    const/16 v2, 0x2000

    div-int v14, v2, p0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v5, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, p2, v2

    invoke-static {v3, v14}, Lcom/google/android/a/h/x;->a(II)I

    move-result v3

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_0

    :cond_0
    new-array v3, v5, [J

    new-array v4, v5, [I

    const/4 v9, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move/from16 v18, v5

    move v5, v9

    move v9, v8

    move/from16 v8, v18

    :goto_1
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v2, v10, :cond_2

    aget v12, p2, v2

    aget-wide v10, p1, v2

    move/from16 v18, v8

    move v8, v9

    move v9, v5

    move/from16 v5, v18

    :goto_2
    if-lez v12, :cond_1

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput-wide v10, v3, v5

    mul-int v13, p0, v15

    aput v13, v4, v5

    aget v13, v4, v5

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v0, v8

    move-wide/from16 v16, v0

    mul-long v16, v16, p3

    aput-wide v16, v6, v5

    const/4 v9, 0x1

    aput v9, v7, v5

    aget v9, v4, v5

    int-to-long v0, v9

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    add-int v9, v8, v15

    sub-int v8, v12, v15

    add-int/lit8 v5, v5, 0x1

    move v12, v8

    move v8, v9

    move v9, v13

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v5

    move v5, v9

    move v9, v8

    move/from16 v8, v18

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/google/android/a/e/c/d$a;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/a/e/c/d$a;-><init>([J[II[J[I)V

    return-object v2
.end method
