.class public Lcom/facebook/ads/internal/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/facebook/ads/internal/b/c;

.field private final b:Lcom/facebook/ads/internal/b/c;

.field private final c:Lcom/facebook/ads/internal/b/b;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/b/b;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->e:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    new-instance v0, Lcom/facebook/ads/internal/b/c;

    iget-wide v2, p1, Lcom/facebook/ads/internal/b/b;->a:D

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/b/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/d;->b:Lcom/facebook/ads/internal/b/c;

    new-instance v0, Lcom/facebook/ads/internal/b/c;

    iget-wide v2, p1, Lcom/facebook/ads/internal/b/b;->a:D

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/b/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/b/d;->a:Lcom/facebook/ads/internal/b/c;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->e:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/d;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->f:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/d;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->d:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->a:Lcom/facebook/ads/internal/b/c;

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-boolean v2, p0, Lcom/facebook/ads/internal/b/d;->f:Z

    iget-boolean v3, p0, Lcom/facebook/ads/internal/b/d;->e:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/internal/b/b;->a(ZZLcom/facebook/ads/internal/b/c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->b:Lcom/facebook/ads/internal/b/c;

    goto :goto_0
.end method


# virtual methods
.method public a(DD)V
    .locals 9

    const-wide/16 v6, 0x0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/b/d;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->b:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/b/c;->a(DD)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->a:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/b/c;->a(DD)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/d;->a:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c;->d()D

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-boolean v2, v2, Lcom/facebook/ads/internal/b/b;->d:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-wide v2, v2, Lcom/facebook/ads/internal/b/b;->a:D

    cmpg-double v2, p3, v2

    if-gez v2, :cond_2

    new-instance v2, Lcom/facebook/ads/internal/b/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-wide v4, v3, Lcom/facebook/ads/internal/b/b;->a:D

    invoke-direct {v2, v4, v5}, Lcom/facebook/ads/internal/b/c;-><init>(D)V

    iput-object v2, p0, Lcom/facebook/ads/internal/b/d;->a:Lcom/facebook/ads/internal/b/c;

    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-wide v2, v2, Lcom/facebook/ads/internal/b/b;->b:D

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/ads/internal/b/d;->b:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/b/c;->b()D

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-wide v4, v4, Lcom/facebook/ads/internal/b/b;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    cmpl-double v2, v0, v6

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/d;->b()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/internal/b/d;->c:Lcom/facebook/ads/internal/b/b;

    iget-wide v2, v2, Lcom/facebook/ads/internal/b/b;->c:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/b/d;->a()V

    goto :goto_0
.end method