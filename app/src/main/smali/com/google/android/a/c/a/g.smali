.class public final Lcom/google/android/a/c/a/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->a(Z)V

    iput-object p1, p0, Lcom/google/android/a/c/a/g;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/a/c/a/g;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/a/c/a/g;->a:J

    iput-wide p5, p0, Lcom/google/android/a/c/a/g;->b:J

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/c/a/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/a/h/w;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/a/c/a/g;)Lcom/google/android/a/c/a/g;
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/c/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/a/c/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/a/c/a/g;->b:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v4, p0, Lcom/google/android/a/c/a/g;->b:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/a/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/a/c/a/g;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v8, p1, Lcom/google/android/a/c/a/g;->b:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    :goto_1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/android/a/c/a/g;->b:J

    iget-wide v8, p1, Lcom/google/android/a/c/a/g;->b:J

    add-long/2addr v6, v8

    goto :goto_1

    :cond_3
    iget-wide v2, p1, Lcom/google/android/a/c/a/g;->b:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->b:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/a/c/a/g;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/a/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/a/c/a/g;->d:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v8, p0, Lcom/google/android/a/c/a/g;->b:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_4

    :goto_2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    iget-wide v6, p1, Lcom/google/android/a/c/a/g;->b:J

    iget-wide v8, p0, Lcom/google/android/a/c/a/g;->b:J

    add-long/2addr v6, v8

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/c/a/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/a/h/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/a/c/a/g;

    iget-wide v2, p0, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/a/c/a/g;->b:J

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/a/c/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/a/c/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/a/c/a/g;->e:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/c/a/g;->a:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/c/a/g;->b:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/a/c/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/c/a/g;->e:I

    :cond_0
    iget v0, p0, Lcom/google/android/a/c/a/g;->e:I

    return v0
.end method
