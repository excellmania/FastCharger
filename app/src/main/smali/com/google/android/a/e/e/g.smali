.class final Lcom/google/android/a/e/e/g;
.super Lcom/google/android/a/e/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/e/g$1;,
        Lcom/google/android/a/e/e/g$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/google/android/a/e/e/n;

.field private final d:[Z

.field private final e:Lcom/google/android/a/e/e/g$a;

.field private final f:Lcom/google/android/a/e/e/k;

.field private final g:Lcom/google/android/a/e/e/k;

.field private final h:Lcom/google/android/a/e/e/k;

.field private i:J

.field private j:J

.field private final k:Lcom/google/android/a/h/o;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/e/n;ZZ)V
    .locals 3

    const/16 v2, 0x80

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    iput-object p2, p0, Lcom/google/android/a/e/e/g;->c:Lcom/google/android/a/e/e/n;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->d:[Z

    new-instance v0, Lcom/google/android/a/e/e/g$a;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/a/e/e/g$a;-><init>(Lcom/google/android/a/e/m;ZZ)V

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/e/e/k;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/e/k;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0}, Lcom/google/android/a/h/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/g;->k:Lcom/google/android/a/h/o;

    return-void
.end method

.method private static a(Lcom/google/android/a/e/e/k;)Lcom/google/android/a/h/n;
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/e/e/k;->a:[B

    iget v1, p0, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v0, v1}, Lcom/google/android/a/h/m;->a([BI)I

    move-result v0

    new-instance v1, Lcom/google/android/a/h/n;

    iget-object v2, p0, Lcom/google/android/a/e/e/k;->a:[B

    invoke-direct {v1, v2, v0}, Lcom/google/android/a/h/n;-><init>([BI)V

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/n;->b(I)V

    return-object v1
.end method

.method private a(JIIJ)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/a/e/e/g;->b:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/g$a;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/a/e/e/k;->b(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/a/e/e/k;->b(I)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/a/e/e/g;->b:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    iget-object v4, v4, Lcom/google/android/a/e/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    iget v5, v5, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    iget-object v4, v4, Lcom/google/android/a/e/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    iget v5, v5, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-static {v4}, Lcom/google/android/a/e/e/g;->a(Lcom/google/android/a/e/e/k;)Lcom/google/android/a/h/n;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$b;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-static {v4}, Lcom/google/android/a/e/e/g;->a(Lcom/google/android/a/e/e/k;)Lcom/google/android/a/h/n;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/a/h/m;->b(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$a;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/a/e/e/g;->a:Lcom/google/android/a/e/m;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v5, "video/avc"

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    iget v10, v15, Lcom/google/android/a/h/m$b;->b:I

    iget v11, v15, Lcom/google/android/a/h/m$b;->c:I

    const/4 v13, -0x1

    iget v14, v15, Lcom/google/android/a/h/m$b;->d:F

    invoke-static/range {v4 .. v14}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/a/e/e/g;->b:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v4, v15}, Lcom/google/android/a/e/e/g$a;->a(Lcom/google/android/a/h/m$b;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/a/e/e/g$a;->a(Lcom/google/android/a/h/m$a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->a()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->a()V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/a/e/e/k;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    iget-object v4, v4, Lcom/google/android/a/e/e/k;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    iget v5, v5, Lcom/google/android/a/e/e/k;->b:I

    invoke-static {v4, v5}, Lcom/google/android/a/h/m;->a([BI)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->k:Lcom/google/android/a/h/o;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    iget-object v6, v6, Lcom/google/android/a/e/e/k;->a:[B

    invoke-virtual {v5, v6, v4}, Lcom/google/android/a/h/o;->a([BI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->k:Lcom/google/android/a/h/o;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/a/h/o;->b(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->c:Lcom/google/android/a/e/e/n;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->k:Lcom/google/android/a/h/o;

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/a/e/e/n;->a(JLcom/google/android/a/h/o;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/a/e/e/g$a;->a(JI)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-static {v4}, Lcom/google/android/a/e/e/g;->a(Lcom/google/android/a/e/e/k;)Lcom/google/android/a/h/n;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/a/h/m;->a(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$b;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v5, v4}, Lcom/google/android/a/e/e/g$a;->a(Lcom/google/android/a/h/m$b;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->a()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-static {v4}, Lcom/google/android/a/e/e/g;->a(Lcom/google/android/a/e/e/k;)Lcom/google/android/a/h/n;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/a/h/m;->b(Lcom/google/android/a/h/n;)Lcom/google/android/a/h/m$a;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v5, v4}, Lcom/google/android/a/e/e/g$a;->a(Lcom/google/android/a/h/m$a;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v4}, Lcom/google/android/a/e/e/k;->a()V

    goto/16 :goto_0
.end method

.method private a(JIJ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/a/e/e/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p3}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p3}, Lcom/google/android/a/e/e/k;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p3}, Lcom/google/android/a/e/e/k;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/a/e/e/g$a;->a(JIJ)V

    return-void
.end method

.method private a([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/e/e/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/k;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/e/e/g$a;->a([BII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->d:[Z

    invoke-static {v0}, Lcom/google/android/a/h/m;->a([Z)V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->f:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->g:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->h:Lcom/google/android/a/e/e/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/k;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/g;->e:Lcom/google/android/a/e/e/g$a;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/g$a;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/e/e/g;->i:J

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/g;->j:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->c()I

    move-result v8

    iget-object v9, p1, Lcom/google/android/a/h/o;->a:[B

    iget-wide v2, p0, Lcom/google/android/a/e/e/g;->i:J

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/e/g;->i:J

    iget-object v1, p0, Lcom/google/android/a/e/e/g;->a:Lcom/google/android/a/e/m;

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/a/e/e/g;->d:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/google/android/a/h/m;->a([BII[Z)I

    move-result v10

    if-ne v10, v8, :cond_1

    invoke-direct {p0, v9, v0, v8}, Lcom/google/android/a/e/e/g;->a([BII)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v9, v10}, Lcom/google/android/a/h/m;->b([BI)I

    move-result v11

    sub-int v1, v10, v0

    if-lez v1, :cond_2

    invoke-direct {p0, v9, v0, v10}, Lcom/google/android/a/e/e/g;->a([BII)V

    :cond_2
    sub-int v4, v8, v10

    iget-wide v2, p0, Lcom/google/android/a/e/e/g;->i:J

    int-to-long v6, v4

    sub-long/2addr v2, v6

    if-gez v1, :cond_3

    neg-int v5, v1

    :goto_1
    iget-wide v6, p0, Lcom/google/android/a/e/e/g;->j:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/e/e/g;->a(JIIJ)V

    iget-wide v5, p0, Lcom/google/android/a/e/e/g;->j:J

    move-object v1, p0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/android/a/e/e/g;->a(JIJ)V

    add-int/lit8 v0, v10, 0x3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method
