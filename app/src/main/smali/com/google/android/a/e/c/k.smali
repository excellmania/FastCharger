.class final Lcom/google/android/a/e/c/k;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/a/e/c/c;

.field public b:J

.field public c:J

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[J

.field public h:[Z

.field public i:Z

.field public j:[Z

.field public k:I

.field public l:Lcom/google/android/a/h/o;

.field public m:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/c/k;->d:I

    iput-boolean v0, p0, Lcom/google/android/a/e/c/k;->i:Z

    iput-boolean v0, p0, Lcom/google/android/a/e/c/k;->m:Z

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/a/e/c/k;->d:I

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->e:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/android/a/e/c/k;->d:I

    if-ge v0, v1, :cond_1

    :cond_0
    mul-int/lit8 v0, p1, 0x7d

    div-int/lit8 v0, v0, 0x64

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/a/e/c/k;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/a/e/c/k;->f:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/a/e/c/k;->g:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/android/a/e/c/k;->h:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/a/e/c/k;->j:[Z

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/e/c/k;->k:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/a/e/f;->b([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    iput-boolean v2, p0, Lcom/google/android/a/e/c/k;->m:Z

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    iget v1, p0, Lcom/google/android/a/e/c/k;->k:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/a/h/o;->a([BII)V

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->b(I)V

    iput-boolean v2, p0, Lcom/google/android/a/e/c/k;->m:Z

    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/a/h/o;

    invoke-direct {v0, p1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/c/k;->l:Lcom/google/android/a/h/o;

    :cond_1
    iput p1, p0, Lcom/google/android/a/e/c/k;->k:I

    iput-boolean v1, p0, Lcom/google/android/a/e/c/k;->i:Z

    iput-boolean v1, p0, Lcom/google/android/a/e/c/k;->m:Z

    return-void
.end method

.method public c(I)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/e/c/k;->g:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/google/android/a/e/c/k;->f:[I

    aget v2, v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
