.class public Lcom/google/android/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/b/g;
.implements Lcom/google/android/a/c/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/c/a$c;,
        Lcom/google/android/a/c/a$d;,
        Lcom/google/android/a/c/a$b;,
        Lcom/google/android/a/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/a/c/a$a;

.field private final c:Lcom/google/android/a/g/f;

.field private final d:Lcom/google/android/a/b/j;

.field private final e:Lcom/google/android/a/b/j$b;

.field private final f:Lcom/google/android/a/h/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/a/h/j",
            "<",
            "Lcom/google/android/a/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/a/c/c;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/c/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/c/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/a/h/c;

.field private final k:J

.field private final l:J

.field private final m:[J

.field private final n:Z

.field private final o:I

.field private p:Lcom/google/android/a/c/a/d;

.field private q:Lcom/google/android/a/c/a/d;

.field private r:Lcom/google/android/a/c/a$b;

.field private s:I

.field private t:Lcom/google/android/a/y;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lcom/google/android/a/c/a/d;Lcom/google/android/a/c/c;Lcom/google/android/a/g/f;Lcom/google/android/a/b/j;)V
    .locals 16

    const/4 v2, 0x0

    new-instance v7, Lcom/google/android/a/h/u;

    invoke-direct {v7}, Lcom/google/android/a/h/u;-><init>()V

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v15}, Lcom/google/android/a/c/a;-><init>(Lcom/google/android/a/h/j;Lcom/google/android/a/c/a/d;Lcom/google/android/a/c/c;Lcom/google/android/a/g/f;Lcom/google/android/a/b/j;Lcom/google/android/a/h/c;JJZLandroid/os/Handler;Lcom/google/android/a/c/a$a;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/a/h/j;Lcom/google/android/a/c/a/d;Lcom/google/android/a/c/c;Lcom/google/android/a/g/f;Lcom/google/android/a/b/j;Lcom/google/android/a/h/c;JJZLandroid/os/Handler;Lcom/google/android/a/c/a$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/h/j",
            "<",
            "Lcom/google/android/a/c/a/d;",
            ">;",
            "Lcom/google/android/a/c/a/d;",
            "Lcom/google/android/a/c/c;",
            "Lcom/google/android/a/g/f;",
            "Lcom/google/android/a/b/j;",
            "Lcom/google/android/a/h/c;",
            "JJZ",
            "Landroid/os/Handler;",
            "Lcom/google/android/a/c/a$a;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    iput-object p2, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iput-object p3, p0, Lcom/google/android/a/c/a;->g:Lcom/google/android/a/c/c;

    iput-object p4, p0, Lcom/google/android/a/c/a;->c:Lcom/google/android/a/g/f;

    iput-object p5, p0, Lcom/google/android/a/c/a;->d:Lcom/google/android/a/b/j;

    iput-object p6, p0, Lcom/google/android/a/c/a;->j:Lcom/google/android/a/h/c;

    iput-wide p7, p0, Lcom/google/android/a/c/a;->k:J

    iput-wide p9, p0, Lcom/google/android/a/c/a;->l:J

    iput-boolean p11, p0, Lcom/google/android/a/c/a;->v:Z

    iput-object p12, p0, Lcom/google/android/a/c/a;->a:Landroid/os/Handler;

    iput-object p13, p0, Lcom/google/android/a/c/a;->b:Lcom/google/android/a/c/a$a;

    iput p14, p0, Lcom/google/android/a/c/a;->o:I

    new-instance v0, Lcom/google/android/a/b/j$b;

    invoke-direct {v0}, Lcom/google/android/a/b/j$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/a/c/a;->m:[J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    iget-boolean v0, p2, Lcom/google/android/a/c/a/d;->d:Z

    iput-boolean v0, p0, Lcom/google/android/a/c/a;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/c/a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/c/a;->o:I

    return v0
.end method

.method private a(Lcom/google/android/a/c/a/g;Lcom/google/android/a/c/a/g;Lcom/google/android/a/c/a/h;Lcom/google/android/a/b/d;Lcom/google/android/a/g/f;II)Lcom/google/android/a/b/c;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/a/c/a/g;->a(Lcom/google/android/a/c/a/g;)Lcom/google/android/a/c/a/g;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    new-instance v0, Lcom/google/android/a/g/h;

    invoke-virtual {p1}, Lcom/google/android/a/c/a/g;->a()Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v4, p1, Lcom/google/android/a/c/a/g;->b:J

    invoke-virtual {p3}, Lcom/google/android/a/c/a/h;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/g/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    new-instance v1, Lcom/google/android/a/b/l;

    iget-object v5, p3, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    move-object v2, p5

    move-object v3, v0

    move v4, p7

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/b/l;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;Lcom/google/android/a/b/d;I)V

    return-object v1

    :cond_0
    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, p2

    goto :goto_0
.end method

.method private static a(ILcom/google/android/a/b/i;Ljava/lang/String;J)Lcom/google/android/a/r;
    .locals 11

    const/4 v3, -0x1

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v8

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/a/b/i;->c:I

    iget v6, p1, Lcom/google/android/a/b/i;->d:I

    iget v7, p1, Lcom/google/android/a/b/i;->e:I

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/a/r;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/a/b/i;->c:I

    iget v6, p1, Lcom/google/android/a/b/i;->g:I

    iget v7, p1, Lcom/google/android/a/b/i;->h:I

    iget-object v9, p1, Lcom/google/android/a/b/i;->j:Ljava/lang/String;

    move-object v1, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v8

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/a/b/i;->c:I

    iget-object v6, p1, Lcom/google/android/a/b/i;->j:Ljava/lang/String;

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/android/a/b/i;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/h/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/h/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/a/h/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/a/h/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/a/c/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "stpp"

    iget-object v1, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "application/ttml+xml"

    goto :goto_0

    :cond_3
    const-string v0, "wvtt"

    iget-object v1, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "application/x-mp4vtt"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/a/c/a/d;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/google/android/a/c/a/d;->a(I)Lcom/google/android/a/c/a/f;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    iget-wide v2, v0, Lcom/google/android/a/c/a$c;->b:J

    iget-wide v4, v1, Lcom/google/android/a/c/a/f;->b:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    iget-object v2, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget v0, v0, Lcom/google/android/a/c/a$c;->a:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/c/a/d;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/a/c/a$c;->a(Lcom/google/android/a/c/a/d;ILcom/google/android/a/c/a$b;)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    iget-object v2, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/a/c/a$c;->a(Lcom/google/android/a/c/a/d;ILcom/google/android/a/c/a$b;)V
    :try_end_0
    .catch Lcom/google/android/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/a/c/a/d;->b()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Lcom/google/android/a/c/a$c;

    iget v2, p0, Lcom/google/android/a/c/a;->s:I

    iget-object v3, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/android/a/c/a$c;-><init>(ILcom/google/android/a/c/a/d;ILcom/google/android/a/c/a$b;)V

    iget-object v2, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/a/c/a;->s:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v1, p0, Lcom/google/android/a/c/a;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/a/c/a;->s:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/a/c/a;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/c/a;->c(J)Lcom/google/android/a/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iput-object v0, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    iget-object v0, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    invoke-direct {p0, v0}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/y;)V

    :cond_5
    iput-object p1, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    goto :goto_1
