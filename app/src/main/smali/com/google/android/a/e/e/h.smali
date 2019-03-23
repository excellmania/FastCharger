.class final Lcom/google/android/a/e/e/h;
.super Lcom/google/android/a/e/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/e/h$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/google/android/a/e/e/n;

.field private final d:[Z

.field private final e:Lcom/google/android/a/e/e/k;

.field private final f:Lcom/google/android/a/e/e/k;

.field private final g:Lcom/google/android/a/e/e/k;

.field private final h:Lcom/google/android/a/e/e/k;

.field private final i:Lcom/google/android/a/e/e/k;

.field private final j:Lcom/google/android/a/e/e/h$a;

.field private k:J

.field private l:J

.field private final m:Lcom/google/android/a/h/o;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/e/n;)V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    iput-object p2, p0, Lcom/google/android/a/e/e/h;->c:Lcom/google/android/a/e/e/n;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->d:[Z

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/h$a;

    invoke-direct {v0, p1}, Lcom/google/android/a/e/e/h$a;-><init>(Lcom/google/android/a/e/m;)V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->j:Lcom/google/android/a/e/e/h$a;

    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0}, Lcom/google/android/a/h/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    return-void
.end method

.method private static a(Lcom/google/android/a/e/e/k;Lcom/google/android/a/e/e/k;Lcom/google/android/a/e/e/k;)Lcom/google/android/a/r;
    .locals 13

    iget v0, p0, Lcom/google/android/a/e/e/k;->b:I

    iget v1, p1, Lcom/google/android/a/e/e/k;->b:I

    add-int/2addr v0, v1

    iget v1, p2, Lcom/google/android/a/e/e/k;->b:I

    add-int/2addr v0, v1

    new-array v8, v0, [B

    iget-object v0, p0, Lcom/google/android/a/e/e/k;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/a/e/e/k;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/a/e/e/k;->b:I

    iget v3, p1, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p2, Lcom/google/android/a/e/e/k;->a:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/a/e/e/k;->b:I

    iget v3, p1, Lcom/google/android/a/e/e/k;->b:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/a/e/e/k;->a:[B

    iget v1, p1, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/a/h/m;->a([BI)I

    new-instance v3, Lcom/google/android/a/h/n;

    iget-object v0, p1, Lcom/google/android/a/e/e/k;->a:[B

    invoke-direct {v3, v0}, Lcom/google/android/a/h/n;-><init>([B)V

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->c(I)I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    const/16 v0, 0x58

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x59

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x8

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    if-lez v1, :cond_3

    rsub-int/lit8 v0, v1, 0x8

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v4

    const/4 v0, 0x3

    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v9

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v11

    const/4 v0, 0x1

    if-eq v4, v0, :cond_5

    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    :cond_5
    const/4 v0, 0x2

    move v2, v0

    :goto_1
    const/4 v0, 0x1

    if-ne v4, v0, :cond_8

    const/4 v0, 0x2

    :goto_2
    add-int v4, v5, v9

    mul-int/2addr v2, v4

    sub-int/2addr v6, v2

    add-int v2, v10, v11

    mul-int/2addr v0, v2

    sub-int/2addr v7, v0

    :cond_6
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :goto_3
    if-gt v0, v1, :cond_a

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v3}, Lcom/google/android/a/e/e/h;->a(Lcom/google/android/a/h/n;)V

    :cond_b
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    :cond_c
    invoke-static {v3}, Lcom/google/android/a/e/e/h;->b(Lcom/google/android/a/h/n;)V

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/a/h/n;->d()I

    move-result v1

    if-ge v0, v1, :cond_d

    add-int/lit8 v1, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/google/android/a/h/n;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/n;->b(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_f

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_e
    move v10, v0

    :goto_5
    const/4 v0, 0x0

    const-string v1, "video/hevc"

    const/4 v2, -0x1

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, -0x1

    invoke-static/range {v0 .. v10}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0

    :cond_f
    sget-object v2, Lcom/google/android/a/h/m;->b:[F

    array-length v2, v2

    if-ge v1, v2, :cond_10

    sget-object v0, Lcom/google/android/a/h/m;->b:[F

    aget v0, v0, v1

    move v10, v0

    goto :goto_5

    :cond_10
    const-string v2, "H265Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v10, v0

    goto :goto_5
.end method

.method private a(JIIJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->j:Lcom/google/android/a/e/e/h$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/a/e/e/h$a;->a(JIIJ)V

    return-void
.end method

.method private static a(Lcom/google/android/a/h/n;)V
    .locals 7

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_5

    move v4, v3

    :goto_1
    const/4 v0, 0x6

    if-ge v4, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    :cond_0
    if-ne v5, v1, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    shl-int/lit8 v6, v5, 0x1

    add-int/lit8 v6, v6, 0x4

    shl-int v6, v2, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-le v5, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->e()I

    :cond_2
    move v0, v3

    :goto_3
    if-ge v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->e()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->j:Lcom/google/android/a/e/e/h$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/h$a;->a([BII)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    goto :goto_0
.end method

.method private b(JIIJ)V
    .locals 5

    const/4 v4, 0x5

    iget-boolean v0, p0, Lcom/google/android/a/e/e/h;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->j:Lcom/google/android/a/e/e/h$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/h$a;->a(JI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    iget-object v0, v0, Lcom/google/android/a/e/e/k;->a:[B

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    iget v1, v1, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/a/h/m;->a([BI)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    iget-object v2, v2, Lcom/google/android/a/e/e/k;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/a/h/o;->a([BI)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->c:Lcom/google/android/a/e/e/n;

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/a/e/e/n;->a(JLcom/google/android/a/h/o;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    iget-object v0, v0, Lcom/google/android/a/e/e/k;->a:[B

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    iget v1, v1, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/a/h/m;->a([BI)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    iget-object v2, v2, Lcom/google/android/a/e/e/k;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/a/h/o;->a([BI)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->c:Lcom/google/android/a/e/e/n;

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->m:Lcom/google/android/a/h/o;

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/a/e/e/n;->a(JLcom/google/android/a/h/o;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->b(I)Z

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->b(I)Z

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p4}, Lcom/google/android/a/e/e/k;->b(I)Z

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->a:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    iget-object v2, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    iget-object v3, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-static {v1, v2, v3}, Lcom/google/android/a/e/e/h;->a(Lcom/google/android/a/e/e/k;Lcom/google/android/a/e/e/k;Lcom/google/android/a/e/e/k;)Lcom/google/android/a/r;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/e/h;->b:Z

    goto/16 :goto_0
.end method

.method private static b(Lcom/google/android/a/h/n;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    move-result v5

    move v4, v2

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v4, v5, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->b()Z

    move-result v1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/n;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    move v1, v2

    :goto_2
    if-gt v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/n;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    move-result v7

    add-int v0, v6, v7

    move v1, v2

    :goto_3
    if-ge v1, v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/n;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v2

    :goto_4
    if-ge v1, v7, :cond_3

    invoke-virtual {p0}, Lcom/google/android/a/h/n;->d()I

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/n;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    move v3, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->d:[Z

    invoke-static {v0}, Lcom/google/android/a/h/m;->a([Z)V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->e:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->i:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/h;->j:Lcom/google/android/a/e/e/h$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/h$a;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/e/e/h;->k:J

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/h;->l:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 12

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->c()I

    move-result v8

    iget-object v9, p1, Lcom/google/android/a/h/o;->a:[B

    iget-wide v2, p0, Lcom/google/android/a/e/e/h;->k:J

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/e/h;->k:J

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->a:Lcom/google/android/a/e/m;

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/e/h;->d:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/android/a/h/m;->a([BII[Z)I

    move-result v10

    if-ne v10, v8, :cond_2

    invoke-direct {p0, v9, v0, v8}, Lcom/google/android/a/e/e/h;->a([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v9, v10}, Lcom/google/android/a/h/m;->c([BI)I

    move-result v11

    sub-int v1, v10, v0

    if-lez v1, :cond_3

    invoke-direct {p0, v9, v0, v10}, Lcom/google/android/a/e/e/h;->a([BII)V

    :cond_3
    sub-int v4, v8, v10

    iget-wide v2, p0, Lcom/google/android/a/e/e/h;->k:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    if-gez v1, :cond_4

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lcom/google/android/a/e/e/h;->l:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/e/e/h;->b(JIIJ)V

    iget-wide v6, p0, Lcom/google/android/a/e/e/h;->l:J

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/e/e/h;->a(JIIJ)V

    add-int/lit8 v0, v10, 0x3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method
