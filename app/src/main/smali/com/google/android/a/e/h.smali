.class public final Lcom/google/android/a/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/g;
.implements Lcom/google/android/a/g/o$a;
.implements Lcom/google/android/a/v;
.implements Lcom/google/android/a/v$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/h$c;,
        Lcom/google/android/a/e/h$b;,
        Lcom/google/android/a/e/h$d;,
        Lcom/google/android/a/e/h$e;,
        Lcom/google/android/a/e/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/a/e/e;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/a/g/o;

.field private D:Lcom/google/android/a/e/h$b;

.field private E:Ljava/io/IOException;

.field private F:I

.field private G:J

.field private H:Z

.field private I:I

.field private J:I

.field private final b:Lcom/google/android/a/e/h$c;

.field private final c:Lcom/google/android/a/g/b;

.field private final d:I

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/android/a/g/f;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/a/e/h$a;

.field private final k:I

.field private volatile l:Z

.field private volatile m:Lcom/google/android/a/e/l;

.field private volatile n:Lcom/google/android/a/d/a;

.field private o:Z

.field private p:I

.field private q:[Lcom/google/android/a/r;

.field private r:J

.field private s:[Z

.field private t:[Z

.field private u:[Z

.field private v:I

.field private w:J

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    :try_start_0
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.g.f"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.c.e"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.c.f"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.b.c"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.e.b"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.e.o"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.a.b"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.d.b"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.e.l"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.a.e.f.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/a/e/e;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/g/b;IILandroid/os/Handler;Lcom/google/android/a/e/h$a;I[Lcom/google/android/a/e/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/h;->g:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/a/e/h;->h:Lcom/google/android/a/g/f;

    iput-object p7, p0, Lcom/google/android/a/e/h;->j:Lcom/google/android/a/e/h$a;

    iput-object p6, p0, Lcom/google/android/a/e/h;->i:Landroid/os/Handler;

    iput p8, p0, Lcom/google/android/a/e/h;->k:I

    iput-object p3, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    iput p4, p0, Lcom/google/android/a/e/h;->d:I

    iput p5, p0, Lcom/google/android/a/e/h;->f:I

    if-eqz p9, :cond_0

    array-length v0, p9

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p9, v0, [Lcom/google/android/a/e/e;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p9

    if-ge v1, v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/google/android/a/e/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/e;

    aput-object v0, p9, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/google/android/a/e/h$c;

    invoke-direct {v0, p9, p0}, Lcom/google/android/a/e/h$c;-><init>([Lcom/google/android/a/e/e;Lcom/google/android/a/e/g;)V

    iput-object v0, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/e/h;->y:J

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/g/b;ILandroid/os/Handler;Lcom/google/android/a/e/h$a;I[Lcom/google/android/a/e/e;)V
    .locals 10

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/a/e/h;-><init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/g/b;IILandroid/os/Handler;Lcom/google/android/a/e/h$a;I[Lcom/google/android/a/e/e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/h;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/h;->k:I

    return v0
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/h;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->j:Lcom/google/android/a/e/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->i:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/a/e/h$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/a/e/h$1;-><init>(Lcom/google/android/a/e/h;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/a/e/h;)Lcom/google/android/a/e/h$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/h;->j:Lcom/google/android/a/e/h$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/a/e/h;)I
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/h;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/a/e/h;->I:I

    return v0
.end method

.method private c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/h;->y:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/e/h;->i()V

    invoke-direct {p0}, Lcom/google/android/a/e/h;->f()V

    goto :goto_0
.end method

.method private d(J)Lcom/google/android/a/e/h$b;
    .locals 9

    new-instance v0, Lcom/google/android/a/e/h$b;

    iget-object v1, p0, Lcom/google/android/a/e/h;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/a/e/h;->h:Lcom/google/android/a/g/f;

    iget-object v3, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    iget-object v4, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    iget v5, p0, Lcom/google/android/a/e/h;->d:I

    iget-object v6, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    invoke-interface {v6, p1, p2}, Lcom/google/android/a/e/l;->b(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/e/h$b;-><init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/e/h$c;Lcom/google/android/a/g/b;IJ)V

    return-object v0
.end method

.method private e(J)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/h$d;->a(J)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(J)J
    .locals 5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()V
    .locals 10

    const-wide/16 v8, -0x1

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/a/e/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/a/e/h;->G:J

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/a/e/h;->F:I

    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Lcom/google/android/a/e/h;->f(J)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    if-nez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/a/e/h;->g()Lcom/google/android/a/e/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    :cond_4
    :goto_3
    iget v0, p0, Lcom/google/android/a/e/h;->I:I

    iput v0, p0, Lcom/google/android/a/e/h;->J:I

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    iget-object v1, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    invoke-interface {v0}, Lcom/google/android/a/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-wide v4, p0, Lcom/google/android/a/e/h;->r:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    :goto_4
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/google/android/a/e/h;->g()Lcom/google/android/a/e/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    iget-wide v2, p0, Lcom/google/android/a/e/h;->w:J

    iput-wide v2, p0, Lcom/google/android/a/e/h;->A:J

    iput-boolean v1, p0, Lcom/google/android/a/e/h;->z:Z

    goto :goto_3

    :cond_7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/a/e/h;->B:J

    iput-boolean v2, p0, Lcom/google/android/a/e/h;->z:Z

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/a/e/h;->g()Lcom/google/android/a/e/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    :goto_5
    iget v0, p0, Lcom/google/android/a/e/h;->I:I

    iput v0, p0, Lcom/google/android/a/e/h;->J:I

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    iget-object v1, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/a/g/o;->a(Lcom/google/android/a/g/o$c;Lcom/google/android/a/g/o$a;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-wide v2, p0, Lcom/google/android/a/e/h;->r:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lcom/google/android/a/e/h;->y:J

    iget-wide v4, p0, Lcom/google/android/a/e/h;->r:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    iput-boolean v1, p0, Lcom/google/android/a/e/h;->H:Z

    iput-wide v6, p0, Lcom/google/android/a/e/h;->y:J

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Lcom/google/android/a/e/h;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/h;->d(J)Lcom/google/android/a/e/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    iput-wide v6, p0, Lcom/google/android/a/e/h;->y:J

    goto :goto_5
.end method

.method private g()Lcom/google/android/a/e/h$b;
    .locals 8

    new-instance v0, Lcom/google/android/a/e/h$b;

    iget-object v1, p0, Lcom/google/android/a/e/h;->g:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/a/e/h;->h:Lcom/google/android/a/g/f;

    iget-object v3, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    iget-object v4, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    iget v5, p0, Lcom/google/android/a/e/h;->d:I

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/e/h$b;-><init>(Landroid/net/Uri;Lcom/google/android/a/g/f;Lcom/google/android/a/e/h$c;Lcom/google/android/a/g/b;IJ)V

    return-object v0
.end method

.method private h()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/google/android/a/e/h;->D:Lcom/google/android/a/e/h$b;

    iput-object v3, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    iput v2, p0, Lcom/google/android/a/e/h;->F:I

    return-void
.end method

.method private j()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/a/e/h;->y:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    instance-of v0, v0, Lcom/google/android/a/e/h$e;

    return v0
.end method


# virtual methods
.method public a(IJLcom/google/android/a/s;Lcom/google/android/a/u;)I
    .locals 6

    const/4 v2, -0x2

    const/4 v1, 0x0

    iput-wide p2, p0, Lcom/google/android/a/e/h;->w:J

    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    iget-object v3, p0, Lcom/google/android/a/e/h;->s:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->e()Lcom/google/android/a/r;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/a/s;->a:Lcom/google/android/a/r;

    iget-object v0, p0, Lcom/google/android/a/e/h;->n:Lcom/google/android/a/d/a;

    iput-object v0, p4, Lcom/google/android/a/s;->b:Lcom/google/android/a/d/a;

    iget-object v0, p0, Lcom/google/android/a/e/h;->s:[Z

    aput-boolean v1, v0, p1

    const/4 v0, -0x4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p5}, Lcom/google/android/a/e/h$d;->a(Lcom/google/android/a/u;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v2, p5, Lcom/google/android/a/u;->e:J

    iget-wide v4, p0, Lcom/google/android/a/e/h;->x:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget v2, p5, Lcom/google/android/a/u;->d:I

    if-eqz v0, :cond_5

    const/high16 v0, 0x8000000

    :goto_2
    or-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/a/u;->d:I

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->z:Z

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/a/e/h;->A:J

    iget-wide v4, p5, Lcom/google/android/a/u;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/e/h;->B:J

    iput-boolean v1, p0, Lcom/google/android/a/e/h;->z:Z

    :cond_3
    iget-wide v0, p5, Lcom/google/android/a/u;->e:J

    iget-wide v2, p0, Lcom/google/android/a/e/h;->B:J

    add-long/2addr v0, v2

    iput-wide v0, p5, Lcom/google/android/a/u;->e:J

    const/4 v0, -0x3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public a(I)Lcom/google/android/a/r;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/h;->q:[Lcom/google/android/a/r;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/h;->l:Z

    return-void
.end method

.method public a(IJ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/e/h;->p:I

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/a/e/h;->s:[Z

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    aput-boolean v2, v0, p1

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    invoke-interface {v0}, Lcom/google/android/a/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    iput-wide p2, p0, Lcom/google/android/a/e/h;->w:J

    iput-wide p2, p0, Lcom/google/android/a/e/h;->x:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/a/e/h;->c(J)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/h;->n:Lcom/google/android/a/d/a;

    return-void
.end method

.method public a(Lcom/google/android/a/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    return-void
.end method

.method public a(Lcom/google/android/a/g/o$c;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    return-void
.end method

.method public a(Lcom/google/android/a/g/o$c;Ljava/io/IOException;)V
    .locals 2

    iput-object p2, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    iget v0, p0, Lcom/google/android/a/e/h;->I:I

    iget v1, p0, Lcom/google/android/a/e/h;->J:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/a/e/h;->F:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/e/h;->G:J

    invoke-direct {p0, p2}, Lcom/google/android/a/e/h;->a(Ljava/io/IOException;)V

    invoke-direct {p0}, Lcom/google/android/a/e/h;->f()V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/a/e/h;->F:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(J)Z
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/a/e/h;->o:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/a/g/o;

    const-string v3, "Loader:ExtractorSampleSource"

    invoke-direct {v2, v3}, Lcom/google/android/a/g/o;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    :cond_2
    invoke-direct {p0}, Lcom/google/android/a/e/h;->f()V

    iget-object v2, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/a/e/h;->l:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/e/h;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/a/e/h;->u:[Z

    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/a/e/h;->t:[Z

    new-array v2, v3, [Z

    iput-object v2, p0, Lcom/google/android/a/e/h;->s:[Z

    new-array v2, v3, [Lcom/google/android/a/r;

    iput-object v2, p0, Lcom/google/android/a/e/h;->q:[Lcom/google/android/a/r;

    iput-wide v8, p0, Lcom/google/android/a/e/h;->r:J

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->e()Lcom/google/android/a/r;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/a/e/h;->q:[Lcom/google/android/a/r;

    aput-object v0, v4, v2

    iget-wide v4, v0, Lcom/google/android/a/r;->e:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/google/android/a/r;->e:J

    iget-wide v6, p0, Lcom/google/android/a/e/h;->r:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    iget-wide v4, v0, Lcom/google/android/a/r;->e:J

    iput-wide v4, p0, Lcom/google/android/a/e/h;->r:J

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/google/android/a/e/h;->o:Z

    move v0, v1

    goto :goto_0
.end method

.method public a_(I)Lcom/google/android/a/e/m;
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/a/e/h$d;

    iget-object v1, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    invoke-direct {v0, p0, v1}, Lcom/google/android/a/e/h$d;-><init>(Lcom/google/android/a/e/h;Lcom/google/android/a/g/b;)V

    iget-object v1, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-wide v0, p0, Lcom/google/android/a/e/h;->x:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/e/h;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/android/a/e/h;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/a/e/h;->f:I

    :goto_0
    iget v1, p0, Lcom/google/android/a/e/h;->F:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->E:Ljava/io/IOException;

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    invoke-interface {v0}, Lcom/google/android/a/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public b(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/h;->m:Lcom/google/android/a/e/l;

    invoke-interface {v0}, Lcom/google/android/a/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/google/android/a/e/h;->y:J

    :goto_1
    iput-wide p1, p0, Lcom/google/android/a/e/h;->w:J

    iput-wide p1, p0, Lcom/google/android/a/e/h;->x:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_4

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/google/android/a/e/h;->w:J

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v3, v2

    move v4, v0

    :goto_3
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/h$d;->b(J)Z

    move-result v0

    and-int/2addr v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/google/android/a/e/h;->c(J)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->t:[Z

    aput-boolean v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public b(Lcom/google/android/a/g/o$c;)V
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/e/h;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/e/h;->c(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/e/h;->i()V

    iget-object v0, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/a/g/b;->a(I)V

    goto :goto_0
.end method

.method public b(IJ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput-wide p2, p0, Lcom/google/android/a/e/h;->w:J

    iget-wide v4, p0, Lcom/google/android/a/e/h;->w:J

    invoke-direct {p0, v4, v5}, Lcom/google/android/a/e/h;->e(J)V

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/a/e/h;->f()V

    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public b_()Lcom/google/android/a/v$a;
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/h;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/e/h;->v:I

    return-object p0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->o:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/h;->p:I

    iget-object v0, p0, Lcom/google/android/a/e/h;->u:[Z

    aput-boolean v2, v0, p1

    iget v0, p0, Lcom/google/android/a/e/h;->p:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/a/e/h;->w:J

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/e/h;->i()V

    iget-object v0, p0, Lcom/google/android/a/e/h;->c:Lcom/google/android/a/g/b;

    invoke-interface {v0, v2}, Lcom/google/android/a/g/b;->a(I)V

    goto :goto_0
.end method

.method public d()J
    .locals 8

    const-wide/high16 v4, -0x8000000000000000L

    iget-boolean v0, p0, Lcom/google/android/a/e/h;->H:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x3

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/e/h;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/a/e/h;->y:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/h$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/h$d;->f()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/e/h;->w:J

    goto :goto_0
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/a/e/h;->v:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/e/h;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/h;->v:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    invoke-virtual {v0}, Lcom/google/android/a/g/o;->c()V

    iput-object v1, p0, Lcom/google/android/a/e/h;->C:Lcom/google/android/a/g/o;

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    invoke-static {v0}, Lcom/google/android/a/e/h$c;->a(Lcom/google/android/a/e/h$c;)Lcom/google/android/a/e/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    invoke-static {v0}, Lcom/google/android/a/e/h$c;->a(Lcom/google/android/a/e/h$c;)Lcom/google/android/a/e/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/a/e/e;->c()V

    iget-object v0, p0, Lcom/google/android/a/e/h;->b:Lcom/google/android/a/e/h$c;

    invoke-static {v0, v1}, Lcom/google/android/a/e/h$c;->a(Lcom/google/android/a/e/h$c;Lcom/google/android/a/e/e;)Lcom/google/android/a/e/e;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
