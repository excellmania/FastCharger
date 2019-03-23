.class public abstract Lcom/google/android/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/h$a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJZ)V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract a(JJ)V
.end method

.method protected b()Lcom/google/android/a/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b(I)Lcom/google/android/a/r;
.end method

.method final b(IJZ)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/a/z;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/z;->a:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/a/z;->a(IJZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected abstract c(J)Z
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected abstract d(J)V
.end method

.method protected abstract e()Z
.end method

.method final f(J)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/a/z;->a:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/z;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/a/z;->a:I

    iget v0, p0, Lcom/google/android/a/z;->a:I

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected abstract f()Z
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected abstract p()J
.end method

.method protected abstract q()J
.end method

.method protected abstract r()V
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected abstract t()I
.end method

.method protected final u()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/z;->a:I

    return v0
.end method

.method final v()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/z;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/a/z;->a:I

    invoke-virtual {p0}, Lcom/google/android/a/z;->c()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final w()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/z;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/z;->a:I

    invoke-virtual {p0}, Lcom/google/android/a/z;->d()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final x()V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/a/z;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput v1, p0, Lcom/google/android/a/z;->a:I

    invoke-virtual {p0}, Lcom/google/android/a/z;->g()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final y()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/google/android/a/z;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/z;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/z;->a:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput v2, p0, Lcom/google/android/a/z;->a:I

    invoke-virtual {p0}, Lcom/google/android/a/z;->s()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
