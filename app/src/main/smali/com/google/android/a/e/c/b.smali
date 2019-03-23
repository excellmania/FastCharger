.class final Lcom/google/android/a/e/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/c/b$a;,
        Lcom/google/android/a/e/c/b$c;,
        Lcom/google/android/a/e/c/b$d;,
        Lcom/google/android/a/e/c/b$b;
    }
.end annotation


# direct methods
.method private static a(Lcom/google/android/a/e/c/a$a;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/e/c/a$a;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->O:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->s()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    if-ne v4, v8, :cond_2

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->o()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->i()S

    move-result v0

    if-eq v0, v8, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/h/o;I)Lcom/google/android/a/e/c/b$a;
    .locals 8

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-static {p0}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/o;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v6

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    invoke-static {p0}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/o;)[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    new-instance v1, Lcom/google/android/a/h/n;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/google/android/a/h/n;-><init>([B)V

    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/n;->a(I)V

    invoke-static {v1}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/a/h/m$b;->d:F

    :cond_3
    new-instance v1, Lcom/google/android/a/e/c/b$a;

    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/a/e/c/b$a;-><init>(Ljava/util/List;IF)V

    return-object v1
.end method

.method private static a(Lcom/google/android/a/h/o;IJILjava/lang/String;Z)Lcom/google/android/a/e/c/b$c;
    .locals 24

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->m()I

    move-result v22

    new-instance v9, Lcom/google/android/a/e/c/b$c;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Lcom/google/android/a/e/c/b$c;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v10, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v5, "childAtomSize should be positive"

    invoke-static {v2, v5}, Lcom/google/android/a/h/b;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->m()I

    move-result v12

    sget v2, Lcom/google/android/a/e/c/a;->b:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->c:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->X:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->ah:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->d:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->e:I

    if-eq v12, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/a;->f:I

    if-ne v12, v2, :cond_3

    :cond_0
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    invoke-static/range {v2 .. v10}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;IIIJILcom/google/android/a/e/c/b$c;I)V

    :cond_1
    :goto_2
    add-int v2, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    sget v2, Lcom/google/android/a/e/c/a;->i:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->Y:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->m:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->o:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->q:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->t:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->r:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->s:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->as:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->at:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->k:I

    if-eq v12, v2, :cond_4

    sget v2, Lcom/google/android/a/e/c/a;->l:I

    if-ne v12, v2, :cond_5

    :cond_4
    move-object/from16 v11, p0

    move v13, v3

    move v14, v4

    move/from16 v15, p1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v11 .. v21}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;IIIIJLjava/lang/String;ZLcom/google/android/a/e/c/b$c;I)V

    goto :goto_2

    :cond_5
    sget v2, Lcom/google/android/a/e/c/a;->af:I

    if-ne v12, v2, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/ttml+xml"

    const/4 v13, -0x1

    move-wide/from16 v14, p2

    move-object/from16 v16, p5

    invoke-static/range {v11 .. v16}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto :goto_2

    :cond_6
    sget v2, Lcom/google/android/a/e/c/a;->ap:I

    if-ne v12, v2, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/x-quicktime-tx3g"

    const/4 v13, -0x1

    move-wide/from16 v14, p2

    move-object/from16 v16, p5

    invoke-static/range {v11 .. v16}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto :goto_2

    :cond_7
    sget v2, Lcom/google/android/a/e/c/a;->aq:I

    if-ne v12, v2, :cond_8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "application/x-mp4vtt"

    const/4 v13, -0x1

    move-wide/from16 v14, p2

    move-object/from16 v16, p5

    invoke-static/range {v11 .. v16}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto/16 :goto_2

    :cond_8
    sget v2, Lcom/google/android/a/e/c/a;->ar:I

    if-ne v12, v2, :cond_1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "application/ttml+xml"

    const/4 v14, -0x1

    const-wide/16 v18, 0x0

    move-wide/from16 v15, p2

    move-object/from16 v17, p5

    invoke-static/range {v12 .. v19}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/a/r;

    move-result-object v2

    iput-object v2, v9, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto/16 :goto_2

    :cond_9
    return-object v9
.end method

