.class public final Lcom/google/android/a/h/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/a/h/g;Lcom/google/android/a/h/o;)J
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->w()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/a/h/g;->a:I

    iget v3, p0, Lcom/google/android/a/h/g;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/a/h/g;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/a/h/g;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method
