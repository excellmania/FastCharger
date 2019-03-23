.class public final Lcom/google/android/a/c/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lcom/google/android/a/b/d;

.field public c:Lcom/google/android/a/c/a/h;

.field public d:Lcom/google/android/a/c/b;

.field public e:Lcom/google/android/a/r;

.field private final f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(JJLcom/google/android/a/c/a/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/c/a$d;->f:J

    iput-wide p3, p0, Lcom/google/android/a/c/a$d;->g:J

    iput-object p5, p0, Lcom/google/android/a/c/a$d;->c:Lcom/google/android/a/c/a/h;

    iget-object v0, p5, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget-object v0, v0, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/c/a;->b(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/a/c/a$d;->a:Z

    iget-boolean v1, p0, Lcom/google/android/a/c/a$d;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/a/c/a$d;->b:Lcom/google/android/a/b/d;

    invoke-virtual {p5}, Lcom/google/android/a/c/a/h;->e()Lcom/google/android/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/a/b/d;

    invoke-static {v0}, Lcom/google/android/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/a/e/g/f;

    invoke-direct {v0}, Lcom/google/android/a/e/g/f;-><init>()V

    :goto_1
    invoke-direct {v1, v0}, Lcom/google/android/a/b/d;-><init>(Lcom/google/android/a/e/e;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/a/e/c/e;

    invoke-direct {v0}, Lcom/google/android/a/e/c/e;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/c/b;->a(J)I

    move-result v0

    return v0
.end method

.method public a(J)I
    .locals 7

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->f:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/a/c/b;->a(JJ)I

    move-result v0

    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public a(I)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/a/c/b;->a(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(JLcom/google/android/a/c/a/h;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->c:Lcom/google/android/a/c/a/h;

    invoke-virtual {v0}, Lcom/google/android/a/c/a/h;->e()Lcom/google/android/a/c/b;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/a/c/a/h;->e()Lcom/google/android/a/c/b;

    move-result-object v1

    iput-wide p1, p0, Lcom/google/android/a/c/a$d;->g:J

    iput-object p3, p0, Lcom/google/android/a/c/a$d;->c:Lcom/google/android/a/c/a/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    invoke-interface {v0}, Lcom/google/android/a/c/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/c/b;->a(J)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/android/a/c/b;->a(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v2, v6, v7}, Lcom/google/android/a/c/b;->a(IJ)J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-interface {v1}, Lcom/google/android/a/c/b;->a()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/google/android/a/c/b;->a(I)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/a/c/b;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/c/a$d;->h:I

    goto :goto_0

    :cond_2
    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    iget-wide v2, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v0, v6, v7, v2, v3}, Lcom/google/android/a/c/b;->a(JJ)I

    move-result v0

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/c/a$d;->h:I

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    invoke-interface {v0}, Lcom/google/android/a/c/b;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(I)J
    .locals 6

    invoke-virtual {p0, p1}, Lcom/google/android/a/c/a$d;->a(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    iget v3, p0, Lcom/google/android/a/c/a$d;->h:I

    sub-int v3, p1, v3

    iget-wide v4, p0, Lcom/google/android/a/c/a$d;->g:J

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/a/c/b;->a(IJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/c/a$d;->a()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/google/android/a/c/a$d;->h:I

    add-int/2addr v1, v2

    if-le p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(I)Lcom/google/android/a/c/a/g;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    iget v1, p0, Lcom/google/android/a/c/a$d;->h:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/android/a/c/b;->b(I)Lcom/google/android/a/c/a/g;

    move-result-object v0

    return-object v0
.end method