.method public static a(Lcom/google/android/a/e/c/a$a;Lcom/google/android/a/e/c/a$b;Z)Lcom/google/android/a/e/c/i;
    .locals 27

    sget v2, Lcom/google/android/a/e/c/a;->D:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->e(I)Lcom/google/android/a/e/c/a$a;

    move-result-object v8

    sget v2, Lcom/google/android/a/e/c/a;->Q:I

    invoke-virtual {v8, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v2}, Lcom/google/android/a/e/c/b;->e(Lcom/google/android/a/h/o;)I

    move-result v15

    sget v2, Lcom/google/android/a/e/c/i;->b:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/i;->a:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/i;->c:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/i;->d:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/a/e/c/i;->e:I

    if-eq v15, v2, :cond_0

    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_0
    sget v2, Lcom/google/android/a/e/c/a;->M:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v2}, Lcom/google/android/a/e/c/b;->d(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/c/b$d;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/a/e/c/b$d;->a(Lcom/google/android/a/e/c/b$d;)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v4}, Lcom/google/android/a/e/c/b;->c(Lcom/google/android/a/h/o;)J

    move-result-wide v6

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    :goto_1
    sget v2, Lcom/google/android/a/e/c/a;->E:I

    invoke-virtual {v8, v2}, Lcom/google/android/a/e/c/a$a;->e(I)Lcom/google/android/a/e/c/a$a;

    move-result-object v2

    sget v3, Lcom/google/android/a/e/c/a;->F:I

    invoke-virtual {v2, v3}, Lcom/google/android/a/e/c/a$a;->e(I)Lcom/google/android/a/e/c/a$a;

    move-result-object v2

    sget v3, Lcom/google/android/a/e/c/a;->P:I

    invoke-virtual {v8, v3}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v3}, Lcom/google/android/a/e/c/b;->f(Lcom/google/android/a/h/o;)Landroid/util/Pair;

    move-result-object v3

    sget v4, Lcom/google/android/a/e/c/a;->R:I

    invoke-virtual {v2, v4}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static/range {v16 .. v16}, Lcom/google/android/a/e/c/b$d;->b(Lcom/google/android/a/e/c/b$d;)I

    move-result v9

    invoke-static/range {v16 .. v16}, Lcom/google/android/a/e/c/b$d;->c(Lcom/google/android/a/e/c/b$d;)I

    move-result v12

    iget-object v13, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;IJILjava/lang/String;Z)Lcom/google/android/a/e/c/b$c;

    move-result-object v4

    sget v2, Lcom/google/android/a/e/c/a;->N:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->e(I)Lcom/google/android/a/e/c/a$a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/e/c/a$a;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v4, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    if-nez v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v10

    goto :goto_1

    :cond_2
    new-instance v13, Lcom/google/android/a/e/c/i;

    invoke-static/range {v16 .. v16}, Lcom/google/android/a/e/c/b$d;->b(Lcom/google/android/a/e/c/b$d;)I

    move-result v14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v4, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/google/android/a/e/c/b$c;->a:[Lcom/google/android/a/e/c/j;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/google/android/a/e/c/b$c;->c:I

    move/from16 v24, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/android/a/e/c/i;-><init>(IIJJJLcom/google/android/a/r;[Lcom/google/android/a/e/c/j;I[J[J)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/google/android/a/h/o;II)Lcom/google/android/a/e/c/j;
    .locals 5

    add-int/lit8 v1, p1, 0x8

    const/4 v0, 0x0

    :goto_0
    sub-int v2, v1, p1

    if-ge v2, p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v3

    sget v4, Lcom/google/android/a/e/c/a;->Z:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    :cond_0
    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    sget v4, Lcom/google/android/a/e/c/a;->U:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    goto :goto_1

    :cond_2
    sget v4, Lcom/google/android/a/e/c/a;->V:I

    if-ne v3, v4, :cond_0

    invoke-static {p0, v1, v2}, Lcom/google/android/a/e/c/b;->b(Lcom/google/android/a/h/o;II)Lcom/google/android/a/e/c/j;

    move-result-object v0

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static a(Lcom/google/android/a/e/c/i;Lcom/google/android/a/e/c/a$a;)Lcom/google/android/a/e/c/l;
    .locals 33

    sget v2, Lcom/google/android/a/e/c/a;->am:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    move-object/from16 v26, v0

    const/4 v3, 0x0

    sget v2, Lcom/google/android/a/e/c/a;->an:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    sget v2, Lcom/google/android/a/e/c/a;->ao:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    :cond_0
    iget-object v5, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    sget v2, Lcom/google/android/a/e/c/a;->al:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    sget v2, Lcom/google/android/a/e/c/a;->ai:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    iget-object v0, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    move-object/from16 v27, v0

    sget v2, Lcom/google/android/a/e/c/a;->aj:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    :goto_0
    sget v4, Lcom/google/android/a/e/c/a;->ak:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    :goto_1
    const/16 v7, 0xc

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/a/h/o;->s()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/a/h/o;->s()I

    move-result v28

    if-nez v28, :cond_3

    new-instance v2, Lcom/google/android/a/e/c/l;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/a/e/c/l;-><init>([J[II[J[I)V

    :goto_2
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    new-instance v29, Lcom/google/android/a/e/c/b$b;

    move-object/from16 v0, v29

    invoke-direct {v0, v6, v5, v3}, Lcom/google/android/a/e/c/b$b;-><init>(Lcom/google/android/a/h/o;Lcom/google/android/a/h/o;Z)V

    const/16 v3, 0xc

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/a/h/o;->s()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/a/h/o;->s()I

    move-result v22

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/a/h/o;->s()I

    move-result v21

    const/16 v20, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/16 v3, 0xc

    invoke-virtual {v4, v3}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v4}, Lcom/google/android/a/h/o;->s()I

    move-result v6

    :cond_4
    const/16 v17, -0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_5

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->s()I

    move-result v16

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->s()I

    move-result v3

    add-int/lit8 v17, v3, -0x1

    :cond_5
    if-eqz v8, :cond_6

    const-string v3, "audio/raw"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/a/e/c/i;->k:Lcom/google/android/a/r;

    iget-object v7, v7, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v23, :cond_6

    if-nez v6, :cond_6

    if-nez v16, :cond_6

    const/4 v3, 0x1

    :goto_3
    const/4 v9, 0x0

    if-nez v3, :cond_13

    move/from16 v0, v28

    new-array v15, v0, [J

    move/from16 v0, v28

    new-array v14, v0, [I

    move/from16 v0, v28

    new-array v13, v0, [J

    move/from16 v0, v28

    new-array v12, v0, [I

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-wide/from16 v24, v10

    move/from16 v10, v21

    move/from16 v11, v23

    move/from16 v23, v22

    move/from16 v22, v3

    move v3, v5

    move v5, v6

    move/from16 v6, v20

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    move-wide/from16 v20, v18

    move/from16 v18, v7

    :goto_5
    if-nez v18, :cond_7

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/a/e/c/b$b;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/google/android/a/h/b;->b(Z)V

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/android/a/e/c/b$b;->d:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v29

    iget v7, v0, Lcom/google/android/a/e/c/b$b;->c:I

    move-wide/from16 v20, v18

    move/from16 v18, v7

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_9

    :goto_6
    if-nez v6, :cond_8

    if-lez v5, :cond_8

    invoke-virtual {v4}, Lcom/google/android/a/h/o;->s()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/a/h/o;->m()I

    move-result v3

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, -0x1

    :cond_9
    aput-wide v20, v15, v22

    if-nez v8, :cond_b

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/a/h/o;->s()I

    move-result v7

    :goto_7
    aput v7, v14, v22

    aget v7, v14, v22

    if-le v7, v9, :cond_2a

    aget v7, v14, v22

    :goto_8
    int-to-long v0, v3

    move-wide/from16 v30, v0

    add-long v30, v30, v24

    aput-wide v30, v13, v22

    if-nez v2, :cond_c

    const/4 v9, 0x1

    :goto_9
    aput v9, v12, v22

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    aput v9, v12, v22

    add-int/lit8 v9, v16, -0x1

    if-lez v9, :cond_29

    invoke-virtual {v2}, Lcom/google/android/a/h/o;->s()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v16

    move/from16 v16, v9

    :cond_a
    :goto_a
    int-to-long v0, v10

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    add-int/lit8 v9, v23, -0x1

    if-nez v9, :cond_28

    if-lez v11, :cond_28

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/a/h/o;->s()I

    move-result v10

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/a/h/o;->s()I

    move-result v9

    add-int/lit8 v11, v11, -0x1

    :goto_b
    aget v19, v14, v22

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v20, v20, v30

    add-int/lit8 v19, v18, -0x1

    add-int/lit8 v18, v22, 0x1

    move/from16 v22, v18

    move/from16 v23, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v19

    move-wide/from16 v18, v20

    goto/16 :goto_4

    :cond_b
    move v7, v8

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    goto :goto_9

    :cond_d
    if-nez v16, :cond_e

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lcom/google/android/a/h/b;->a(Z)V

    if-nez v23, :cond_f

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/a/h/b;->a(Z)V

    if-nez v7, :cond_10

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lcom/google/android/a/h/b;->a(Z)V

    if-nez v11, :cond_11

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/google/android/a/h/b;->a(Z)V

    if-nez v5, :cond_12

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lcom/google/android/a/h/b;->a(Z)V

    move-object v7, v12

    move-object v6, v13

    move v5, v9

    move-object v4, v14

    move-object v3, v15

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/c/i;->m:[J

    if-nez v2, :cond_15

    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/a/e/c/i;->h:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/a/h/x;->a([JJJ)V

    new-instance v2, Lcom/google/android/a/e/c/l;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/a/e/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    goto :goto_c

    :cond_f
    const/4 v2, 0x0

    goto :goto_d

    :cond_10
    const/4 v2, 0x0

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    :cond_12
    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    move-object/from16 v0, v29

    iget v2, v0, Lcom/google/android/a/e/c/b$b;->a:I

    new-array v2, v2, [J

    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/a/e/c/b$b;->a:I

    new-array v3, v3, [I

    :goto_12
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/a/e/c/b$b;->a()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/a/e/c/b$b;->b:I

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/google/android/a/e/c/b$b;->d:J

    aput-wide v6, v2, v4

    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/a/e/c/b$b;->b:I

    move-object/from16 v0, v29

    iget v5, v0, Lcom/google/android/a/e/c/b$b;->c:I

    aput v5, v3, v4

    goto :goto_12

    :cond_14
    move/from16 v0, v21

    int-to-long v4, v0

    invoke-static {v8, v2, v3, v4, v5}, Lcom/google/android/a/e/c/d;->a(I[J[IJ)Lcom/google/android/a/e/c/d$a;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/a/e/c/d$a;->a:[J

    iget-object v4, v2, Lcom/google/android/a/e/c/d$a;->b:[I

    iget v5, v2, Lcom/google/android/a/e/c/d$a;->c:I

    iget-object v6, v2, Lcom/google/android/a/e/c/d$a;->d:[J

    iget-object v7, v2, Lcom/google/android/a/e/c/d$a;->e:[I

    goto :goto_11

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/c/i;->m:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/e/c/i;->m:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_17

    const/4 v2, 0x0

    :goto_13
    array-length v8, v6

    if-ge v2, v8, :cond_16

    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/a/e/c/i;->n:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/a/e/c/i;->h:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_16
    new-instance v2, Lcom/google/android/a/e/c/l;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/a/e/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_2

    :cond_17
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->m:[J

    array-length v8, v8

    if-ge v2, v8, :cond_19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->n:[J

    aget-wide v18, v8, v2

    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_27

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->m:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/a/e/c/i;->h:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/a/e/c/i;->i:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/a/h/x;->b([JJZZ)I

    move-result v11

    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lcom/google/android/a/h/x;->b([JJZZ)I

    move-result v9

    sub-int v8, v9, v11

    add-int v10, v16, v8

    if-eq v15, v11, :cond_18

    const/4 v8, 0x1

    :goto_15
    or-int/2addr v8, v14

    :goto_16
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_14

    :cond_18
    const/4 v8, 0x0

    goto :goto_15

    :cond_19
    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    const/4 v2, 0x1

    :goto_17
    or-int v23, v14, v2

    if-eqz v23, :cond_1d

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v22, v2

    :goto_18
    if-eqz v23, :cond_1e

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v21, v2

    :goto_19
    if-eqz v23, :cond_1f

    const/4 v10, 0x0

    :goto_1a
    if-eqz v23, :cond_20

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    :goto_1b
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v24, v0

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    :goto_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->m:[J

    array-length v8, v8

    if-ge v2, v8, :cond_22

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->n:[J

    aget-wide v26, v8, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/a/e/c/i;->m:[J

    aget-wide v8, v8, v2

    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_26

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/a/e/c/i;->h:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/a/e/c/i;->i:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/a/h/x;->b([JJZZ)I

    move-result v10

    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v6, v12, v13, v11, v15}, Lcom/google/android/a/h/x;->b([JJZZ)I

    move-result v25

    if-eqz v23, :cond_1a

    sub-int v11, v25, v10

    move-object/from16 v0, v22

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    move/from16 v20, v10

    move/from16 v16, v14

    :goto_1d
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/a/e/c/i;->i:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v28

    aget-wide v10, v6, v20

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/a/e/c/i;->h:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v10

    add-long v10, v10, v28

    aput-wide v10, v24, v16

    if-eqz v23, :cond_1b

    aget v10, v21, v16

    if-le v10, v5, :cond_1b

    aget v5, v4, v20

    :cond_1b
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_1d
    move-object/from16 v22, v3

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v21, v4

    goto/16 :goto_19

    :cond_1f
    move v10, v5

    goto/16 :goto_1a

    :cond_20
    move-object/from16 v17, v7

    goto/16 :goto_1b

    :cond_21
    move v10, v5

    move/from16 v5, v16

    :goto_1e
    add-long v8, v8, v18

    add-int/lit8 v2, v2, 0x1

    move v14, v5

    move-wide/from16 v18, v8

    move v5, v10

    goto/16 :goto_1c

    :cond_22
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1f
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_24

    if-nez v3, :cond_24

    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    :goto_20
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_23
    const/4 v4, 0x0

    goto :goto_20

    :cond_24
    if-nez v3, :cond_25

    new-instance v2, Lcom/google/android/a/t;

    const-string v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    new-instance v2, Lcom/google/android/a/e/c/l;

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/a/e/c/l;-><init>([J[II[J[I)V

    goto/16 :goto_2

    :cond_26
    move v10, v5

    move v5, v14

    goto :goto_1e

    :cond_27
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_16

    :cond_28
    move/from16 v32, v10

    move v10, v9

    move/from16 v9, v32

    goto/16 :goto_b

    :cond_29
    move/from16 v16, v9

    goto/16 :goto_a

    :cond_2a
    move v7, v9

    goto/16 :goto_8
.end method

.method public static a(Lcom/google/android/a/e/c/a$b;Z)Lcom/google/android/a/e/i;
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-virtual {v1, v5}, Lcom/google/android/a/h/o;->b(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/a/h/o;->b()I

    move-result v2

    if-lt v2, v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->m()I

    move-result v3

    sget v4, Lcom/google/android/a/e/c/a;->av:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/o;->a(I)V

    invoke-static {v1}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/i;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_1
.end method

.method private static a(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/i;
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->c(I)V

    new-instance v1, Lcom/google/android/a/h/o;

    invoke-direct {v1}, Lcom/google/android/a/h/o;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    add-int/lit8 v2, v0, -0x8

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    sget v3, Lcom/google/android/a/e/c/a;->aw:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/google/android/a/h/o;->a([BI)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-static {v1}, Lcom/google/android/a/e/c/b;->b(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/i;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/a/h/o;IIIIJLjava/lang/String;ZLcom/google/android/a/e/c/b$c;I)V
    .locals 15

    add-int/lit8 v4, p2, 0x8

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->b(I)V

    const/4 v4, 0x0

    if-eqz p8, :cond_7

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/google/android/a/h/o;->c(I)V

    move v6, v4

    :goto_0
    if-eqz v6, :cond_0

    const/4 v4, 0x1

    if-ne v6, v4, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v5

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->q()I

    move-result v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/google/android/a/h/o;->c(I)V

    :cond_1
    :goto_1
    const/4 v6, 0x0

    sget v7, Lcom/google/android/a/e/c/a;->m:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_9

    const-string v6, "audio/ac3"

    :cond_2
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v7

    move v11, v4

    move v10, v5

    move-object v5, v6

    :goto_3
    sub-int v4, v7, p2

    move/from16 v0, p3

    if-ge v4, v0, :cond_1b

    invoke-virtual {p0, v7}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v9

    if-lez v9, :cond_12

    const/4 v4, 0x1

    :goto_4
    const-string v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lcom/google/android/a/h/b;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v6

    sget v4, Lcom/google/android/a/e/c/a;->i:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_3

    sget v4, Lcom/google/android/a/e/c/a;->Y:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_16

    :cond_3
    const/4 v4, -0x1

    sget v12, Lcom/google/android/a/e/c/a;->I:I

    if-ne v6, v12, :cond_13

    move v4, v7

    :cond_4
    :goto_5
    const/4 v12, -0x1

    if-eq v4, v12, :cond_14

    invoke-static {p0, v4}, Lcom/google/android/a/e/c/b;->d(Lcom/google/android/a/h/o;I)Landroid/util/Pair;

    move-result-object v6

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, [B

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v6}, Lcom/google/android/a/h/d;->a([B)Landroid/util/Pair;

    move-result-object v8

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :cond_5
    :goto_6
    move-object v8, v6

    :cond_6
    add-int/2addr v7, v9

    goto :goto_3

    :cond_7
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/google/android/a/h/o;->c(I)V

    move v6, v4

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x2

    if-ne v6, v4, :cond_17

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->v()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v5

    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lcom/google/android/a/h/o;->c(I)V

    goto/16 :goto_1

    :cond_9
    sget v7, Lcom/google/android/a/e/c/a;->o:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_a

    const-string v6, "audio/eac3"

    goto/16 :goto_2

    :cond_a
    sget v7, Lcom/google/android/a/e/c/a;->q:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_b

    const-string v6, "audio/vnd.dts"

    goto/16 :goto_2

    :cond_b
    sget v7, Lcom/google/android/a/e/c/a;->r:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_c

    sget v7, Lcom/google/android/a/e/c/a;->s:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_d

    :cond_c
    const-string v6, "audio/vnd.dts.hd"

    goto/16 :goto_2

    :cond_d
    sget v7, Lcom/google/android/a/e/c/a;->t:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_e

    const-string v6, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    :cond_e
    sget v7, Lcom/google/android/a/e/c/a;->as:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_f

    const-string v6, "audio/3gpp"

    goto/16 :goto_2

    :cond_f
    sget v7, Lcom/google/android/a/e/c/a;->at:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_10

    const-string v6, "audio/amr-wb"

    goto/16 :goto_2

    :cond_10
    sget v7, Lcom/google/android/a/e/c/a;->k:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_11

    sget v7, Lcom/google/android/a/e/c/a;->l:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_2

    :cond_11
    const-string v6, "audio/raw"

    goto/16 :goto_2

    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_13
    if-eqz p8, :cond_4

    sget v12, Lcom/google/android/a/e/c/a;->j:I

    if-ne v6, v12, :cond_4

    invoke-static {p0, v7, v9}, Lcom/google/android/a/e/c/b;->c(Lcom/google/android/a/h/o;II)I

    move-result v4

    goto/16 :goto_5

    :cond_14
    sget v4, Lcom/google/android/a/e/c/a;->T:I

    if-ne v6, v4, :cond_15

    move-object/from16 v0, p9

    iget-object v4, v0, Lcom/google/android/a/e/c/b$c;->a:[Lcom/google/android/a/e/c/j;

    invoke-static {p0, v7, v9}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;II)Lcom/google/android/a/e/c/j;

    move-result-object v6

    aput-object v6, v4, p10

    :cond_15
    move-object v6, v8

    goto/16 :goto_6

    :cond_16
    sget v4, Lcom/google/android/a/e/c/a;->m:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    sget v4, Lcom/google/android/a/e/c/a;->n:I

    if-ne v6, v4, :cond_18

    add-int/lit8 v4, v7, 0x8

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->b(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-static {p0, v4, v0, v1, v2}, Lcom/google/android/a/h/a;->a(Lcom/google/android/a/h/o;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    :cond_17
    :goto_7
    return-void

    :cond_18
    sget v4, Lcom/google/android/a/e/c/a;->o:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_19

    sget v4, Lcom/google/android/a/e/c/a;->p:I

    if-ne v6, v4, :cond_19

    add-int/lit8 v4, v7, 0x8

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->b(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-static {p0, v4, v0, v1, v2}, Lcom/google/android/a/h/a;->b(Lcom/google/android/a/h/o;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto :goto_7

    :cond_19
    sget v4, Lcom/google/android/a/e/c/a;->q:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_1a

    sget v4, Lcom/google/android/a/e/c/a;->t:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_1a

    sget v4, Lcom/google/android/a/e/c/a;->r:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_1a

    sget v4, Lcom/google/android/a/e/c/a;->s:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    :cond_1a
    sget v4, Lcom/google/android/a/e/c/a;->u:I

    if-ne v6, v4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v12, 0x0

    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v13}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto :goto_7

    :cond_1b
    if-eqz v5, :cond_17

    const-string v4, "audio/raw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v14, 0x2

    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    if-nez v8, :cond_1d

    const/4 v12, 0x0

    :goto_9
    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-static/range {v4 .. v14}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/a/r;

    move-result-object v4

    move-object/from16 v0, p9

    iput-object v4, v0, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto :goto_7

    :cond_1c
    const/4 v14, -0x1

    goto :goto_8

    :cond_1d
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_9
.end method

.method private static a(Lcom/google/android/a/h/o;IIIJILcom/google/android/a/e/c/b$c;I)V
    .locals 14

    add-int/lit8 v2, p1, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->b(I)V

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v9

    const/4 v5, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v2

    const/4 v3, 0x0

    move v6, v2

    :goto_0
    sub-int v2, v6, p1

    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v2

    sub-int/2addr v2, p1

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    :cond_0
    if-nez v3, :cond_d

    :goto_1
    return-void

    :cond_1
    if-lez v11, :cond_3

    const/4 v2, 0x1

    :goto_2
    const-string v4, "childAtomSize should be positive"

    invoke-static {v2, v4}, Lcom/google/android/a/h/b;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    sget v4, Lcom/google/android/a/e/c/a;->G:I

    if-ne v2, v4, :cond_5

    if-nez v3, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Lcom/google/android/a/h/b;->b(Z)V

    const-string v3, "video/avc"

    invoke-static {p0, v7}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;I)Lcom/google/android/a/e/c/b$a;

    move-result-object v2

    iget-object v10, v2, Lcom/google/android/a/e/c/b$a;->a:Ljava/util/List;

    iget v4, v2, Lcom/google/android/a/e/c/b$a;->b:I

    move-object/from16 v0, p7

    iput v4, v0, Lcom/google/android/a/e/c/b$c;->c:I

    if-nez v5, :cond_2

    iget v12, v2, Lcom/google/android/a/e/c/b$a;->c:F

    :cond_2
    move v2, v5

    :goto_4
    add-int v4, v6, v11

    move v6, v4

    move v5, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    sget v4, Lcom/google/android/a/e/c/a;->H:I

    if-ne v2, v4, :cond_7

    if-nez v3, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/android/a/h/b;->b(Z)V

    const-string v4, "video/hevc"

    invoke-static {p0, v7}, Lcom/google/android/a/e/c/b;->b(Lcom/google/android/a/h/o;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/google/android/a/e/c/b$c;->c:I

    move-object v10, v3

    move v2, v5

    move-object v3, v4

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    sget v4, Lcom/google/android/a/e/c/a;->g:I

    if-ne v2, v4, :cond_9

    if-nez v3, :cond_8

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Lcom/google/android/a/h/b;->b(Z)V

    const-string v3, "video/3gpp"

    move v2, v5

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    sget v4, Lcom/google/android/a/e/c/a;->I:I

    if-ne v2, v4, :cond_b

    if-nez v3, :cond_a

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-static {p0, v7}, Lcom/google/android/a/e/c/b;->d(Lcom/google/android/a/h/o;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object v3, v2

    move v2, v5

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    sget v4, Lcom/google/android/a/e/c/a;->T:I

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/a/e/c/b$c;->a:[Lcom/google/android/a/e/c/j;

    invoke-static {p0, v7, v11}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/h/o;II)Lcom/google/android/a/e/c/j;

    move-result-object v4

    aput-object v4, v2, p8

    move v2, v5

    goto :goto_4

    :cond_c
    sget v4, Lcom/google/android/a/e/c/a;->ae:I

    if-ne v2, v4, :cond_e

    invoke-static {p0, v7}, Lcom/google/android/a/e/c/b;->c(Lcom/google/android/a/h/o;I)F

    move-result v12

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-wide/from16 v6, p4

    move/from16 v11, p6

    invoke-static/range {v2 .. v12}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;

    move-result-object v2

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/google/android/a/e/c/b$c;->b:Lcom/google/android/a/r;

    goto/16 :goto_1

    :cond_e
    move v2, v5

    goto/16 :goto_4
.end method

.method private static b(Lcom/google/android/a/h/o;I)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/o;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v7

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {p0, v12}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v8

    move v0, v1

    move v2, v4

    :goto_1
    if-ge v0, v8, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v4

    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/a/h/o;->b(I)V

    new-array v7, v4, [B

    move v3, v1

    move v0, v1

    :goto_2
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v12}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v8

    move v2, v0

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v9

    sget-object v10, Lcom/google/android/a/h/m;->a:[B

    sget-object v11, Lcom/google/android/a/h/m;->a:[B

    array-length v11, v11

    invoke-static {v10, v1, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v10, Lcom/google/android/a/h/m;->a:[B

    array-length v10, v10

    add-int/2addr v2, v10

    iget-object v10, p0, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v9

    invoke-virtual {p0, v9}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method private static b(Lcom/google/android/a/h/o;II)Lcom/google/android/a/e/c/j;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    sget v5, Lcom/google/android/a/e/c/a;->W:I

    if-ne v4, v5, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    shr-int/lit8 v3, v2, 0x8

    if-ne v3, v0, :cond_0

    :goto_1
    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    new-array v3, v3, [B

    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/a/h/o;->a([BII)V

    new-instance v1, Lcom/google/android/a/e/c/j;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/a/e/c/j;-><init>(ZI[B)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static b(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/i;
    .locals 9

    const/4 v8, 0x4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    sget v1, Lcom/google/android/a/e/c/a;->aA:I

    if-ne v0, v1, :cond_6

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v5

    if-ge v5, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v6

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/o;->c(I)V

    sget v7, Lcom/google/android/a/e/c/a;->ax:I

    if-ne v6, v7, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/android/a/h/o;->d(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget v7, Lcom/google/android/a/e/c/a;->ay:I

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/android/a/h/o;->d(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v7, Lcom/google/android/a/e/c/a;->az:I

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v8}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "com.apple.iTunes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lcom/google/android/a/e/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/e/i;

    move-result-object v3

    :cond_5
    return-object v3

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->b(I)V

    goto :goto_0
.end method

.method private static c(Lcom/google/android/a/h/o;I)F
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/google/android/a/h/o;II)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v1

    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lcom/google/android/a/h/b;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    sget v3, Lcom/google/android/a/e/c/a;->I:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static c(Lcom/google/android/a/h/o;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static d(Lcom/google/android/a/h/o;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/o;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    invoke-static {p0}, Lcom/google/android/a/e/c/b;->g(Lcom/google/android/a/h/o;)I

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    invoke-static {p0}, Lcom/google/android/a/e/c/b;->g(Lcom/google/android/a/h/o;)I

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    invoke-static {p0}, Lcom/google/android/a/e/c/b;->g(Lcom/google/android/a/h/o;)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/a/h/o;->a([BII)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "audio/mpeg"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v0, "video/mp4v-es"

    goto :goto_0

    :sswitch_2
    const-string v0, "video/avc"

    goto :goto_0

    :sswitch_3
    const-string v0, "video/hevc"

    goto :goto_0

    :sswitch_4
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_5
    const-string v0, "audio/ac3"

    goto :goto_0

    :sswitch_6
    const-string v0, "audio/eac3"

    goto :goto_0

    :sswitch_7
    const-string v1, "audio/vnd.dts"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :sswitch_8
    const-string v1, "audio/vnd.dts.hd"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static d(Lcom/google/android/a/h/o;)Lcom/google/android/a/e/c/b$d;
    .locals 11

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v6

    if-nez v6, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v7

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->d()I

    move-result v8

    if-nez v6, :cond_0

    move v1, v3

    :cond_0
    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_1

    iget-object v9, p0, Lcom/google/android/a/h/o;->a:[B

    add-int v10, v8, v5

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    move v0, v4

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->c(I)V

    const-wide/16 v0, -0x1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v6

    const/high16 v8, 0x10000

    if-nez v2, :cond_6

    if-ne v5, v8, :cond_6

    neg-int v9, v8

    if-ne v3, v9, :cond_6

    if-nez v6, :cond_6

    const/16 v2, 0x5a

    :goto_3
    new-instance v3, Lcom/google/android/a/e/c/b$d;

    invoke-direct {v3, v7, v0, v1, v2}, Lcom/google/android/a/e/c/b$d;-><init>(IJI)V

    return-object v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v0

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    neg-int v9, v8

    if-ne v5, v9, :cond_7

    if-ne v3, v8, :cond_7

    if-nez v6, :cond_7

    const/16 v2, 0x10e

    goto :goto_3

    :cond_7
    neg-int v9, v8

    if-ne v2, v9, :cond_8

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    neg-int v2, v8

    if-ne v6, v2, :cond_8

    const/16 v2, 0xb4

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_3
.end method

.method private static e(Lcom/google/android/a/h/o;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    return v0
.end method

.method private static f(Lcom/google/android/a/h/o;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/o;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v4

    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->g()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static g(Lcom/google/android/a/h/o;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method
