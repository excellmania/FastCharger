.class final Lcom/google/android/a/e/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/f/c$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/f/b;
    .locals 14

    const/16 v4, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/a/h/o;

    invoke-direct {v5, v4}, Lcom/google/android/a/h/o;-><init>(I)V

    invoke-static {p0, v5}, Lcom/google/android/a/e/f/c$a;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/a/e/f/c$a;->a:I

    const-string v1, "RIFF"

    invoke-static {v1}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v5, Lcom/google/android/a/h/o;->a:[B

    const/4 v1, 0x4

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-virtual {v5, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    const-string v1, "WAVE"

    invoke-static {v1}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v1, "WavHeaderReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported RIFF format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_0

    :cond_1
    invoke-static {p0, v5}, Lcom/google/android/a/e/f/c$a;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;

    move-result-object v0

    :goto_1
    iget v1, v0, Lcom/google/android/a/e/f/c$a;->a:I

    const-string v3, "fmt "

    invoke-static {v3}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_2

    iget-wide v0, v0, Lcom/google/android/a/e/f/c$a;->b:J

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lcom/google/android/a/e/f;->c(I)V

    invoke-static {p0, v5}, Lcom/google/android/a/e/f/c$a;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-wide v10, v0, Lcom/google/android/a/e/f/c$a;->b:J

    const-wide/16 v12, 0x10

    cmp-long v1, v10, v12

    if-ltz v1, :cond_3

    move v1, v7

    :goto_2
    invoke-static {v1}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v1, v5, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p0, v1, v2, v4}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-virtual {v5, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->h()I

    move-result v9

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->h()I

    move-result v1

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->t()I

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->t()I

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->h()I

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/a/h/o;->h()I

    move-result v5

    mul-int v6, v1, v5

    div-int/lit8 v6, v6, 0x8

    if-eq v4, v6, :cond_4

    new-instance v0, Lcom/google/android/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected block alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/google/android/a/h/x;->b(I)I

    move-result v6

    if-nez v6, :cond_5

    const-string v0, "WavHeaderReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WAV bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    if-eq v9, v7, :cond_6

    const v7, 0xfffe

    if-eq v9, v7, :cond_6

    const-string v0, "WavHeaderReader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported WAV format type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto/16 :goto_0

    :cond_6
    iget-wide v8, v0, Lcom/google/android/a/e/f/c$a;->b:J

    long-to-int v0, v8

    add-int/lit8 v0, v0, -0x10

    invoke-interface {p0, v0}, Lcom/google/android/a/e/f;->c(I)V

    new-instance v0, Lcom/google/android/a/e/f/b;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/e/f/b;-><init>(IIIIII)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/f/b;)V
    .locals 7

    const/16 v6, 0x8

    invoke-static {p0}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/a/e/f;->a()V

    new-instance v1, Lcom/google/android/a/h/o;

    invoke-direct {v1, v6}, Lcom/google/android/a/h/o;-><init>(I)V

    invoke-static {p0, v1}, Lcom/google/android/a/e/f/c$a;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;

    move-result-object v0

    :goto_0
    iget v2, v0, Lcom/google/android/a/e/f/c$a;->a:I

    const-string v3, "data"

    invoke-static {v3}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v2, "WavHeaderReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/google/android/a/e/f/c$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8

    iget-wide v4, v0, Lcom/google/android/a/e/f/c$a;->b:J

    add-long/2addr v2, v4

    iget v4, v0, Lcom/google/android/a/e/f/c$a;->a:I

    const-string v5, "RIFF"

    invoke-static {v5}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    const-wide/16 v2, 0xc

    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    new-instance v1, Lcom/google/android/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/a/e/f/c$a;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    long-to-int v0, v2

    invoke-interface {p0, v0}, Lcom/google/android/a/e/f;->b(I)V

    invoke-static {p0, v1}, Lcom/google/android/a/e/f/c$a;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p0, v6}, Lcom/google/android/a/e/f;->b(I)V

    invoke-interface {p0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/google/android/a/e/f/c$a;->b:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/a/e/f/b;->a(JJ)V

    return-void
.end method
