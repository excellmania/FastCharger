.class public final Lcom/google/android/a/b/n;
.super Lcom/google/android/a/b/b;


# instance fields
.field private final k:Lcom/google/android/a/r;

.field private final l:Lcom/google/android/a/d/a;

.field private volatile m:I

.field private volatile n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJILcom/google/android/a/r;Lcom/google/android/a/d/a;I)V
    .locals 15

    const/4 v13, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v14, p12

    invoke-direct/range {v3 .. v14}, Lcom/google/android/a/b/b;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJIZI)V

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/a/b/n;->k:Lcom/google/android/a/r;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/a/b/n;->l:Lcom/google/android/a/d/a;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/a/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/n;->k:Lcom/google/android/a/r;

    return-object v0
.end method

.method public c()Lcom/google/android/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/n;->l:Lcom/google/android/a/d/a;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget v0, p0, Lcom/google/android/a/b/n;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/b/n;->n:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/b/n;->n:Z

    return v0
.end method

.method public h()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/a/b/n;->e:Lcom/google/android/a/g/h;

    iget v2, p0, Lcom/google/android/a/b/n;->m:I

    invoke-static {v1, v2}, Lcom/google/android/a/h/x;->a(Lcom/google/android/a/g/h;I)Lcom/google/android/a/g/h;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/a/b/n;->g:Lcom/google/android/a/g/f;

    invoke-interface {v2, v1}, Lcom/google/android/a/g/f;->a(Lcom/google/android/a/g/h;)J

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/a/b/n;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/b/n;->m:I

    invoke-virtual {p0}, Lcom/google/android/a/b/n;->d()Lcom/google/android/a/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/b/n;->g:Lcom/google/android/a/g/f;

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/a/e/c;->a(Lcom/google/android/a/g/f;IZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v5, p0, Lcom/google/android/a/b/n;->m:I

    invoke-virtual {p0}, Lcom/google/android/a/b/n;->d()Lcom/google/android/a/e/c;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/a/b/n;->h:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/a/e/c;->a(JIII[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/a/b/n;->g:Lcom/google/android/a/g/f;

    invoke-interface {v0}, Lcom/google/android/a/g/f;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/a/b/n;->g:Lcom/google/android/a/g/f;

    invoke-interface {v1}, Lcom/google/android/a/g/f;->b()V

    throw v0
.end method
