.class public final Lcom/google/android/a/y$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/y$b;->a:J

    iput-wide p3, p0, Lcom/google/android/a/y$b;->b:J

    return-void
.end method


# virtual methods
.method public a([J)[J
    .locals 4

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [J

    :cond_1
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/a/y$b;->a:J

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/a/y$b;->b:J

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
    check-cast p1, Lcom/google/android/a/y$b;

    iget-wide v2, p1, Lcom/google/android/a/y$b;->a:J

    iget-wide v4, p0, Lcom/google/android/a/y$b;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/a/y$b;->b:J

    iget-wide v4, p0, Lcom/google/android/a/y$b;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/y$b;->a:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/y$b;->b:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
