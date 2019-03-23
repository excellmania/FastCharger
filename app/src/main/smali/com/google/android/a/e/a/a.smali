.class final Lcom/google/android/a/e/a/a;
.super Lcom/google/android/a/e/a/d;


# static fields
.field private static final b:[I


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/a/e/a/a;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/a/e/a/d;-><init>(Lcom/google/android/a/e/m;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/a/h/o;J)V
    .locals 12

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/google/android/a/e/a/a;->d:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v1

    new-array v8, v1, [B

    array-length v1, v8

    invoke-virtual {p1, v8, v6, v1}, Lcom/google/android/a/h/o;->a([BII)V

    invoke-static {v8}, Lcom/google/android/a/h/d;->a([B)Landroid/util/Pair;

    move-result-object v7

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p0}, Lcom/google/android/a/e/a/a;->a()J

    move-result-wide v4

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move v3, v2

    move-object v9, v0

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/a/a;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iput-boolean v10, p0, Lcom/google/android/a/e/a/a;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v10, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->b()I

    move-result v5

    iget-object v1, p0, Lcom/google/android/a/e/a/a;->a:Lcom/google/android/a/e/m;

    invoke-interface {v1, p1, v5}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget-object v1, p0, Lcom/google/android/a/e/a/a;->a:Lcom/google/android/a/e/m;

    move-wide v2, p2

    move v4, v10

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/a/h/o;)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/a/e/a/a;->c:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    if-ltz v0, :cond_0

    sget-object v2, Lcom/google/android/a/e/a/a;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/google/android/a/e/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid sample rate index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/a/e/a/d$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    new-instance v0, Lcom/google/android/a/e/a/d$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/e/a/d$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/a/e/a/a;->c:Z

    :goto_0
    return v3

    :cond_3
    invoke-virtual {p1, v3}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_0
.end method
