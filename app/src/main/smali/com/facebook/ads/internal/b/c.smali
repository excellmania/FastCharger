.class public Lcom/facebook/ads/internal/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:D

.field private c:I

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/c;->f:D

    iput-wide p1, p0, Lcom/facebook/ads/internal/b/c;->i:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->a:D

    return-wide v0
.end method

.method a(DD)V
    .locals 5

    iget v0, p0, Lcom/facebook/ads/internal/b/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/internal/b/c;->c:I

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->d:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/c;->d:D

    iput-wide p3, p0, Lcom/facebook/ads/internal/b/c;->b:D

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->g:D

    mul-double v2, p3, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/c;->g:D

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->g:D

    iget-wide v2, p0, Lcom/facebook/ads/internal/b/c;->d:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/c;->a:D

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->f:D

    cmpl-double v0, v0, p3

    if-lez v0, :cond_0

    iput-wide p3, p0, Lcom/facebook/ads/internal/b/c;->f:D

    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->e:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1

    iput-wide p3, p0, Lcom/facebook/ads/internal/b/c;->e:D

    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->i:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->h:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/b/c;->h:D

    :cond_2
    return-void
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->d:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->f:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/b/c;->h:D

    return-wide v0
.end method