.end method

.method private a(Lcom/google/android/a/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->b:Lcom/google/android/a/c/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/c/a$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/c/a$1;-><init>(Lcom/google/android/a/c/a;Lcom/google/android/a/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/a/c/a;)Lcom/google/android/a/c/a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a;->b:Lcom/google/android/a/c/a$a;

    return-object v0
.end method

.method private b(J)Lcom/google/android/a/c/a$c;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$c;->a()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$c;->b()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text/vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(J)Lcom/google/android/a/y;
    .locals 13

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x3e8

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    iget-object v1, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a$c;

    iget-object v2, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-boolean v2, v2, Lcom/google/android/a/c/a/d;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/a/c/a$c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/google/android/a/y$b;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$c;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/a/c/a$c;->b()J

    move-result-wide v0

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/google/android/a/y$b;-><init>(JJ)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/a/c/a$c;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/a/c/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->j:Lcom/google/android/a/h/c;

    invoke-interface {v0}, Lcom/google/android/a/h/c;->a()J

    move-result-wide v0

    mul-long/2addr v0, v10

    iget-object v6, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-wide v6, v6, Lcom/google/android/a/c/a/d;->a:J

    mul-long/2addr v6, v10

    sub-long v6, p1, v6

    sub-long v6, v0, v6

    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-wide v0, v0, Lcom/google/android/a/c/a/d;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    :goto_2
    new-instance v1, Lcom/google/android/a/y$a;

    iget-object v10, p0, Lcom/google/android/a/c/a;->j:Lcom/google/android/a/h/c;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/a/y$a;-><init>(JJJJLcom/google/android/a/h/c;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/a/c/a$c;->b()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-wide v0, v0, Lcom/google/android/a/c/a/d;->f:J

    mul-long v8, v0, v10

    goto :goto_2
.end method

.method private d()J
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-wide v0, p0, Lcom/google/android/a/c/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->j:Lcom/google/android/a/h/c;

    invoke-interface {v0}, Lcom/google/android/a/h/c;->a()J

    move-result-wide v0

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/google/android/a/c/a;->l:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/a/c/a$c;Lcom/google/android/a/c/a$d;Lcom/google/android/a/g/f;Lcom/google/android/a/r;Lcom/google/android/a/c/a$b;II)Lcom/google/android/a/b/c;
    .locals 24

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/google/android/a/c/a$d;->c:Lcom/google/android/a/c/a/h;

    iget-object v12, v9, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/a/c/a$d;->a(I)J

    move-result-wide v22

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/a/c/a$d;->b(I)J

    move-result-wide v10

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/google/android/a/c/a$d;->d(I)Lcom/google/android/a/c/a/g;

    move-result-object v6

    new-instance v2, Lcom/google/android/a/g/h;

    invoke-virtual {v6}, Lcom/google/android/a/c/a/g;->a()Landroid/net/Uri;

    move-result-object v3

    iget-wide v4, v6, Lcom/google/android/a/c/a/g;->a:J

    iget-wide v6, v6, Lcom/google/android/a/c/a/g;->b:J

    invoke-virtual {v9}, Lcom/google/android/a/c/a/h;->f()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/a/g/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/google/android/a/c/a$c;->b:J

    iget-wide v6, v9, Lcom/google/android/a/c/a/h;->d:J

    sub-long v13, v4, v6

    iget-object v3, v12, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/a/c/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/a/b/n;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/google/android/a/c/a$b;->a:Lcom/google/android/a/r;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/a/c/a$c;->a:I

    move-object/from16 v4, p3

    move-object v5, v2

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    invoke-direct/range {v3 .. v15}, Lcom/google/android/a/b/n;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJILcom/google/android/a/r;Lcom/google/android/a/d/a;I)V

    :goto_0
    return-object v3

    :cond_0
    if-eqz p4, :cond_1

    const/16 v20, 0x1

    :goto_1
    new-instance v3, Lcom/google/android/a/b/h;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/android/a/c/a$d;->b:Lcom/google/android/a/b/d;

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/a/c/a$b;->b:I

    move/from16 v17, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/google/android/a/c/a$b;->c:I

    move/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/a/c/a$c;->a(Lcom/google/android/a/c/a$c;)Lcom/google/android/a/d/a;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/a/c/a$c;->a:I

    move/from16 v21, v0

    move-object/from16 v4, p3

    move-object v5, v2

    move/from16 v6, p7

    move-object v7, v12

    move-wide/from16 v8, v22

    move/from16 v12, p6

    move-object/from16 v16, p4

    invoke-direct/range {v3 .. v21}, Lcom/google/android/a/b/h;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJIJLcom/google/android/a/b/d;Lcom/google/android/a/r;IILcom/google/android/a/d/a;ZI)V

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/a/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$b;

    iget-object v0, v0, Lcom/google/android/a/c/a$b;->a:Lcom/google/android/a/r;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->c()V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-boolean v0, v0, Lcom/google/android/a/c/a/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/a/c/a;->q:Lcom/google/android/a/c/a/d;

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a/d;)V

    iput-object v0, p0, Lcom/google/android/a/c/a;->q:Lcom/google/android/a/c/a/d;

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-wide v0, v0, Lcom/google/android/a/c/a/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v0, 0x1388

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v4}, Lcom/google/android/a/h/j;->b()J

    move-result-wide v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->f()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/b/c;)V
    .locals 5

    instance-of v0, p1, Lcom/google/android/a/b/l;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/a/b/l;

    iget-object v0, p1, Lcom/google/android/a/b/l;->d:Lcom/google/android/a/b/i;

    iget-object v1, v0, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/a/b/l;->f:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/google/android/a/c/a$c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a$d;

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->b()Lcom/google/android/a/r;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/a/c/a$d;->e:Lcom/google/android/a/r;

    :cond_2
    iget-object v2, v1, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/a/c/d;

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->j()Lcom/google/android/a/e/l;

    move-result-object v2

    check-cast v2, Lcom/google/android/a/e/a;

    iget-object v4, p1, Lcom/google/android/a/b/l;->e:Lcom/google/android/a/g/h;

    iget-object v4, v4, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/a/c/d;-><init>(Lcom/google/android/a/e/a;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    :cond_3
    invoke-static {v0}, Lcom/google/android/a/c/a$c;->a(Lcom/google/android/a/c/a$c;)Lcom/google/android/a/d/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/b/l;->d()Lcom/google/android/a/d/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/c/a$c;->a(Lcom/google/android/a/c/a$c;Lcom/google/android/a/d/a;)Lcom/google/android/a/d/a;

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/b/c;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/a/c/a/d;III)V
    .locals 8

    invoke-virtual {p1, p2}, Lcom/google/android/a/c/a/d;->a(I)Lcom/google/android/a/c/a/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/a/c/a/f;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/a;

    iget-object v1, v0, Lcom/google/android/a/c/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a/h;

    iget-object v2, v1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    invoke-static {v2}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/b/i;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (unknown media mime type)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v4, v0, Lcom/google/android/a/c/a/a;->b:I

    iget-boolean v0, p1, Lcom/google/android/a/c/a/d;->d:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-static {v4, v2, v3, v0, v1}, Lcom/google/android/a/c/a;->a(ILcom/google/android/a/b/i;Ljava/lang/String;J)Lcom/google/android/a/r;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "DashChunkSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped track "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (unknown media format)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/google/android/a/c/a/d;->b:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/a/c/a$b;

    invoke-direct {v3, v0, p3, v2}, Lcom/google/android/a/c/a$b;-><init>(Lcom/google/android/a/r;ILcom/google/android/a/b/i;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/c/a/d;II[I)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/a/c/a;->d:Lcom/google/android/a/b/j;

    if-nez v0, :cond_0

    const-string v0, "DashChunkSource"

    const-string v1, "Skipping adaptive track (missing format evaluator)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/a/c/a/d;->a(I)Lcom/google/android/a/c/a/f;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/a/c/a/f;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v1, p4

    new-array v3, v1, [Lcom/google/android/a/b/i;

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    array-length v1, v3

    if-ge v7, v1, :cond_2

    iget-object v1, v0, Lcom/google/android/a/c/a/a;->c:Ljava/util/List;

    aget v6, p4, v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a/h;

    iget-object v6, v1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    if-eqz v2, :cond_1

    iget v1, v6, Lcom/google/android/a/b/i;->e:I

    if-le v1, v5, :cond_6

    :cond_1
    move-object v1, v6

    :goto_2
    iget v2, v6, Lcom/google/android/a/b/i;->d:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v2, v6, Lcom/google/android/a/b/i;->e:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput-object v6, v3, v7

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/a/b/i$a;

    invoke-direct {v1}, Lcom/google/android/a/b/i$a;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-boolean v1, p0, Lcom/google/android/a/c/a;->n:Z

    if-eqz v1, :cond_3

    const-wide/16 v6, -0x1

    :goto_3
    invoke-static {v2}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/b/i;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "DashChunkSource"

    const-string v1, "Skipped adaptive track (unknown media mime type)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v6, p1, Lcom/google/android/a/c/a/d;->b:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    goto :goto_3

    :cond_4
    iget v0, v0, Lcom/google/android/a/c/a/a;->b:I

    invoke-static {v0, v2, v1, v6, v7}, Lcom/google/android/a/c/a;->a(ILcom/google/android/a/b/i;Ljava/lang/String;J)Lcom/google/android/a/r;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "DashChunkSource"

    const-string v1, "Skipped adaptive track (unknown media format)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/a/c/a$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/a/r;->a(Ljava/lang/String;)Lcom/google/android/a/r;

    move-result-object v1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/c/a$b;-><init>(Lcom/google/android/a/r;I[Lcom/google/android/a/b/i;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/a/b/m;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->d:Lcom/google/android/a/b/j;

    invoke-interface {v0}, Lcom/google/android/a/b/j;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->e()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iput-object v1, v0, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    iput-object v1, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    iput-object v1, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    iput-object v1, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    return-void
.end method

.method public final a(Ljava/util/List;JLcom/google/android/a/b/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/a/b/m;",
            ">;J",
            "Lcom/google/android/a/b/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/a/b/j$b;->a:I

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget-object v0, v0, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/a/c/a;->w:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/c/a;->d:Lcom/google/android/a/b/j;

    iget-object v1, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-static {v1}, Lcom/google/android/a/c/a$b;->a(Lcom/google/android/a/c/a$b;)[Lcom/google/android/a/b/i;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/a/b/j;->a(Ljava/util/List;J[Lcom/google/android/a/b/i;Lcom/google/android/a/b/j$b;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget-object v4, v0, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget v0, v0, Lcom/google/android/a/b/j$b;->a:I

    iput v0, p4, Lcom/google/android/a/b/e;->a:I

    if-nez v4, :cond_5

    const/4 v0, 0x0

    iput-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget-object v1, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-static {v1}, Lcom/google/android/a/c/a$b;->b(Lcom/google/android/a/c/a$b;)Lcom/google/android/a/b/i;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/a/b/j$b;->c:Lcom/google/android/a/b/i;

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/a/b/j$b;->b:I

    goto :goto_1

    :cond_5
    iget v0, p4, Lcom/google/android/a/b/e;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    if-eqz v0, :cond_6

    iget-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    iget-object v0, v0, Lcom/google/android/a/b/c;->d:Lcom/google/android/a/b/i;

    invoke-virtual {v0, v4}, Lcom/google/android/a/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    iget-object v0, p0, Lcom/google/android/a/c/a;->t:Lcom/google/android/a/y;

    iget-object v1, p0, Lcom/google/android/a/c/a;->m:[J

    invoke-interface {v0, v1}, Lcom/google/android/a/y;->a([J)[J

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/a/c/a;->n:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/a/c/a;->v:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    iget-wide v6, p0, Lcom/google/android/a/c/a;->k:J

    sub-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_7
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/a/c/a;->b(J)Lcom/google/android/a/c/a$c;

    move-result-object v0

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    :goto_3
    iget-object v0, v9, Lcom/google/android/a/c/a$c;->c:Ljava/util/HashMap;

    iget-object v1, v4, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/a/c/a$d;

    iget-object v3, v8, Lcom/google/android/a/c/a$d;->c:Lcom/google/android/a/c/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, v8, Lcom/google/android/a/c/a$d;->e:Lcom/google/android/a/r;

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/google/android/a/c/a/h;->c()Lcom/google/android/a/c/a/g;

    move-result-object v1

    :cond_8
    iget-object v0, v8, Lcom/google/android/a/c/a$d;->d:Lcom/google/android/a/c/b;

    if-nez v0, :cond_9

    invoke-virtual {v3}, Lcom/google/android/a/c/a/h;->d()Lcom/google/android/a/c/a/g;

    move-result-object v2

    :cond_9
    if-nez v1, :cond_a

    if-eqz v2, :cond_12

    :cond_a
    iget-object v4, v8, Lcom/google/android/a/c/a$d;->b:Lcom/google/android/a/b/d;

    iget-object v5, p0, Lcom/google/android/a/c/a;->c:Lcom/google/android/a/g/f;

    iget v6, v9, Lcom/google/android/a/c/a$c;->a:I

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget v7, v0, Lcom/google/android/a/b/j$b;->b:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a/g;Lcom/google/android/a/c/a/g;Lcom/google/android/a/c/a/h;Lcom/google/android/a/b/d;Lcom/google/android/a/g/f;II)Lcom/google/android/a/b/c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/a/c/a;->w:Z

    iput-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/a/c/a;->v:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/c/a;->v:Z

    :cond_d
    iget v0, p4, Lcom/google/android/a/b/e;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/m;

    iget-wide v2, v0, Lcom/google/android/a/b/m;->i:J

    iget-boolean v1, p0, Lcom/google/android/a/c/a;->n:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    cmp-long v1, v2, v6

    if-gez v1, :cond_e

    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-boolean v1, v1, Lcom/google/android/a/c/a/d;->d:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/a/c/a;->m:[J

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    :cond_f
    iget-object v1, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a$c;

    iget v2, v0, Lcom/google/android/a/b/m;->f:I

    iget v3, v1, Lcom/google/android/a/c/a$c;->a:I

    if-ne v2, v3, :cond_10

    iget-object v1, v1, Lcom/google/android/a/c/a$c;->c:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget-object v2, v2, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a$d;

    invoke-virtual {v0}, Lcom/google/android/a/b/m;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/a/c/a$d;->c(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    iget-boolean v0, v0, Lcom/google/android/a/c/a/d;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/google/android/a/b/e;->c:Z

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/a/b/m;->f:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/a/c/a$c;

    if-nez v1, :cond_11

    iget-object v0, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/a/c/a$c;->c()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v1, Lcom/google/android/a/c/a$c;->c:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/google/android/a/b/m;->d:Lcom/google/android/a/b/i;

    iget-object v5, v5, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/a/c/a$d;

    invoke-virtual {v0}, Lcom/google/android/a/b/m;->i()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/a/c/a$d;->c(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/google/android/a/c/a;->i:Landroid/util/SparseArray;

    iget v0, v0, Lcom/google/android/a/b/m;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$c;

    const/4 v1, 0x1

    move-object v9, v0

    move v5, v1

    goto/16 :goto_3

    :cond_12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v8, p2, p3}, Lcom/google/android/a/c/a$d;->a(J)I

    move-result v6

    :goto_4
    iget-object v3, p0, Lcom/google/android/a/c/a;->c:Lcom/google/android/a/g/f;

    iget-object v5, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    iget-object v0, p0, Lcom/google/android/a/c/a;->e:Lcom/google/android/a/b/j$b;

    iget v7, v0, Lcom/google/android/a/b/j$b;->b:I

    move-object v0, p0

    move-object v1, v9

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a$c;Lcom/google/android/a/c/a$d;Lcom/google/android/a/g/f;Lcom/google/android/a/r;Lcom/google/android/a/c/a$b;II)Lcom/google/android/a/b/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/a/c/a;->w:Z

    iput-object v0, p4, Lcom/google/android/a/b/e;->b:Lcom/google/android/a/b/c;

    goto/16 :goto_0

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v8}, Lcom/google/android/a/c/a$d;->b()I

    move-result v6

    goto :goto_4

    :cond_14
    iget v0, p4, Lcom/google/android/a/b/e;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/b/m;

    invoke-virtual {v0}, Lcom/google/android/a/b/m;->i()I

    move-result v6

    goto :goto_4

    :cond_15
    move-object v9, v1

    move v5, v3

    goto/16 :goto_3
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a$b;

    iput-object v0, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    iget-object v0, p0, Lcom/google/android/a/c/a;->r:Lcom/google/android/a/c/a$b;

    invoke-virtual {v0}, Lcom/google/android/a/c/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a;->d:Lcom/google/android/a/b/j;

    invoke-interface {v0}, Lcom/google/android/a/b/j;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->d()V

    iget-object v0, p0, Lcom/google/android/a/c/a;->f:Lcom/google/android/a/h/j;

    invoke-virtual {v0}, Lcom/google/android/a/h/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/d;

    invoke-direct {p0, v0}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a/d;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    invoke-direct {p0, v0}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a/d;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/a/c/a;->u:Z

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/google/android/a/c/a;->u:Z

    :try_start_0
    iget-object v2, p0, Lcom/google/android/a/c/a;->g:Lcom/google/android/a/c/c;

    iget-object v3, p0, Lcom/google/android/a/c/a;->p:Lcom/google/android/a/c/a/d;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p0}, Lcom/google/android/a/c/c;->a(Lcom/google/android/a/c/a/d;ILcom/google/android/a/c/c$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    if-nez v2, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    iput-object v2, p0, Lcom/google/android/a/c/a;->x:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
