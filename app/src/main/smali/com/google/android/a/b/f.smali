.class public Lcom/google/android/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/o$a;
.implements Lcom/google/android/a/v;
.implements Lcom/google/android/a/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/b/f$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/a/k;

.field private final c:Lcom/google/android/a/b/g;

.field private final d:Lcom/google/android/a/b/e;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/a/e/c;

.field private final h:I

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/a/b/f$a;

.field private final k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Z

.field private r:Lcom/google/android/a/g/o;

.field private s:Z

.field private t:Ljava/io/IOException;

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:Lcom/google/android/a/r;

.field private z:Lcom/google/android/a/b/i;


# direct methods
.method public constructor <init>(Lcom/google/android/a/b/g;Lcom/google/android/a/k;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/b/f;-><init>(Lcom/google/android/a/b/g;Lcom/google/android/a/k;ILandroid/os/Handler;Lcom/google/android/a/b/f$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/b/g;Lcom/google/android/a/k;ILandroid/os/Handler;Lcom/google/android/a/b/f$a;I)V
    .locals 8

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/b/f;-><init>(Lcom/google/android/a/b/g;Lcom/google/android/a/k;ILandroid/os/Handler;Lcom/google/android/a/b/f$a;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/b/g;Lcom/google/android/a/k;ILandroid/os/Handler;Lcom/google/android/a/b/f$a;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    iput-object p2, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    iput p3, p0, Lcom/google/android/a/b/f;->h:I

    iput-object p4, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    iput p6, p0, Lcom/google/android/a/b/f;->a:I

    iput p7, p0, Lcom/google/android/a/b/f;->k:I

    new-instance v0, Lcom/google/android/a/b/e;

    invoke-direct {v0}, Lcom/google/android/a/b/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/b/f;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/a/e/c;

    invoke-interface {p2}, Lcom/google/android/a/k;->b()Lcom/google/android/a/g/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/g/b;)V

    iput-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/b/f;->l:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/b/f;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/b/f;->a:I

    return v0
.end method

.method private a(JIILcom/google/android/a/b/i;JJ)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/b/f$1;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lcom/google/android/a/b/f$1;-><init>(Lcom/google/android/a/b/f;JIILcom/google/android/a/b/i;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(JIILcom/google/android/a/b/i;JJJJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/a/b/f$2;

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/a/b/f$2;-><init>(Lcom/google/android/a/b/f;JIILcom/google/android/a/b/i;JJJJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/a/b/f$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/b/f$5;-><init>(Lcom/google/android/a/b/f;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/b/i;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/a/b/f$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/b/f$6;-><init>(Lcom/google/android/a/b/f;Lcom/google/android/a/b/i;IJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/b/f$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/b/f$4;-><init>(Lcom/google/android/a/b/f;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/a/b/c;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/a/b/b;

    return v0
.end method

.method static synthetic b(Lcom/google/android/a/b/f;)Lcom/google/android/a/b/f$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    return-object v0
.end method

.method private d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/b/f;->o:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->a()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->h()V

    goto :goto_0
.end method

.method private d(I)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    iget-wide v4, v0, Lcom/google/android/a/b/b;->i:J

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    iget-wide v2, v0, Lcom/google/android/a/b/b;->h:J

    iput-boolean v1, p0, Lcom/google/android/a/b/f;->s:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/b/b;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/a/e/c;->a(I)V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/a/b/f;->a(JJ)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    invoke-direct {p0}, Lcom/google/android/a/b/f;->g()V

    return-void
.end method

.method private f(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->j:Lcom/google/android/a/b/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/b/f$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/a/b/f$3;-><init>(Lcom/google/android/a/b/f;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/b/f;->v:I

    return-void
.end method

.method private h()V
    .locals 12

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/google/android/a/b/f;->i()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    if-eqz v6, :cond_5

    move v7, v0

    :goto_0
    iget-object v6, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v6}, Lcom/google/android/a/g/o;->a()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    move v6, v0

    :goto_1
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v0, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-nez v0, :cond_1

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/a/b/f;->p:J

    sub-long v0, v8, v0

    const-wide/16 v10, 0x7d0

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    :cond_2
    iput-wide v8, p0, Lcom/google/android/a/b/f;->p:J

    invoke-direct {p0}, Lcom/google/android/a/b/f;->l()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget v0, v0, Lcom/google/android/a/b/e;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/a/b/f;->d(I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v1, v1, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-nez v1, :cond_7

    move-wide v4, v2

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    iget-wide v2, p0, Lcom/google/android/a/b/f;->m:J

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/a/k;->a(Ljava/lang/Object;JJZ)Z

    move-result v0

    if-eqz v7, :cond_8

    iget-wide v0, p0, Lcom/google/android/a/b/f;->w:J

    sub-long v0, v8, v0

    iget v2, p0, Lcom/google/android/a/b/f;->v:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/a/b/f;->e(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/a/b/f;->j()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v7, v1

    goto :goto_0

    :cond_6
    move v6, v1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/a/b/f;->i()J

    move-result-wide v4

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v1}, Lcom/google/android/a/g/o;->a()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/a/b/f;->k()V

    goto :goto_3
.end method

.method private i()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    iget-wide v0, v0, Lcom/google/android/a/b/b;->i:J

    goto :goto_0
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v2, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    invoke-direct {p0, v2}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/a/b/f;->l()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget v0, v0, Lcom/google/android/a/b/e;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/a/b/f;->d(I)Z

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v0, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/a/b/c;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/b/f;->f(J)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->k()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    if-ne v2, v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->l()V

    iget-object v1, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v0, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/a/b/c;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/b/f;->f(J)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget v0, v0, Lcom/google/android/a/b/e;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/a/b/f;->d(I)Z

    invoke-direct {p0}, Lcom/google/android/a/b/f;->g()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 11

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v10, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/b/f;->x:J

    invoke-direct {p0, v10}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v10

    check-cast v0, Lcom/google/android/a/b/b;

    iget-object v1, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0, v1}, Lcom/google/android/a/b/b;->a(Lcom/google/android/a/e/c;)V

    iget-object v1, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/a/b/f;->o:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/a/b/b;->e:Lcom/google/android/a/g/h;

    iget-wide v1, v1, Lcom/google/android/a/g/h;->e:J

    iget v3, v0, Lcom/google/android/a/b/b;->b:I

    iget v4, v0, Lcom/google/android/a/b/b;->c:I

    iget-object v5, v0, Lcom/google/android/a/b/b;->d:Lcom/google/android/a/b/i;

    iget-wide v6, v0, Lcom/google/android/a/b/b;->h:J

    iget-wide v8, v0, Lcom/google/android/a/b/b;->i:J

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/a/b/f;->a(JIILcom/google/android/a/b/i;JJ)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0, v10, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, v10, Lcom/google/android/a/b/c;->e:Lcom/google/android/a/g/h;

    iget-wide v1, v0, Lcom/google/android/a/g/h;->e:J

    iget v3, v10, Lcom/google/android/a/b/c;->b:I

    iget v4, v10, Lcom/google/android/a/b/c;->c:I

    iget-object v5, v10, Lcom/google/android/a/b/c;->d:Lcom/google/android/a/b/i;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/a/b/f;->a(JIILcom/google/android/a/b/i;JJ)V

    goto :goto_1
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/a/b/e;->c:Z

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v1, p0, Lcom/google/android/a/b/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/a/b/e;->a:I

    iget-object v2, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    iget-object v3, p0, Lcom/google/android/a/b/f;->f:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    :goto_0
    iget-object v4, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/a/b/g;->a(Ljava/util/List;JLcom/google/android/a/b/e;)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-boolean v0, v0, Lcom/google/android/a/b/e;->c:Z

    iput-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/b/f;->m:J

    goto :goto_0
.end method

.method private m()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(IJLcom/google/android/a/s;Lcom/google/android/a/u;)I
    .locals 10

    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput-wide p2, p0, Lcom/google/android/a/b/f;->m:J

    iget-boolean v0, p0, Lcom/google/android/a/b/f;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v4

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->g()Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    move-object v5, v0

    :goto_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    invoke-virtual {v0}, Lcom/google/android/a/b/b;->a()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v6}, Lcom/google/android/a/e/c;->c()I

    move-result v6

    if-gt v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    move-object v5, v0

    goto :goto_3

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, v5, Lcom/google/android/a/b/b;->d:Lcom/google/android/a/b/i;

    iget-object v6, p0, Lcom/google/android/a/b/f;->z:Lcom/google/android/a/b/i;

    invoke-virtual {v0, v6}, Lcom/google/android/a/b/i;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, v5, Lcom/google/android/a/b/b;->c:I

    iget-wide v8, v5, Lcom/google/android/a/b/b;->h:J

    invoke-direct {p0, v0, v6, v8, v9}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/i;IJ)V

    :cond_5
    iput-object v0, p0, Lcom/google/android/a/b/f;->z:Lcom/google/android/a/b/i;

    if-nez v3, :cond_6

    iget-boolean v0, v5, Lcom/google/android/a/b/b;->a:Z

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {v5}, Lcom/google/android/a/b/b;->b()Lcom/google/android/a/r;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/a/b/f;->y:Lcom/google/android/a/r;

    invoke-virtual {v0, v6}, Lcom/google/android/a/r;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iput-object v0, p4, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    invoke-virtual {v5}, Lcom/google/android/a/b/b;->c()Lcom/google/android/a/d/a;

    move-result-object v1

    iput-object v1, p4, Lcom/google/android/a/s;->b:Lcom/google/android/a/d/a;

    iput-object v0, p0, Lcom/google/android/a/b/f;->y:Lcom/google/android/a/r;

    const/4 v0, -0x4

    goto :goto_1

    :cond_7
    iput-object v0, p0, Lcom/google/android/a/b/f;->y:Lcom/google/android/a/r;

    :cond_8
    if-nez v3, :cond_a

    iget-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    goto :goto_1

    :cond_9
    move v0, v4

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0, p5}, Lcom/google/android/a/e/c;->a(Lcom/google/android/a/u;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v6, p5, Lcom/google/android/a/u;->e:J

    iget-wide v8, p0, Lcom/google/android/a/b/f;->n:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_c

    :goto_4
    iget v0, p5, Lcom/google/android/a/u;->d:I

    if-eqz v1, :cond_b

    const/high16 v2, 0x8000000

    :cond_b
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/a/u;->d:I

    invoke-virtual {p0, v5, p5}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/m;Lcom/google/android/a/u;)V

    const/4 v0, -0x3

    goto/16 :goto_1

    :cond_c
    move v1, v2

    goto :goto_4

    :cond_d
    move v0, v4

    goto/16 :goto_1
.end method

.method public a(I)Lcom/google/android/a/r;
    .locals 2

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0, p1}, Lcom/google/android/a/b/g;->a(I)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IJ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/b/f;->u:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/google/android/a/b/f;->u:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/a/h/b;->b(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/a/b/f;->l:I

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0, p1}, Lcom/google/android/a/b/g;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    iget v1, p0, Lcom/google/android/a/b/f;->h:I

    invoke-interface {v0, p0, v1}, Lcom/google/android/a/k;->a(Ljava/lang/Object;I)V

    iput-object v4, p0, Lcom/google/android/a/b/f;->z:Lcom/google/android/a/b/i;

    iput-object v4, p0, Lcom/google/android/a/b/f;->y:Lcom/google/android/a/r;

    iput-wide p2, p0, Lcom/google/android/a/b/f;->m:J

    iput-wide p2, p0, Lcom/google/android/a/b/f;->n:J

    iput-boolean v2, p0, Lcom/google/android/a/b/f;->q:Z

    invoke-direct {p0, p2, p3}, Lcom/google/android/a/b/f;->d(J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected a(Lcom/google/android/a/b/m;Lcom/google/android/a/u;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/a/g/o$c;)V
    .locals 14

    const-wide/16 v6, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v0, p0, Lcom/google/android/a/b/f;->x:J

    sub-long v12, v10, v0

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v5, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0, v5}, Lcom/google/android/a/b/g;->a(Lcom/google/android/a/b/c;)V

    invoke-direct {p0, v5}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/google/android/a/b/b;

    invoke-virtual {v5}, Lcom/google/android/a/b/c;->e()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/a/b/b;->b:I

    iget v4, v0, Lcom/google/android/a/b/b;->c:I

    iget-object v5, v0, Lcom/google/android/a/b/b;->d:Lcom/google/android/a/b/i;

    iget-wide v6, v0, Lcom/google/android/a/b/b;->h:J

    iget-wide v8, v0, Lcom/google/android/a/b/b;->i:J

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/a/b/f;->a(JIILcom/google/android/a/b/i;JJJJ)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->h()V

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/a/b/c;->e()J

    move-result-wide v1

    iget v3, v5, Lcom/google/android/a/b/c;->b:I

    iget v4, v5, Lcom/google/android/a/b/c;->c:I

    iget-object v5, v5, Lcom/google/android/a/b/c;->d:Lcom/google/android/a/b/i;

    move-object v0, p0

    move-wide v8, v6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/a/b/f;->a(JIILcom/google/android/a/b/i;JJJJ)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/g/o$c;Ljava/io/IOException;)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    iget v0, p0, Lcom/google/android/a/b/f;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/b/f;->v:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/b/f;->w:J

    invoke-direct {p0, p2}, Lcom/google/android/a/b/f;->a(Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    iget-object v1, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v1, v1, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    invoke-interface {v0, v1, p2}, Lcom/google/android/a/b/g;->a(Lcom/google/android/a/b/c;Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->h()V

    return-void
.end method

.method public a(J)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    if-ne v0, v5, :cond_2

    :goto_1
    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0}, Lcom/google/android/a/b/g;->b()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0}, Lcom/google/android/a/b/g;->c()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/google/android/a/g/o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v4, v1}, Lcom/google/android/a/b/g;->a(I)Lcom/google/android/a/r;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/g/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    :cond_4
    iput v5, p0, Lcom/google/android/a/b/f;->l:I

    goto :goto_1
.end method

.method public b(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/a/b/f;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/b/f;->q:Z

    iget-wide v0, p0, Lcom/google/android/a/b/f;->n:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/b/f;->v:I

    iget v1, p0, Lcom/google/android/a/b/f;->k:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->t:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v0, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0}, Lcom/google/android/a/b/g;->a()V

    :cond_1
    return-void
.end method

.method public b(J)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/google/android/a/b/f;->o:J

    :goto_1
    iput-wide p1, p0, Lcom/google/android/a/b/f;->m:J

    iput-wide p1, p0, Lcom/google/android/a/b/f;->n:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/a/b/f;->m:J

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/c;->b(J)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->g()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    :goto_4
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/b;

    invoke-virtual {v0}, Lcom/google/android/a/b/b;->a()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v3}, Lcom/google/android/a/e/c;->c()I

    move-result v3

    if-gt v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/android/a/b/f;->d(J)V

    :cond_6
    iput-boolean v1, p0, Lcom/google/android/a/b/f;->q:Z

    goto :goto_2
.end method

.method public b(Lcom/google/android/a/g/o$c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/b/f;->d:Lcom/google/android/a/b/e;

    iget-object v0, v0, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    invoke-virtual {v0}, Lcom/google/android/a/b/c;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/b/f;->f(J)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/b/f;->d(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->a()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    invoke-interface {v0}, Lcom/google/android/a/k;->a()V

    goto :goto_0
.end method

.method public b(IJ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput-wide p2, p0, Lcom/google/android/a/b/f;->m:J

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0, p2, p3}, Lcom/google/android/a/b/g;->a(J)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->h()V

    iget-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public b_()Lcom/google/android/a/v$a;
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput v1, p0, Lcom/google/android/a/b/f;->l:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    invoke-interface {v0}, Lcom/google/android/a/b/g;->c()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c(J)J
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public c(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/b/f;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/b/f;->u:I

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/a/h/b;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/b/f;->l:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/b/f;->c:Lcom/google/android/a/b/g;

    iget-object v1, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/google/android/a/b/g;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    invoke-interface {v0, p0}, Lcom/google/android/a/k;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->b()V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->a()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    iget-object v0, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    invoke-interface {v0}, Lcom/google/android/a/k;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    invoke-interface {v1, p0}, Lcom/google/android/a/k;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v1}, Lcom/google/android/a/g/o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v1}, Lcom/google/android/a/g/o;->b()V

    :goto_3
    throw v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v1}, Lcom/google/android/a/e/c;->a()V

    iget-object v1, p0, Lcom/google/android/a/b/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->f()V

    iget-object v1, p0, Lcom/google/android/a/b/f;->b:Lcom/google/android/a/k;

    invoke-interface {v1}, Lcom/google/android/a/k;->a()V

    goto :goto_3
.end method

.method public d()J
    .locals 4

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/a/b/f;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/a/b/f;->o:J

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/a/b/f;->s:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/b/f;->g:Lcom/google/android/a/e/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/c;->f()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/b/f;->m:J

    goto :goto_1
.end method

.method public e()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/a/b/f;->l:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/b/f;->r:Lcom/google/android/a/g/o;

    :cond_0
    iput v1, p0, Lcom/google/android/a/b/f;->l:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
