.class final Lcom/google/android/a/e/d/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/a/e/d/e$b;

.field private final b:Lcom/google/android/a/h/o;

.field private final c:Lcom/google/android/a/e/d/e$a;

.field private d:I

.field private e:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/a/e/d/e$b;

    invoke-direct {v0}, Lcom/google/android/a/e/d/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/e/d/e$a;

    invoke-direct {v0}, Lcom/google/android/a/e/d/e$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/d/c;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;)J
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->a(Z)V

    invoke-static {p1}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;)V

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    invoke-virtual {v0}, Lcom/google/android/a/e/d/e$b;->a()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v0, v0, Lcom/google/android/a/e/d/e$b;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-interface {p1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/a/e/f;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v2, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v0, v0, Lcom/google/android/a/e/d/e$b;->h:I

    iget-object v2, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v2, v2, Lcom/google/android/a/e/d/e$b;->i:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-wide v0, v0, Lcom/google/android/a/e/d/e$b;->c:J

    return-wide v0
.end method

.method public a(Lcom/google/android/a/e/f;J)J
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;)V

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v1, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-wide v0, v0, Lcom/google/android/a/e/d/e$b;->c:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v0, v0, Lcom/google/android/a/e/d/e$b;->h:I

    iget-object v1, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v1, v1, Lcom/google/android/a/e/d/e$b;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-wide v0, v0, Lcom/google/android/a/e/d/e$b;->c:J

    iput-wide v0, p0, Lcom/google/android/a/e/d/c;->e:J

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v1, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/e/d/c;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/a/t;

    invoke-direct {v0}, Lcom/google/android/a/t;-><init>()V

    throw v0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    iget-wide v0, p0, Lcom/google/android/a/e/d/c;->e:J

    iput-wide v4, p0, Lcom/google/android/a/e/d/c;->e:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/a/e/d/c;->d:I

    return-wide v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    invoke-virtual {v0}, Lcom/google/android/a/e/d/e$b;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/d/c;->d:I

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    move v4, v2

    :goto_1
    if-nez v4, :cond_5

    iget v0, p0, Lcom/google/android/a/e/d/c;->d:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v3, p0, Lcom/google/android/a/e/d/c;->b:Lcom/google/android/a/h/o;

    invoke-static {p1, v0, v3, v1}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v0, v0, Lcom/google/android/a/e/d/e$b;->h:I

    iget-object v3, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v3, v3, Lcom/google/android/a/e/d/e$b;->b:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_7

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->c()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v5, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    invoke-static {v3, v2, v5}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/d/e$b;ILcom/google/android/a/e/d/e$a;)V

    iget-object v3, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v3, v3, Lcom/google/android/a/e/d/e$a;->b:I

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v5, v5, Lcom/google/android/a/e/d/e$a;->a:I

    add-int/2addr v0, v5

    :goto_3
    invoke-interface {p1, v0}, Lcom/google/android/a/e/f;->b(I)V

    iput v3, p0, Lcom/google/android/a/e/d/c;->d:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v3, p0, Lcom/google/android/a/e/d/c;->d:I

    iget-object v5, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    invoke-static {v0, v3, v5}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/d/e$b;ILcom/google/android/a/e/d/e$a;)V

    iget v0, p0, Lcom/google/android/a/e/d/c;->d:I

    iget-object v3, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v3, v3, Lcom/google/android/a/e/d/e$a;->b:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v0, v0, Lcom/google/android/a/e/d/e$a;->a:I

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/google/android/a/h/o;->a:[B

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->c()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v5, v5, Lcom/google/android/a/e/d/e$a;->a:I

    invoke-interface {p1, v0, v4, v5}, Lcom/google/android/a/e/f;->b([BII)V

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->c()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/a/e/d/c;->c:Lcom/google/android/a/e/d/e$a;

    iget v4, v4, Lcom/google/android/a/e/d/e$a;->a:I

    add-int/2addr v0, v4

    invoke-virtual {p2, v0}, Lcom/google/android/a/h/o;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v0, v0, Lcom/google/android/a/e/d/e$b;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v0, v0, v4

    const/16 v4, 0xff

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/google/android/a/e/d/c;->a:Lcom/google/android/a/e/d/e$b;

    iget v4, v4, Lcom/google/android/a/e/d/e$b;->g:I

    if-ne v3, v4, :cond_3

    const/4 v3, -0x1

    :cond_3
    iput v3, p0, Lcom/google/android/a/e/d/c;->d:I

    move v4, v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_3
.end method
