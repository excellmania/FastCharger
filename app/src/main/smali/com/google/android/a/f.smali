.class public final Lcom/google/android/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/f$b;,
        Lcom/google/android/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/g/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/a/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/a/f$a;

.field private final f:J

.field private final g:J

.field private final h:F

.field private final i:F

.field private j:I

.field private k:J

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/a/f;-><init>(Lcom/google/android/a/g/b;Landroid/os/Handler;Lcom/google/android/a/f$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/g/b;Landroid/os/Handler;Lcom/google/android/a/f$a;)V
    .locals 8

    const/16 v4, 0x3a98

    const/16 v5, 0x7530

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/f;-><init>(Lcom/google/android/a/g/b;Landroid/os/Handler;Lcom/google/android/a/f$a;IIFF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/g/b;Landroid/os/Handler;Lcom/google/android/a/f$a;IIFF)V
    .locals 4

    const-wide/16 v2, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/f;->a:Lcom/google/android/a/g/b;

    iput-object p2, p0, Lcom/google/android/a/f;->d:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/a/f;->e:Lcom/google/android/a/f$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/f;->f:J

    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/f;->g:J

    iput p6, p0, Lcom/google/android/a/f;->h:F

    iput p7, p0, Lcom/google/android/a/f;->i:F

    return-void
.end method

.method private a(I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/a/f;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/a/f;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/a/f;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(JJ)I
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-long v2, p3, p1

    iget-wide v4, p0, Lcom/google/android/a/f;->g:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/f;->f:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/a/f;)Lcom/google/android/a/f$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/f;->e:Lcom/google/android/a/f$a;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/f;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/f;->e:Lcom/google/android/a/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/f;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/f$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/f$1;-><init>(Lcom/google/android/a/f;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/a/f;->l:I

    move v1, v2

    move v3, v0

    move v4, v2

    move v5, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/f$b;

    iget-boolean v6, v0, Lcom/google/android/a/f$b;->c:Z

    or-int/2addr v5, v6

    iget-wide v8, v0, Lcom/google/android/a/f$b;->d:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_0

    move v6, v7

    :goto_1
    or-int/2addr v4, v6

    iget v0, v0, Lcom/google/android/a/f$b;->b:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v6, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v5, :cond_2

    if-eqz v4, :cond_7

    :cond_2
    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    if-ne v3, v7, :cond_7

    iget-boolean v0, p0, Lcom/google/android/a/f;->m:Z

    if-eqz v0, :cond_7

    :cond_3
    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/a/f;->m:Z

    iget-boolean v0, p0, Lcom/google/android/a/f;->m:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/a/f;->n:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/google/android/a/g/p;->a:Lcom/google/android/a/g/p;

    invoke-virtual {v0, v2}, Lcom/google/android/a/g/p;->a(I)V

    iput-boolean v7, p0, Lcom/google/android/a/f;->n:Z

    invoke-direct {p0, v7}, Lcom/google/android/a/f;->a(Z)V

    :cond_4
    :goto_3
    iput-wide v10, p0, Lcom/google/android/a/f;->k:J

    iget-boolean v0, p0, Lcom/google/android/a/f;->m:Z

    if-eqz v0, :cond_9

    :goto_4
    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/f$b;

    iget-wide v0, v0, Lcom/google/android/a/f$b;->d:J

    cmp-long v3, v0, v10

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lcom/google/android/a/f;->k:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_5

    iget-wide v4, p0, Lcom/google/android/a/f;->k:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    :cond_5
    iput-wide v0, p0, Lcom/google/android/a/f;->k:J

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcom/google/android/a/f;->m:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/a/f;->n:Z

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    sget-object v0, Lcom/google/android/a/g/p;->a:Lcom/google/android/a/g/p;

    invoke-virtual {v0, v2}, Lcom/google/android/a/g/p;->b(I)V

    iput-boolean v2, p0, Lcom/google/android/a/f;->n:Z

    invoke-direct {p0, v2}, Lcom/google/android/a/f;->a(Z)V

    goto :goto_3

    :cond_9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/f;->a:Lcom/google/android/a/g/b;

    iget v1, p0, Lcom/google/android/a/f;->j:I

    invoke-interface {v0, v1}, Lcom/google/android/a/g/b;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/f$b;

    iget v1, p0, Lcom/google/android/a/f;->j:I

    iget v0, v0, Lcom/google/android/a/f$b;->a:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/google/android/a/f;->j:I

    invoke-direct {p0}, Lcom/google/android/a/f;->c()V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/a/f$b;

    invoke-direct {v1, p2}, Lcom/google/android/a/f$b;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/a/f;->j:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/a/f;->j:I

    return-void
.end method

.method public a(Ljava/lang/Object;JJZ)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/a/f;->a(JJ)I

    move-result v4

    iget-object v0, p0, Lcom/google/android/a/f;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/f$b;

    iget v3, v0, Lcom/google/android/a/f$b;->b:I

    if-ne v3, v4, :cond_0

    iget-wide v6, v0, Lcom/google/android/a/f$b;->d:J

    cmp-long v3, v6, p4

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/google/android/a/f$b;->c:Z

    if-eq v3, p6, :cond_5

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    iput v4, v0, Lcom/google/android/a/f$b;->b:I

    iput-wide p4, v0, Lcom/google/android/a/f$b;->d:J

    iput-boolean p6, v0, Lcom/google/android/a/f$b;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/f;->a:Lcom/google/android/a/g/b;

    invoke-interface {v0}, Lcom/google/android/a/g/b;->b()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/a/f;->a(I)I

    move-result v5

    iget v0, p0, Lcom/google/android/a/f;->l:I

    if-eq v0, v5, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iput v5, p0, Lcom/google/android/a/f;->l:I

    :cond_2
    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/google/android/a/f;->c()V

    :cond_4
    iget v0, p0, Lcom/google/android/a/f;->j:I

    if-ge v4, v0, :cond_7

    const-wide/16 v4, -0x1

    cmp-long v0, p4, v4

    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/google/android/a/f;->k:J

    cmp-long v0, p4, v4

    if-gtz v0, :cond_7

    move v0, v1

    :goto_2
    return v0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public b()Lcom/google/android/a/g/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/f;->a:Lcom/google/android/a/g/b;

    return-object v0
.end method
