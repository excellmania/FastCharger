.class Lcom/google/android/a/e/e/o$c;
.super Lcom/google/android/a/e/e/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/e/e/o;

.field private final b:Lcom/google/android/a/h/n;

.field private final c:Lcom/google/android/a/h/o;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/e/o;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/e/e/o$d;-><init>(Lcom/google/android/a/e/e/o$1;)V

    new-instance v0, Lcom/google/android/a/h/n;

    const/4 v1, 0x5

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0}, Lcom/google/android/a/h/o;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    return-void
.end method

.method private a(Lcom/google/android/a/h/o;I)I
    .locals 8

    const/16 v2, 0x87

    const/16 v1, 0x81

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v3

    add-int/2addr v3, p2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->d()I

    move-result v4

    if-ge v4, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v5

    const/4 v6, 0x5

    if-ne v4, v6, :cond_3

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/a/e/e/o;->a()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/a/h/o;->b(I)V

    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/a/e/e/o;->d()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/a/e/e/o;->e()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/16 v0, 0x24

    goto :goto_1

    :cond_3
    const/16 v6, 0x6a

    if-ne v4, v6, :cond_5

    move v0, v1

    :cond_4
    :goto_2
    invoke-virtual {p1, v5}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_0

    :cond_5
    const/16 v6, 0x7a

    if-ne v4, v6, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    const/16 v6, 0x7b

    if-ne v4, v6, :cond_4

    const/16 v0, 0x8a

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;ZLcom/google/android/a/e/g;)V
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/e/o$c;->d:I

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    new-array v1, v1, [B

    iget v2, p0, Lcom/google/android/a/e/e/o$c;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/h/o;->a([BI)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    iget v2, p0, Lcom/google/android/a/e/e/o$c;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    iget-object v1, v1, Lcom/google/android/a/h/o;->a:[B

    iget v2, p0, Lcom/google/android/a/e/e/o$c;->e:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/a/h/o;->a([BII)V

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/e/e/o$c;->e:I

    iget v0, p0, Lcom/google/android/a/e/e/o$c;->e:I

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    if-ge v0, v1, :cond_2

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v1, v0}, Lcom/google/android/a/h/o;->c(I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    iget-object v1, v1, Lcom/google/android/a/e/e/o;->c:Lcom/google/android/a/e/e/i;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    new-instance v2, Lcom/google/android/a/e/e/i;

    const/16 v3, 0x15

    invoke-interface {p3, v3}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/a/e/e/i;-><init>(Lcom/google/android/a/e/m;)V

    iput-object v2, v1, Lcom/google/android/a/e/e/o;->c:Lcom/google/android/a/e/e/i;

    :cond_3
    iget v1, p0, Lcom/google/android/a/e/e/o$c;->d:I

    add-int/lit8 v1, v1, -0x9

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x4

    move v1, v0

    :goto_2
    if-lez v1, :cond_b

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/n;->c(I)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->b:Lcom/google/android/a/h/n;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    invoke-direct {p0, v0, v2}, Lcom/google/android/a/e/e/o$c;->a(Lcom/google/android/a/h/o;I)I

    move-result v0

    :goto_3
    add-int/lit8 v2, v2, 0x5

    sub-int v4, v1, v2

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    iget-object v1, v1, Lcom/google/android/a/e/e/o;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/android/a/e/e/o$c;->c:Lcom/google/android/a/h/o;

    invoke-virtual {v3, v2}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_3

    :cond_5
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    iget-object v2, v2, Lcom/google/android/a/e/e/o;->b:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    iget-object v0, v0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/a/e/e/o$b;

    iget-object v3, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    invoke-static {v3}, Lcom/google/android/a/e/e/o;->b(Lcom/google/android/a/e/e/o;)Lcom/google/android/a/e/e/m;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/a/e/e/o$b;-><init>(Lcom/google/android/a/e/e/e;Lcom/google/android/a/e/e/m;)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    move v1, v4

    goto :goto_2

    :sswitch_0
    new-instance v1, Lcom/google/android/a/e/e/j;

    const/4 v2, 0x3

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/a/e/e/j;-><init>(Lcom/google/android/a/e/m;)V

    goto :goto_4

    :sswitch_1
    new-instance v1, Lcom/google/android/a/e/e/j;

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/a/e/e/j;-><init>(Lcom/google/android/a/e/m;)V

    goto :goto_4

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    invoke-static {v1}, Lcom/google/android/a/e/e/o;->a(Lcom/google/android/a/e/e/o;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    new-instance v1, Lcom/google/android/a/e/e/c;

    const/16 v2, 0xf

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    new-instance v3, Lcom/google/android/a/e/d;

    invoke-direct {v3}, Lcom/google/android/a/e/d;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/android/a/e/e/c;-><init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/m;)V

    goto :goto_4

    :sswitch_3
    new-instance v1, Lcom/google/android/a/e/e/a;

    const/16 v2, 0x81

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/a/e/e/a;-><init>(Lcom/google/android/a/e/m;Z)V

    goto :goto_4

    :sswitch_4
    new-instance v1, Lcom/google/android/a/e/e/a;

    const/16 v2, 0x87

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/a/e/e/a;-><init>(Lcom/google/android/a/e/m;Z)V

    goto :goto_4

    :sswitch_5
    new-instance v1, Lcom/google/android/a/e/e/d;

    const/16 v2, 0x8a

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/a/e/e/d;-><init>(Lcom/google/android/a/e/m;)V

    goto :goto_4

    :sswitch_6
    new-instance v1, Lcom/google/android/a/e/e/f;

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/a/e/e/f;-><init>(Lcom/google/android/a/e/m;)V

    goto/16 :goto_4

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    invoke-static {v1}, Lcom/google/android/a/e/e/o;->a(Lcom/google/android/a/e/e/o;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_8
    new-instance v3, Lcom/google/android/a/e/e/g;

    const/16 v1, 0x1b

    invoke-interface {p3, v1}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v6

    new-instance v7, Lcom/google/android/a/e/e/n;

    const/16 v1, 0x100

    invoke-interface {p3, v1}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/google/android/a/e/e/n;-><init>(Lcom/google/android/a/e/m;)V

    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    invoke-static {v1}, Lcom/google/android/a/e/e/o;->a(Lcom/google/android/a/e/e/o;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    iget-object v2, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    invoke-static {v2}, Lcom/google/android/a/e/e/o;->a(Lcom/google/android/a/e/e/o;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-direct {v3, v6, v7, v1, v2}, Lcom/google/android/a/e/e/g;-><init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/e/n;ZZ)V

    move-object v1, v3

    goto/16 :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_8
    new-instance v1, Lcom/google/android/a/e/e/h;

    const/16 v2, 0x24

    invoke-interface {p3, v2}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v2

    new-instance v3, Lcom/google/android/a/e/e/n;

    const/16 v6, 0x100

    invoke-interface {p3, v6}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/android/a/e/e/n;-><init>(Lcom/google/android/a/e/m;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/a/e/e/h;-><init>(Lcom/google/android/a/e/m;Lcom/google/android/a/e/e/n;)V

    goto/16 :goto_4

    :sswitch_9
    iget-object v1, p0, Lcom/google/android/a/e/e/o$c;->a:Lcom/google/android/a/e/e/o;

    iget-object v1, v1, Lcom/google/android/a/e/e/o;->c:Lcom/google/android/a/e/e/i;

    goto/16 :goto_4

    :cond_b
    invoke-interface {p3}, Lcom/google/android/a/e/g;->a()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_2
        0x15 -> :sswitch_9
        0x1b -> :sswitch_7
        0x24 -> :sswitch_8
        0x81 -> :sswitch_3
        0x82 -> :sswitch_5
        0x87 -> :sswitch_4
        0x8a -> :sswitch_5
    .end sparse-switch
.end method
