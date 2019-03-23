.class final Lcom/google/android/a/e/d/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/a/e/d/e$b;

.field private final b:Lcom/google/android/a/h/o;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/a/e/d/e$b;

    invoke-direct {v0}, Lcom/google/android/a/e/d/e$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/d/d;->a:Lcom/google/android/a/e/d/e$b;

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/d/d;->b:Lcom/google/android/a/h/o;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/d/d;->c:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/a/e/f;)J
    .locals 11

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    iget-wide v6, p0, Lcom/google/android/a/e/d/d;->c:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    iget-wide v6, p0, Lcom/google/android/a/e/d/d;->d:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/d/d;->a:Lcom/google/android/a/e/d/e$b;

    iget-object v3, p0, Lcom/google/android/a/e/d/d;->b:Lcom/google/android/a/h/o;

    invoke-static {p3, v0, v3, v2}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    iget-object v0, p0, Lcom/google/android/a/e/d/d;->a:Lcom/google/android/a/e/d/e$b;

    iget-wide v2, v0, Lcom/google/android/a/e/d/e$b;->c:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    const-wide/32 v6, 0x11940

    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/d/d;->a:Lcom/google/android/a/e/d/e$b;

    iget v0, v0, Lcom/google/android/a/e/d/e$b;->i:I

    iget-object v4, p0, Lcom/google/android/a/e/d/d;->a:Lcom/google/android/a/e/d/e$b;

    iget v4, v4, Lcom/google/android/a/e/d/e$b;->h:I

    add-int/2addr v0, v4

    cmp-long v4, v2, v8

    if-gtz v4, :cond_1

    const/4 v1, 0x2

    :cond_1
    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-interface {p3}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-wide v4, p0, Lcom/google/android/a/e/d/d;->c:J

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/a/e/d/d;->d:J

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    :goto_1
    return-wide v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Lcom/google/android/a/e/f;->a()V

    move-wide v0, v4

    goto :goto_1
.end method

.method public a(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/a/e/d/d;->c:J

    iput-wide p3, p0, Lcom/google/android/a/e/d/d;->d:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
