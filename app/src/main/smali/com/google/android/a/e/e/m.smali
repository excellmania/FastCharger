.class public final Lcom/google/android/a/e/e/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/a/e/e/m;->a:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/e/e/m;->c:J

    return-void
.end method

.method public static b(J)J
    .locals 4

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(J)J
    .locals 11

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v4, 0x200000000L

    iget-wide v0, p0, Lcom/google/android/a/e/e/m;->c:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/a/e/e/m;->c:J

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    div-long v2, v0, v4

    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    mul-long/2addr v0, v4

    add-long/2addr v0, p1

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/google/android/a/e/e/m;->c:J

    sub-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/a/e/e/m;->c:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/a/e/e/m;->b(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/a/e/e/m;->a:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/a/e/e/m;->c:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/a/e/e/m;->a:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/a/e/e/m;->b:J

    :cond_0
    iput-wide v0, p0, Lcom/google/android/a/e/e/m;->c:J

    iget-wide v0, p0, Lcom/google/android/a/e/e/m;->b:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, p1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/e/e/m;->c:J

    return-void
.end method
