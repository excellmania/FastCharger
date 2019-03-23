.class final Lcom/google/android/a/e/e/c;
.super Lcom/google/android/a/e/e/e;


# static fields
.field private static final b:[B


# instance fields
.field private final c:Lcom/google/android/a/h/n;

.field private final d:Lcom/google/android/a/h/o;

.field private final e:Lcom/google/android/a/e/m;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:J

.field private l:I

.field private m:J

.field private n:Lcom/google/android/a/e/m;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/a/e/e/c;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/m;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/e;-><init>(Lcom/google/android/a/e/m;)V

    iput-object p2, p0, Lcom/google/android/a/e/e/c;->e:Lcom/google/android/a/e/m;

    invoke-static {}, Lcom/google/android/a/r;->a()Lcom/google/android/a/r;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    new-instance v0, Lcom/google/android/a/h/n;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    new-instance v0, Lcom/google/android/a/h/o;

    sget-object v1, Lcom/google/android/a/e/e/c;->b:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->c()V

    return-void
.end method

.method private a(Lcom/google/android/a/e/m;JII)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/a/e/e/c;->f:I

    iput p4, p0, Lcom/google/android/a/e/e/c;->g:I

    iput-object p1, p0, Lcom/google/android/a/e/e/c;->n:Lcom/google/android/a/e/m;

    iput-wide p2, p0, Lcom/google/android/a/e/e/c;->o:J

    iput p5, p0, Lcom/google/android/a/e/e/c;->l:I

    return-void
.end method

.method private a(Lcom/google/android/a/h/o;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/c;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/c;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/a/h/o;->a([BII)V

    iget v1, p0, Lcom/google/android/a/e/e/c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/c;->g:I

    iget v0, p0, Lcom/google/android/a/e/e/c;->g:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/a/h/o;)V
    .locals 7

    const/16 v6, 0x200

    const/16 v5, 0x100

    iget-object v2, p1, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->c()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iget v4, p0, Lcom/google/android/a/e/e/c;->h:I

    if-ne v4, v6, :cond_1

    const/16 v4, 0xf0

    if-lt v0, v4, :cond_1

    const/16 v4, 0xff

    if-eq v0, v4, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/a/e/e/c;->i:Z

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->e()V

    invoke-virtual {p1, v1}, Lcom/google/android/a/h/o;->b(I)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/google/android/a/e/e/c;->h:I

    or-int/2addr v0, v4

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/google/android/a/e/e/c;->h:I

    if-eq v0, v5, :cond_3

    iput v5, p0, Lcom/google/android/a/e/e/c;->h:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :sswitch_0
    iput v6, p0, Lcom/google/android/a/e/e/c;->h:I

    move v0, v1

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x300

    iput v0, p0, Lcom/google/android/a/e/e/c;->h:I

    move v0, v1

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/a/e/e/c;->h:I

    move v0, v1

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->d()V

    invoke-virtual {p1, v1}, Lcom/google/android/a/h/o;->b(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->b(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x149 -> :sswitch_1
        0x1ff -> :sswitch_0
        0x344 -> :sswitch_2
        0x433 -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/c;->f:I

    iput v0, p0, Lcom/google/android/a/e/e/c;->g:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/google/android/a/e/e/c;->h:I

    return-void
.end method

.method private c(Lcom/google/android/a/h/o;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/c;->l:I

    iget v2, p0, Lcom/google/android/a/e/e/c;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->n:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget v1, p0, Lcom/google/android/a/e/e/c;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/c;->g:I

    iget v0, p0, Lcom/google/android/a/e/e/c;->g:I

    iget v1, p0, Lcom/google/android/a/e/e/c;->l:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->n:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/c;->m:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/a/e/e/c;->l:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/android/a/e/e/c;->m:J

    iget-wide v2, p0, Lcom/google/android/a/e/e/c;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/e/e/c;->m:J

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->c()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/e/e/c;->f:I

    sget-object v0, Lcom/google/android/a/e/e/c;->b:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/a/e/e/c;->g:I

    iput v1, p0, Lcom/google/android/a/e/e/c;->l:I

    iget-object v0, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/e/e/c;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/e/c;->g:I

    return-void
.end method

.method private f()V
    .locals 6

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/google/android/a/e/e/c;->e:Lcom/google/android/a/e/m;

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    invoke-interface {v0, v1, v4}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->e:Lcom/google/android/a/e/m;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->r()I

    move-result v0

    add-int/lit8 v5, v0, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/e/c;->a(Lcom/google/android/a/e/m;JII)V

    return-void
.end method

.method private g()V
    .locals 13

    const/4 v12, 0x4

    const/4 v0, 0x2

    const/4 v11, 0x0

    const/4 v2, -0x1

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v1, v11}, Lcom/google/android/a/h/n;->a(I)V

    iget-boolean v1, p0, Lcom/google/android/a/e/e/c;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/n;->c(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v10, :cond_2

    const-string v1, "AdtsReader"

    const-string v3, "Detected AAC Main audio, but assuming AAC LC."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v1, v12}, Lcom/google/android/a/h/n;->c(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v3, v10}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v3, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/a/h/n;->c(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/android/a/h/d;->a(III)[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/a/h/d;->a([B)Landroid/util/Pair;

    move-result-object v7

    const/4 v0, 0x0

    const-string v1, "audio/mp4a-latm"

    const-wide/16 v4, -0x1

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v3, v2

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    const-wide/32 v2, 0x3d090000

    iget v1, v0, Lcom/google/android/a/r;->o:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/e/c;->k:J

    iget-object v1, p0, Lcom/google/android/a/e/e/c;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iput-boolean v10, p0, Lcom/google/android/a/e/e/c;->j:Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v12}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v5, v0, -0x5

    iget-boolean v0, p0, Lcom/google/android/a/e/e/c;->i:Z

    if-eqz v0, :cond_0

    add-int/lit8 v5, v5, -0x2

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/e/c;->a:Lcom/google/android/a/e/m;

    iget-wide v2, p0, Lcom/google/android/a/e/e/c;->k:J

    move-object v0, p0

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/e/c;->a(Lcom/google/android/a/e/m;JII)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->b(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->c()V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/e/c;->m:J

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/google/android/a/e/e/c;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/c;->b(Lcom/google/android/a/h/o;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/a/e/e/c;->d:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/a/e/e/c;->a(Lcom/google/android/a/h/o;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->f()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/a/e/e/c;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    iget-object v1, p0, Lcom/google/android/a/e/e/c;->c:Lcom/google/android/a/h/n;

    iget-object v1, v1, Lcom/google/android/a/h/n;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/a/e/e/c;->a(Lcom/google/android/a/h/o;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/e/c;->g()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/a/e/e/c;->c(Lcom/google/android/a/h/o;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
