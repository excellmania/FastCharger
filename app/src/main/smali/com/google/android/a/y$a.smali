.class public final Lcom/google/android/a/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Lcom/google/android/a/h/c;


# direct methods
.method public constructor <init>(JJJJLcom/google/android/a/h/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/y$a;->a:J

    iput-wide p3, p0, Lcom/google/android/a/y$a;->b:J

    iput-wide p5, p0, Lcom/google/android/a/y$a;->c:J

    iput-wide p7, p0, Lcom/google/android/a/y$a;->d:J

    iput-object p9, p0, Lcom/google/android/a/y$a;->e:Lcom/google/android/a/h/c;

    return-void
.end method


# virtual methods
.method public a([J)[J
    .locals 8

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [J

    :cond_1
    iget-wide v0, p0, Lcom/google/android/a/y$a;->b:J

    iget-object v2, p0, Lcom/google/android/a/y$a;->e:Lcom/google/android/a/h/c;

    invoke-interface {v2}, Lcom/google/android/a/h/c;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/a/y$a;->c:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/a/y$a;->a:J

    iget-wide v4, p0, Lcom/google/android/a/y$a;->d:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/a/y$a;->d:J

    sub-long v4, v2, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_2
    const/4 v4, 0x0

    aput-wide v0, p1, v4

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

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
    check-cast p1, Lcom/google/android/a/y$a;

    iget-wide v2, p1, Lcom/google/android/a/y$a;->a:J

    iget-wide v4, p0, Lcom/google/android/a/y$a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/a/y$a;->b:J

    iget-wide v4, p0, Lcom/google/android/a/y$a;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/a/y$a;->c:J

    iget-wide v4, p0, Lcom/google/android/a/y$a;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/a/y$a;->d:J

    iget-wide v4, p0, Lcom/google/android/a/y$a;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/y$a;->a:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/y$a;->b:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/y$a;->c:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/y$a;->d:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
