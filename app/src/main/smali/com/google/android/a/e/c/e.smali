.class public final Lcom/google/android/a/e/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/c/e$a;
    }
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/a/e/c/i;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/c/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/a/h/o;

.field private final f:Lcom/google/android/a/h/o;

.field private final g:Lcom/google/android/a/h/o;

.field private final h:Lcom/google/android/a/h/o;

.field private final i:[B

.field private final j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/a/e/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:Lcom/google/android/a/h/o;

.field private p:J

.field private q:Lcom/google/android/a/e/c/e$a;

.field private r:I

.field private s:I

.field private t:I

.field private u:Lcom/google/android/a/e/g;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/a/e/c/e;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/e/c/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/e/c/e;-><init>(ILcom/google/android/a/e/c/i;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/a/e/c/i;)V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/a/e/c/e;->c:Lcom/google/android/a/e/c/i;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/a/e/c/e;->b:I

    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0, v3}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/o;

    sget-object v2, Lcom/google/android/a/h/m;->a:[B

    invoke-direct {v0, v2}, Lcom/google/android/a/h/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->e:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->f:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->g:Lcom/google/android/a/h/o;

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->i:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/google/android/a/e/c/e;->a()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/a/e/c/e$a;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-object v2, v0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    iget-object v3, v0, Lcom/google/android/a/e/c/k;->a:Lcom/google/android/a/e/c/c;

    iget v3, v3, Lcom/google/android/a/e/c/c;->a:I

    iget-object v4, p1, Lcom/google/android/a/e/c/e$a;->c:Lcom/google/android/a/e/c/i;

    iget-object v4, v4, Lcom/google/android/a/e/c/i;->l:[Lcom/google/android/a/e/c/j;

    aget-object v3, v4, v3

    iget v3, v3, Lcom/google/android/a/e/c/j;->b:I

    iget-object v0, v0, Lcom/google/android/a/e/c/k;->j:[Z

    iget v4, p1, Lcom/google/android/a/e/c/e$a;->e:I

    aget-boolean v4, v0, v4

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->g:Lcom/google/android/a/h/o;

    iget-object v5, v0, Lcom/google/android/a/h/o;->a:[B

    if-eqz v4, :cond_0

    const/16 v0, 0x80

    :goto_0
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->g:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p1, Lcom/google/android/a/e/c/e$a;->b:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->g:Lcom/google/android/a/h/o;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    if-nez v4, :cond_1

    add-int/lit8 v0, v3, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/a/h/o;->g()I

    move-result v1

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Lcom/google/android/a/h/o;->c(I)V

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v2, v1}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    add-int/lit8 v0, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/a/h/o;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/o;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/a/e/c/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lcom/google/android/a/e/c/c;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/a/e/c/c;-><init>(IIII)V

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/a/h/o;J)Lcom/google/android/a/e/a;
    .locals 23

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v8

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->g()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v18, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v12

    const/4 v6, 0x0

    move-wide v14, v10

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->m()I

    move-result v11

    const/high16 v12, -0x80000000

    and-int/2addr v12, v11

    if-eqz v12, :cond_1

    new-instance v4, Lcom/google/android/a/t;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v12

    const v21, 0x7fffffff

    and-int v11, v11, v21

    aput v11, v17, v10

    aput-wide v14, v18, v10

    aput-wide v4, v20, v10

    add-long v4, v6, v12

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v12

    aget-wide v6, v20, v10

    sub-long v6, v12, v6

    aput-wide v6, v19, v10

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/a/h/o;->c(I)V

    aget v6, v17, v10

    int-to-long v6, v6

    add-long/2addr v14, v6

    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/google/android/a/e/a;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/a/e/a;-><init>([I[J[J[J)V

    return-object v4
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/android/a/e/c/e$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/c/e$a;",
            ">;)",
            "Lcom/google/android/a/e/c/e$a;"
        }
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/e$a;

    iget v4, v0, Lcom/google/android/a/e/c/e$a;->e:I

    iget-object v5, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget v5, v5, Lcom/google/android/a/e/c/k;->d:I

    if-ne v4, v5, :cond_0

    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-wide v4, v4, Lcom/google/android/a/e/c/k;->b:J

    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    move-object v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    goto :goto_1
.end method

.method private static a(Lcom/google/android/a/h/o;Landroid/util/SparseArray;I)Lcom/google/android/a/e/c/e$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/o;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/c/e$a;",
            ">;I)",
            "Lcom/google/android/a/e/c/e$a;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->b(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/e$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v2

    iget-object v1, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iput-wide v2, v1, Lcom/google/android/a/e/c/k;->b:J

    iget-object v1, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iput-wide v2, v1, Lcom/google/android/a/e/c/k;->c:J

    :cond_2
    iget-object v6, v0, Lcom/google/android/a/e/c/e$a;->d:Lcom/google/android/a/e/c/c;

    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_2
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    move v3, v1

    :goto_3
    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    move v2, v1

    :goto_4
    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    :goto_5
    iget-object v5, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    new-instance v6, Lcom/google/android/a/e/c/c;

    invoke-direct {v6, v4, v3, v2, v1}, Lcom/google/android/a/e/c/c;-><init>(IIII)V

    iput-object v6, v5, Lcom/google/android/a/e/c/k;->a:Lcom/google/android/a/e/c/c;

    goto :goto_1

    :cond_3
    iget v1, v6, Lcom/google/android/a/e/c/c;->a:I

    move v4, v1

    goto :goto_2

    :cond_4
    iget v1, v6, Lcom/google/android/a/e/c/c;->b:I

    move v3, v1

    goto :goto_3

    :cond_5
    iget v1, v6, Lcom/google/android/a/e/c/c;->c:I

    move v2, v1

    goto :goto_4

    :cond_6
    iget v1, v6, Lcom/google/android/a/e/c/c;->d:I

    goto :goto_5
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/c/e;->k:I

    iput v0, p0, Lcom/google/android/a/e/c/e;->n:I

    return-void
.end method

.method private a(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    iget-wide v0, v0, Lcom/google/android/a/e/c/a$a;->aC:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    invoke-direct {p0, v0}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/a$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/e/c/e;->a()V

    return-void
.end method

.method private a(Lcom/google/android/a/e/c/a$a;)V
    .locals 2

    iget v0, p1, Lcom/google/android/a/e/c/a$a;->aB:I

    sget v1, Lcom/google/android/a/e/c/a;->A:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->b(Lcom/google/android/a/e/c/a$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/google/android/a/e/c/a$a;->aB:I

    sget v1, Lcom/google/android/a/e/c/a;->J:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->c(Lcom/google/android/a/e/c/a$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/c/a$a;->a(Lcom/google/android/a/e/c/a$a;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/e/c/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/e/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/c/e$a;",
            ">;I[B)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/e/c/a$a;->aE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/c/a$a;->aE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    iget v3, v0, Lcom/google/android/a/e/c/a$a;->aB:I

    sget v4, Lcom/google/android/a/e/c/a;->K:I

    if-ne v3, v4, :cond_0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/a/e/c/e;->b(Lcom/google/android/a/e/c/a$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/a/e/c/a$b;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/c/a$a;->a(Lcom/google/android/a/e/c/a$b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/google/android/a/e/c/a$b;->aB:I

    sget v1, Lcom/google/android/a/e/c/a;->z:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0, p2, p3}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;J)Lcom/google/android/a/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/c/e;->v:Z

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/e/c/e$a;JILcom/google/android/a/h/o;)V
    .locals 27

    const/16 v2, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/a/e/c/a;->b(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/a/e/c/e$a;->c:Lcom/google/android/a/e/c/i;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-object v0, v13, Lcom/google/android/a/e/c/k;->a:Lcom/google/android/a/e/c/c;

    move-object/from16 v21, v0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->s()I

    move-result v22

    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    iget-wide v4, v13, Lcom/google/android/a/e/c/k;->b:J

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->m()I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v13, Lcom/google/android/a/e/c/k;->b:J

    :cond_0
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    move-object/from16 v0, v21

    iget v14, v0, Lcom/google/android/a/e/c/c;->d:I

    if-eqz v8, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->s()I

    move-result v14

    :cond_1
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move/from16 v20, v2

    :goto_1
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move/from16 v19, v2

    :goto_2
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move/from16 v18, v2

    :goto_3
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v9, v2

    :goto_4
    const-wide/16 v2, 0x0

    iget-object v4, v12, Lcom/google/android/a/e/c/i;->m:[J

    if-eqz v4, :cond_10

    iget-object v4, v12, Lcom/google/android/a/e/c/i;->m:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    iget-object v4, v12, Lcom/google/android/a/e/c/i;->m:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    iget-object v2, v12, Lcom/google/android/a/e/c/i;->n:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    iget-wide v6, v12, Lcom/google/android/a/e/c/i;->h:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v2

    move-wide v10, v2

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/google/android/a/e/c/k;->a(I)V

    iget-object v0, v13, Lcom/google/android/a/e/c/k;->e:[I

    move-object/from16 v23, v0

    iget-object v0, v13, Lcom/google/android/a/e/c/k;->f:[I

    move-object/from16 v24, v0

    iget-object v0, v13, Lcom/google/android/a/e/c/k;->g:[J

    move-object/from16 v25, v0

    iget-object v0, v13, Lcom/google/android/a/e/c/k;->h:[Z

    move-object/from16 v26, v0

    iget-wide v6, v12, Lcom/google/android/a/e/c/i;->h:J

    iget v2, v12, Lcom/google/android/a/e/c/i;->g:I

    sget v3, Lcom/google/android/a/e/c/i;->a:I

    if-ne v2, v3, :cond_8

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v12, v2

    :goto_6
    const/4 v2, 0x0

    move/from16 v17, v2

    move-wide/from16 v2, p1

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    if-eqz v20, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->s()I

    move-result v4

    move/from16 v16, v4

    :goto_8
    if-eqz v19, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->s()I

    move-result v4

    move v15, v4

    :goto_9
    if-nez v17, :cond_b

    if-eqz v8, :cond_b

    move v13, v14

    :goto_a
    if-eqz v9, :cond_d

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v24, v17

    :goto_b
    const-wide/16 v4, 0x3e8

    invoke-static/range {v2 .. v7}, Lcom/google/android/a/h/x;->a(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v25, v17

    aput v15, v23, v17

    shr-int/lit8 v4, v13, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_e

    if-eqz v12, :cond_2

    if-nez v17, :cond_e

    :cond_2
    const/4 v4, 0x1

    :goto_c
    aput-boolean v4, v26, v17

    move/from16 v0, v16

    int-to-long v4, v0

    add-long p1, v2, v4

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    move-wide/from16 v2, p1

    goto :goto_7

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    move v12, v2

    goto :goto_6

    :cond_9
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/a/e/c/c;->b:I

    move/from16 v16, v4

    goto :goto_8

    :cond_a
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/a/e/c/c;->c:I

    move v15, v4

    goto :goto_9

    :cond_b
    if-eqz v18, :cond_c

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/a/h/o;->m()I

    move-result v4

    move v13, v4

    goto :goto_a

    :cond_c
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/a/e/c/c;->d:I

    move v13, v4

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    aput v4, v24, v17

    goto :goto_b

    :cond_e
    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    return-void

    :cond_10
    move-wide v10, v2

    goto/16 :goto_5
.end method

.method private static a(Lcom/google/android/a/e/c/j;Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V
    .locals 9

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v5, p0, Lcom/google/android/a/e/c/j;->b:I

    invoke-virtual {p1, v3}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->b(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/google/android/a/h/o;->c(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->s()I

    move-result v6

    iget v3, p2, Lcom/google/android/a/e/c/k;->d:I

    if-eq v6, v3, :cond_1

    new-instance v0, Lcom/google/android/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/a/e/c/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_3

    iget-object v7, p2, Lcom/google/android/a/e/c/k;->j:[Z

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_4

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v8

    add-int v4, v0, v8

    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-le v0, v5, :cond_5

    :goto_2
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    iget-object v3, p2, Lcom/google/android/a/e/c/k;->j:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/a/e/c/k;->b(I)V

    return-void

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private static a(Lcom/google/android/a/h/o;ILcom/google/android/a/e/c/k;)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->b(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v2

    iget v3, p2, Lcom/google/android/a/e/c/k;->d:I

    if-eq v2, v3, :cond_2

    new-instance v0, Lcom/google/android/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/a/e/c/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p2, Lcom/google/android/a/e/c/k;->j:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/a/e/c/k;->b(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/a/e/c/k;->a(Lcom/google/android/a/h/o;)V

    return-void
.end method

.method private static a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->b(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/a/h/o;->c(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected saio entry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v0

    iget-wide v2, p1, Lcom/google/android/a/e/c/k;->c:J

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/android/a/e/c/k;->c:J

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;[B)V
    .locals 2

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/a/h/o;->a([BII)V

    sget-object v0, Lcom/google/android/a/e/c/e;->a:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;ILcom/google/android/a/e/c/k;)V

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/google/android/a/e/c/a;->Q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->P:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->z:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->R:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->v:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->w:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->x:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->y:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->S:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->aa:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->ab:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->ad:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->ac:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/a/h/o;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/e/c/a;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/e/c/a$a;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->c:Lcom/google/android/a/e/c/i;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/android/a/h/b;->b(ZLjava/lang/Object;)V

    iget-object v5, p1, Lcom/google/android/a/e/c/a$a;->aD:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$b;

    iget v7, v0, Lcom/google/android/a/e/c/a$b;->aB:I

    sget v8, Lcom/google/android/a/e/c/a;->S:I

    if-ne v7, v8, :cond_1

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/a/d/a$a;

    invoke-direct {v3}, Lcom/google/android/a/d/a$a;-><init>()V

    :cond_0
    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-static {v0}, Lcom/google/android/a/e/c/g;->a([B)Ljava/util/UUID;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v0, "FragmentedMp4Extractor"

    const-string v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/android/a/e/c/g;->a([B)Ljava/util/UUID;

    move-result-object v7

    new-instance v8, Lcom/google/android/a/d/a$b;

    const-string v9, "video/mp4"

    invoke-direct {v8, v9, v0}, Lcom/google/android/a/d/a$b;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v7, v8}, Lcom/google/android/a/d/a$a;->a(Ljava/util/UUID;Lcom/google/android/a/d/a$b;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    invoke-interface {v0, v3}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/d/a;)V

    :cond_5
    sget v0, Lcom/google/android/a/e/c/a;->L:I

    invoke-virtual {p1, v0}, Lcom/google/android/a/e/c/a$a;->e(I)Lcom/google/android/a/e/c/a$a;

    move-result-object v4

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v4, Lcom/google/android/a/e/c/a$a;->aD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_7

    iget-object v0, v4, Lcom/google/android/a/e/c/a$a;->aD:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$b;

    iget v7, v0, Lcom/google/android/a/e/c/a$b;->aB:I

    sget v8, Lcom/google/android/a/e/c/a;->x:I

    if-ne v7, v8, :cond_6

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;)Landroid/util/Pair;

    move-result-object v7

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_7
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p1, Lcom/google/android/a/e/c/a$a;->aE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    :goto_4
    if-ge v3, v6, :cond_9

    iget-object v0, p1, Lcom/google/android/a/e/c/a$a;->aE:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$a;

    iget v7, v0, Lcom/google/android/a/e/c/a$a;->aB:I

    sget v8, Lcom/google/android/a/e/c/a;->C:I

    if-ne v7, v8, :cond_8

    sget v7, Lcom/google/android/a/e/c/a;->B:I

    invoke-virtual {p1, v7}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v7

    invoke-static {v0, v7, v2}, Lcom/google/android/a/e/c/b;->a(Lcom/google/android/a/e/c/a$a;Lcom/google/android/a/e/c/a$b;Z)Lcom/google/android/a/e/c/i;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v7, v0, Lcom/google/android/a/e/c/i;->f:I

    invoke-virtual {v4, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    :goto_5
    if-ge v1, v6, :cond_a

    iget-object v3, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/i;

    iget v0, v0, Lcom/google/android/a/e/c/i;->f:I

    new-instance v7, Lcom/google/android/a/e/c/e$a;

    iget-object v8, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    invoke-interface {v8, v1}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/a/e/c/e$a;-><init>(Lcom/google/android/a/e/m;)V

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    invoke-interface {v0}, Lcom/google/android/a/e/g;->a()V

    :goto_6
    move v3, v2

    :goto_7
    if-ge v3, v6, :cond_d

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/i;

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/a/e/c/i;->f:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/e/c/e$a;

    iget v2, v0, Lcom/google/android/a/e/c/i;->f:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/a/e/c/c;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/a/e/c/e$a;->a(Lcom/google/android/a/e/c/i;Lcom/google/android/a/e/c/c;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v6, :cond_c

    :goto_8
    invoke-static {v1}, Lcom/google/android/a/h/b;->b(Z)V

    goto :goto_6

    :cond_c
    move v1, v2

    goto :goto_8

    :cond_d
    return-void
.end method

.method private static b(Lcom/google/android/a/e/c/a$a;Landroid/util/SparseArray;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/e/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/c/e$a;",
            ">;I[B)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Lcom/google/android/a/e/c/a;->y:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->f(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Trun count in traf != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v0, Lcom/google/android/a/e/c/a;->w:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0, p1, p2}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;Landroid/util/SparseArray;I)Lcom/google/android/a/e/c/e$a;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v4, v3, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iput v2, v3, Lcom/google/android/a/e/c/e$a;->e:I

    invoke-virtual {v4}, Lcom/google/android/a/e/c/k;->a()V

    sget v0, Lcom/google/android/a/e/c/a;->v:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_8

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    sget v5, Lcom/google/android/a/e/c/a;->y:I

    invoke-virtual {p0, v5}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v3, v0, v1, p2, v5}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/e$a;JILcom/google/android/a/h/o;)V

    sget v0, Lcom/google/android/a/e/c/a;->aa:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v3, Lcom/google/android/a/e/c/e$a;->c:Lcom/google/android/a/e/c/i;

    iget-object v1, v1, Lcom/google/android/a/e/c/i;->l:[Lcom/google/android/a/e/c/j;

    iget-object v3, v4, Lcom/google/android/a/e/c/k;->a:Lcom/google/android/a/e/c/c;

    iget v3, v3, Lcom/google/android/a/e/c/c;->a:I

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v1, v0, v4}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/j;Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V

    :cond_4
    sget v0, Lcom/google/android/a/e/c/a;->ab:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0, v4}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V

    :cond_5
    sget v0, Lcom/google/android/a/e/c/a;->ad:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0, v4}, Lcom/google/android/a/e/c/e;->b(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/a/e/c/a$a;->aD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/c/a$a;->aD:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/a$b;

    iget v2, v0, Lcom/google/android/a/e/c/a$b;->aB:I

    sget v5, Lcom/google/android/a/e/c/a;->ac:I

    if-ne v2, v5, :cond_7

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0, v4, p3}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;[B)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_8
    sget v0, Lcom/google/android/a/e/c/a;->v:I

    invoke-virtual {p0, v0}, Lcom/google/android/a/e/c/a$a;->d(I)Lcom/google/android/a/e/c/a$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/a/e/c/a$b;->aC:Lcom/google/android/a/h/o;

    invoke-static {v0}, Lcom/google/android/a/e/c/e;->b(Lcom/google/android/a/h/o;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/a/h/o;Lcom/google/android/a/e/c/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/h/o;ILcom/google/android/a/e/c/k;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    sget v0, Lcom/google/android/a/e/c/a;->A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->D:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->E:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->F:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->J:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->K:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->L:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/a/e/c/a;->N:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/e/f;)Z
    .locals 12

    const-wide/32 v10, 0x7fffffff

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/a/e/c/e;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v0, v1, v8, v2}, Lcom/google/android/a/e/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput v8, p0, Lcom/google/android/a/e/c/e;->n:I

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/c/e;->l:I

    :cond_1
    iget-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/a/e/f;->b([BII)V

    iget v0, p0, Lcom/google/android/a/e/c/e;->n:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/a/e/c/e;->n:I

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    :cond_2
    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/a/e/c/e;->n:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/a/e/c/e;->l:I

    sget v3, Lcom/google/android/a/e/c/a;->J:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/e$a;

    iget-object v0, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iput-wide v4, v0, Lcom/google/android/a/e/c/k;->c:J

    iput-wide v4, v0, Lcom/google/android/a/e/c/k;->b:J

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/a/e/c/e;->l:I

    sget v3, Lcom/google/android/a/e/c/a;->h:I

    if-ne v0, v3, :cond_5

    iput-object v9, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-wide v0, p0, Lcom/google/android/a/e/c/e;->m:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/a/e/c/e;->p:J

    iget-boolean v0, p0, Lcom/google/android/a/e/c/e;->v:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    sget-object v1, Lcom/google/android/a/e/l;->f:Lcom/google/android/a/e/l;

    invoke-interface {v0, v1}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    iput-boolean v2, p0, Lcom/google/android/a/e/c/e;->v:Z

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/e/c/e;->k:I

    move v0, v2

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/a/e/c/e;->l:I

    invoke-static {v0}, Lcom/google/android/a/e/c/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object v3, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/a/e/c/a$a;

    iget v5, p0, Lcom/google/android/a/e/c/e;->l:I

    invoke-direct {v4, v5, v0, v1}, Lcom/google/android/a/e/c/a$a;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    iget v3, p0, Lcom/google/android/a/e/c/e;->n:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/c/e;->a(J)V

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/google/android/a/e/c/e;->a()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/google/android/a/e/c/e;->l:I

    invoke-static {v0}, Lcom/google/android/a/e/c/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/a/e/c/e;->n:I

    if-eq v0, v8, :cond_8

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_9

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/android/a/h/o;

    iget-wide v4, p0, Lcom/google/android/a/e/c/e;->m:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->h:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    iget-object v3, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    iget-object v3, v3, Lcom/google/android/a/h/o;->a:[B

    invoke-static {v0, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/google/android/a/e/c/e;->k:I

    goto :goto_2

    :cond_a
    iget-wide v0, p0, Lcom/google/android/a/e/c/e;->m:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_b

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object v9, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    iput v2, p0, Lcom/google/android/a/e/c/e;->k:I

    goto :goto_2
.end method

.method private c(Lcom/google/android/a/e/c/a$a;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/a/e/c/e;->b:I

    iget-object v2, p0, Lcom/google/android/a/e/c/e;->i:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/a$a;Landroid/util/SparseArray;I[B)V

    return-void
.end method

.method private c(Lcom/google/android/a/e/f;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/e/c/e;->m:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/a/e/c/e;->n:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    iget-object v1, v1, Lcom/google/android/a/h/o;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/a/e/f;->b([BII)V

    new-instance v0, Lcom/google/android/a/e/c/a$b;

    iget v1, p0, Lcom/google/android/a/e/c/e;->l:I

    iget-object v2, p0, Lcom/google/android/a/e/c/e;->o:Lcom/google/android/a/h/o;

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/e/c/a$b;-><init>(ILcom/google/android/a/h/o;)V

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/a$b;J)V

    :goto_0
    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/c/e;->a(J)V

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    goto :goto_0
.end method

.method private d(Lcom/google/android/a/e/f;)V
    .locals 10

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/e$a;

    iget-object v0, v0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-boolean v6, v0, Lcom/google/android/a/e/c/k;->m:Z

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/google/android/a/e/c/k;->c:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    iget-wide v2, v0, Lcom/google/android/a/e/c/k;->c:J

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/e$a;

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/a/e/c/e;->k:I

    :goto_2
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-gez v0, :cond_2

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Offset to encryption data was negative."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    iget-object v0, v1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    invoke-virtual {v0, p1}, Lcom/google/android/a/e/c/k;->a(Lcom/google/android/a/e/f;)V

    goto :goto_2

    :cond_3
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    goto :goto_1
.end method

.method private e(Lcom/google/android/a/e/f;)Z
    .locals 13

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget v1, p0, Lcom/google/android/a/e/c/e;->k:I

    if-ne v1, v12, :cond_4

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/google/android/a/e/c/e;->a(Landroid/util/SparseArray;)Lcom/google/android/a/e/c/e$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    if-nez v1, :cond_1

    iget-wide v0, p0, Lcom/google/android/a/e/c/e;->p:J

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Offset to end of mdat was negative."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    invoke-direct {p0}, Lcom/google/android/a/e/c/e;->a()V

    :goto_0
    return v6

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v1, v1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-wide v2, v1, Lcom/google/android/a/e/c/k;->b:J

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    if-gez v1, :cond_2

    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "Offset to sample data was negative."

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1, v1}, Lcom/google/android/a/e/f;->b(I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v1, v1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-object v1, v1, Lcom/google/android/a/e/c/k;->e:[I

    iget-object v2, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget v2, v2, Lcom/google/android/a/e/c/e$a;->e:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/a/e/c/e;->r:I

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v1, v1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-boolean v1, v1, Lcom/google/android/a/e/c/k;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    invoke-direct {p0, v1}, Lcom/google/android/a/e/c/e;->a(Lcom/google/android/a/e/c/e$a;)I

    move-result v1

    iput v1, p0, Lcom/google/android/a/e/c/e;->s:I

    iget v1, p0, Lcom/google/android/a/e/c/e;->r:I

    iget v2, p0, Lcom/google/android/a/e/c/e;->s:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/a/e/c/e;->r:I

    :goto_1
    iput v11, p0, Lcom/google/android/a/e/c/e;->k:I

    iput v6, p0, Lcom/google/android/a/e/c/e;->t:I

    :cond_4
    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v9, v1, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v5, v1, Lcom/google/android/a/e/c/e$a;->c:Lcom/google/android/a/e/c/i;

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget-object v1, v1, Lcom/google/android/a/e/c/e$a;->b:Lcom/google/android/a/e/m;

    iget-object v2, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget v4, v2, Lcom/google/android/a/e/c/e$a;->e:I

    iget v2, v5, Lcom/google/android/a/e/c/i;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/a/e/c/e;->f:Lcom/google/android/a/h/o;

    iget-object v2, v2, Lcom/google/android/a/h/o;->a:[B

    aput-byte v6, v2, v6

    aput-byte v6, v2, v8

    aput-byte v6, v2, v0

    iget v2, v5, Lcom/google/android/a/e/c/i;->o:I

    iget v3, v5, Lcom/google/android/a/e/c/i;->o:I

    rsub-int/lit8 v3, v3, 0x4

    :goto_2
    iget v7, p0, Lcom/google/android/a/e/c/e;->s:I

    iget v10, p0, Lcom/google/android/a/e/c/e;->r:I

    if-ge v7, v10, :cond_8

    iget v7, p0, Lcom/google/android/a/e/c/e;->t:I

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/google/android/a/e/c/e;->f:Lcom/google/android/a/h/o;

    iget-object v7, v7, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v7, v3, v2}, Lcom/google/android/a/e/f;->b([BII)V

    iget-object v7, p0, Lcom/google/android/a/e/c/e;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v7, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v7, p0, Lcom/google/android/a/e/c/e;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v7}, Lcom/google/android/a/h/o;->s()I

    move-result v7

    iput v7, p0, Lcom/google/android/a/e/c/e;->t:I

    iget-object v7, p0, Lcom/google/android/a/e/c/e;->e:Lcom/google/android/a/h/o;

    invoke-virtual {v7, v6}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v7, p0, Lcom/google/android/a/e/c/e;->e:Lcom/google/android/a/h/o;

    invoke-interface {v1, v7, v11}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v7, p0, Lcom/google/android/a/e/c/e;->s:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/android/a/e/c/e;->s:I

    iget v7, p0, Lcom/google/android/a/e/c/e;->r:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/google/android/a/e/c/e;->r:I

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/google/android/a/e/c/e;->s:I

    goto :goto_1

    :cond_6
    iget v7, p0, Lcom/google/android/a/e/c/e;->t:I

    invoke-interface {v1, p1, v7, v6}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v7

    iget v10, p0, Lcom/google/android/a/e/c/e;->s:I

    add-int/2addr v10, v7

    iput v10, p0, Lcom/google/android/a/e/c/e;->s:I

    iget v10, p0, Lcom/google/android/a/e/c/e;->t:I

    sub-int v7, v10, v7

    iput v7, p0, Lcom/google/android/a/e/c/e;->t:I

    goto :goto_2

    :cond_7
    :goto_3
    iget v2, p0, Lcom/google/android/a/e/c/e;->s:I

    iget v3, p0, Lcom/google/android/a/e/c/e;->r:I

    if-ge v2, v3, :cond_8

    iget v2, p0, Lcom/google/android/a/e/c/e;->r:I

    iget v3, p0, Lcom/google/android/a/e/c/e;->s:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2, v6}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v2

    iget v3, p0, Lcom/google/android/a/e/c/e;->s:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/a/e/c/e;->s:I

    goto :goto_3

    :cond_8
    invoke-virtual {v9, v4}, Lcom/google/android/a/e/c/k;->c(I)J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    iget-boolean v7, v9, Lcom/google/android/a/e/c/k;->i:Z

    if-eqz v7, :cond_a

    :goto_4
    iget-object v7, v9, Lcom/google/android/a/e/c/k;->h:[Z

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_b

    move v4, v8

    :goto_5
    or-int/2addr v4, v0

    iget-object v0, v9, Lcom/google/android/a/e/c/k;->a:Lcom/google/android/a/e/c/c;

    iget v0, v0, Lcom/google/android/a/e/c/c;->a:I

    iget-boolean v7, v9, Lcom/google/android/a/e/c/k;->i:Z

    if-eqz v7, :cond_c

    iget-object v5, v5, Lcom/google/android/a/e/c/i;->l:[Lcom/google/android/a/e/c/j;

    aget-object v0, v5, v0

    iget-object v7, v0, Lcom/google/android/a/e/c/j;->c:[B

    :goto_6
    iget v5, p0, Lcom/google/android/a/e/c/e;->r:I

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget v1, v0, Lcom/google/android/a/e/c/e$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/a/e/c/e$a;->e:I

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    iget v0, v0, Lcom/google/android/a/e/c/e$a;->e:I

    iget v1, v9, Lcom/google/android/a/e/c/k;->d:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/e/c/e;->q:Lcom/google/android/a/e/c/e$a;

    :cond_9
    iput v12, p0, Lcom/google/android/a/e/c/e;->k:I

    move v6, v8

    goto/16 :goto_0

    :cond_a
    move v0, v6

    goto :goto_4

    :cond_b
    move v4, v6

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/a/e/c/e;->k:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->e(Lcom/google/android/a/e/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->b(Lcom/google/android/a/e/f;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->c(Lcom/google/android/a/e/f;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/a/e/c/e;->d(Lcom/google/android/a/e/f;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->c:Lcom/google/android/a/e/c/i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/a/e/c/e$a;

    invoke-interface {p1, v3}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/e/c/e$a;-><init>(Lcom/google/android/a/e/m;)V

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->c:Lcom/google/android/a/e/c/i;

    new-instance v2, Lcom/google/android/a/e/c/c;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/android/a/e/c/c;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/e/c/e$a;->a(Lcom/google/android/a/e/c/i;Lcom/google/android/a/e/c/c;)V

    iget-object v1, p0, Lcom/google/android/a/e/c/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->u:Lcom/google/android/a/e/g;

    invoke-interface {v0}, Lcom/google/android/a/e/g;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/a/e/c/h;->a(Lcom/google/android/a/e/f;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/c/e;->j:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    invoke-direct {p0}, Lcom/google/android/a/e/c/e;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
