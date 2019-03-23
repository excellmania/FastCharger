.class public Lcom/google/android/a/c/a/i$e;
.super Lcom/google/android/a/c/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field final e:J

.field final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/a/c/a/g;JJLjava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/a/c/a/i;-><init>(Lcom/google/android/a/c/a/g;JJ)V

    iput-object p6, p0, Lcom/google/android/a/c/a/i$e;->d:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/a/c/a/i$e;->e:J

    iput-wide p9, p0, Lcom/google/android/a/c/a/i$e;->f:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v6, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/a/c/a/i$e;-><init>(Lcom/google/android/a/c/a/g;JJLjava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/a/c/a/g;
    .locals 8

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/google/android/a/c/a/i$e;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/a/i$e;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/a/c/a/i$e;->e:J

    iget-wide v6, p0, Lcom/google/android/a/c/a/i$e;->f:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v3, v1

    goto :goto_0
.end method
