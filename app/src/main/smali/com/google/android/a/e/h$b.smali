.class Lcom/google/android/a/e/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/a/g/f;

.field private final c:Lcom/google/android/a/e/h$c;

.field private final d:Lcom/google/android/a/g/b;

.field private final e:I

.field private final f:Lcom/google/android/a/e/j;

.field private volatile g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/e/h$c;Lcom/google/android/a/g/b;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/a/e/h$b;->a:Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/f;

    iput-object v0, p0, Lcom/google/android/a/e/h$b;->b:Lcom/google/android/a/g/f;

    invoke-static {p3}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$c;

    iput-object v0, p0, Lcom/google/android/a/e/h$b;->c:Lcom/google/android/a/e/h$c;

    invoke-static {p4}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/b;

    iput-object v0, p0, Lcom/google/android/a/e/h$b;->d:Lcom/google/android/a/g/b;

    iput p5, p0, Lcom/google/android/a/e/h$b;->e:I

    new-instance v0, Lcom/google/android/a/e/j;

    invoke-direct {v0}, Lcom/google/android/a/e/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    iget-object v0, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    iput-wide p6, v0, Lcom/google/android/a/e/j;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/h$b;->h:Z

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/h$b;->g:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/e/h$b;->g:Z

    return v0
.end method

.method public h()V
    .locals 15

    const-wide/16 v12, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    move v9, v7

    :goto_0
    if-nez v9, :cond_7

    iget-boolean v0, p0, Lcom/google/android/a/e/h$b;->g:Z

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    iget-wide v2, v0, Lcom/google/android/a/e/j;->a:J

    iget-object v10, p0, Lcom/google/android/a/e/h$b;->b:Lcom/google/android/a/g/f;

    new-instance v0, Lcom/google/android/a/g/h;

    iget-object v1, p0, Lcom/google/android/a/e/h$b;->a:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/g/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    invoke-interface {v10, v0}, Lcom/google/android/a/g/f;->a(Lcom/google/android/a/g/h;)J

    move-result-wide v4

    cmp-long v0, v4, v12

    if-eqz v0, :cond_0

    add-long/2addr v4, v2

    :cond_0
    new-instance v0, Lcom/google/android/a/e/b;

    iget-object v1, p0, Lcom/google/android/a/e/h$b;->b:Lcom/google/android/a/g/f;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/b;-><init>(Lcom/google/android/a/g/f;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/a/e/h$b;->c:Lcom/google/android/a/e/h$c;

    invoke-virtual {v1, v0}, Lcom/google/android/a/e/h$c;->a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/e;

    move-result-object v2

    iget-boolean v1, p0, Lcom/google/android/a/e/h$b;->h:Z

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lcom/google/android/a/e/e;->b()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/a/e/h$b;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    move v1, v9

    :goto_1
    if-nez v1, :cond_2

    :try_start_2
    iget-boolean v3, p0, Lcom/google/android/a/e/h$b;->g:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/a/e/h$b;->d:Lcom/google/android/a/g/b;

    iget v4, p0, Lcom/google/android/a/e/h$b;->e:I

    invoke-interface {v3, v4}, Lcom/google/android/a/g/b;->b(I)V

    iget-object v3, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    invoke-interface {v2, v0, v3}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    move v1, v9

    goto :goto_1

    :cond_2
    if-ne v1, v11, :cond_3

    move v0, v7

    :goto_2
    iget-object v1, p0, Lcom/google/android/a/e/h$b;->b:Lcom/google/android/a/g/f;

    invoke-interface {v1}, Lcom/google/android/a/g/f;->b()V

    move v9, v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    invoke-interface {v0}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/a/e/j;->a:J

    :cond_4
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    move v2, v9

    :goto_3
    if-ne v2, v11, :cond_6

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/google/android/a/e/h$b;->b:Lcom/google/android/a/g/f;

    invoke-interface {v1}, Lcom/google/android/a/g/f;->b()V

    throw v0

    :cond_6
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/a/e/h$b;->f:Lcom/google/android/a/e/j;

    invoke-interface {v1}, Lcom/google/android/a/e/f;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/google/android/a/e/j;->a:J

    goto :goto_4

    :cond_7
    return-void

    :catchall_1
    move-exception v1

    move v2, v9

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v14, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_3
.end method
