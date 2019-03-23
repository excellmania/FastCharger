.class public Lcom/google/android/a/e/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# instance fields
.field private a:Lcom/google/android/a/e/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/d/b;->a:Lcom/google/android/a/e/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/d/f;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a_(I)Lcom/google/android/a/e/m;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/a/e/g;->a()V

    iget-object v1, p0, Lcom/google/android/a/e/d/b;->a:Lcom/google/android/a/e/d/f;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/a/e/d/f;->a(Lcom/google/android/a/e/g;Lcom/google/android/a/e/m;)V

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/google/android/a/h/o;

    const/16 v3, 0x1b

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/a/h/o;-><init>([BI)V

    new-instance v3, Lcom/google/android/a/e/d/e$b;

    invoke-direct {v3}, Lcom/google/android/a/e/d/e$b;-><init>()V

    const/4 v4, 0x1

    invoke-static {p1, v3, v2, v4}, Lcom/google/android/a/e/d/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/d/e$b;Lcom/google/android/a/h/o;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/google/android/a/e/d/e$b;->b:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v3, v3, Lcom/google/android/a/e/d/e$b;->i:I

    if-ge v3, v6, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/a/h/o;->a()V

    iget-object v3, v2, Lcom/google/android/a/h/o;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-interface {p1, v3, v4, v5}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-static {v2}, Lcom/google/android/a/e/d/a;->a(Lcom/google/android/a/h/o;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/google/android/a/e/d/a;

    invoke-direct {v2}, Lcom/google/android/a/e/d/a;-><init>()V

    iput-object v2, p0, Lcom/google/android/a/e/d/b;->a:Lcom/google/android/a/e/d/f;

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/a/h/o;->a()V

    invoke-static {v2}, Lcom/google/android/a/e/d/h;->a(Lcom/google/android/a/h/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/a/e/d/h;

    invoke-direct {v2}, Lcom/google/android/a/e/d/h;-><init>()V

    iput-object v2, p0, Lcom/google/android/a/e/d/b;->a:Lcom/google/android/a/e/d/f;
    :try_end_0
    .catch Lcom/google/android/a/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/d/b;->a:Lcom/google/android/a/e/d/f;

    invoke-virtual {v0}, Lcom/google/android/a/e/d/f;->b()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
