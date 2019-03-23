.class public final Lcom/google/android/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/a/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:F

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:Ljava/lang/String;

.field public final t:J

.field private u:I

.field private v:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/a/r$1;

    invoke-direct {v0}, Lcom/google/android/a/r$1;-><init>()V

    sput-object v0, Lcom/google/android/a/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/a/r;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->m:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/r;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/a/r;->t:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/a/r;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/r;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/r;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/r;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/r;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/r;->r:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIIIFII",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<[B>;ZIIIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/a/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/a/r;->c:I

    iput p4, p0, Lcom/google/android/a/r;->d:I

    iput-wide p5, p0, Lcom/google/android/a/r;->e:J

    iput p7, p0, Lcom/google/android/a/r;->h:I

    iput p8, p0, Lcom/google/android/a/r;->i:I

    iput p9, p0, Lcom/google/android/a/r;->l:I

    iput p10, p0, Lcom/google/android/a/r;->m:F

    iput p11, p0, Lcom/google/android/a/r;->n:I

    iput p12, p0, Lcom/google/android/a/r;->o:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/a/r;->t:J

    if-nez p16, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p16

    :cond_0
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/a/r;->g:Z

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/a/r;->j:I

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/a/r;->k:I

    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/a/r;->p:I

    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/a/r;->q:I

    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/a/r;->r:I

    return-void
.end method

.method public static a()Lcom/google/android/a/r;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "application/id3"

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/a/r;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/a/r;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/a/r;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;IF)",
            "Lcom/google/android/a/r;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/r;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v16, p8

    invoke-direct/range {v0 .. v22}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/a/r;"
        }
    .end annotation

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/a/r;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/a/r;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/r;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p9

    move-object/from16 v16, p8

    move/from16 v20, p10

    invoke-direct/range {v0 .. v22}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/android/a/r;
    .locals 23

    new-instance v0, Lcom/google/android/a/r;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v22}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/a/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/a/r;
    .locals 23

    new-instance v0, Lcom/google/android/a/r;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-direct/range {v0 .. v22}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lcom/google/android/a/r;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/a/r;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/r;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p6

    move-object/from16 v16, p5

    invoke-direct/range {v0 .. v22}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v0
.end method

.method private static final a(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static final a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/a/r;
    .locals 24

    new-instance v1, Lcom/google/android/a/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/a/r;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/r;->e:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/a/r;->h:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/a/r;->i:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/a/r;->l:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/a/r;->m:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/a/r;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/a/r;->o:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/a/r;->t:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/a/r;->g:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->j:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->k:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->p:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->q:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->r:I

    move/from16 v23, v0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public a(II)Lcom/google/android/a/r;
    .locals 24

    new-instance v1, Lcom/google/android/a/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/a/r;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/a/r;->d:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/r;->e:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/a/r;->h:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/a/r;->i:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/a/r;->l:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/a/r;->m:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/a/r;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/a/r;->o:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/a/r;->t:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/a/r;->g:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->p:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->q:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->r:I

    move/from16 v23, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v1 .. v23}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public a(J)Lcom/google/android/a/r;
    .locals 25

    new-instance v1, Lcom/google/android/a/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/a/r;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/a/r;->d:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/r;->e:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/a/r;->h:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/a/r;->i:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/a/r;->l:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/a/r;->m:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/a/r;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/a/r;->o:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/a/r;->g:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->j:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->k:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->p:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->q:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->r:I

    move/from16 v23, v0

    move-wide/from16 v15, p1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/a/r;
    .locals 24

    new-instance v1, Lcom/google/android/a/r;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/r;->e:J

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->j:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->k:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/r;->v:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v0, "mime"

    iget-object v1, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "language"

    iget-object v1, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "max-input-size"

    iget v1, p0, Lcom/google/android/a/r;->d:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "width"

    iget v1, p0, Lcom/google/android/a/r;->h:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "height"

    iget v1, p0, Lcom/google/android/a/r;->i:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "rotation-degrees"

    iget v1, p0, Lcom/google/android/a/r;->l:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "max-width"

    iget v1, p0, Lcom/google/android/a/r;->j:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "max-height"

    iget v1, p0, Lcom/google/android/a/r;->k:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "channel-count"

    iget v1, p0, Lcom/google/android/a/r;->n:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "sample-rate"

    iget v1, p0, Lcom/google/android/a/r;->o:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "encoder-delay"

    iget v1, p0, Lcom/google/android/a/r;->q:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v0, "encoder-padding"

    iget v1, p0, Lcom/google/android/a/r;->r:I

    invoke-static {v2, v0, v1}, Lcom/google/android/a/r;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/r;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const-string v0, "durationUs"

    iget-wide v4, p0, Lcom/google/android/a/r;->e:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    :cond_1
    iput-object v2, p0, Lcom/google/android/a/r;->v:Landroid/media/MediaFormat;

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/r;->v:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public b(II)Lcom/google/android/a/r;
    .locals 24

    new-instance v1, Lcom/google/android/a/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/a/r;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/a/r;->d:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/a/r;->e:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/a/r;->h:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/a/r;->i:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/a/r;->l:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/a/r;->m:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/a/r;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/a/r;->o:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/a/r;->t:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/a/r;->f:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/a/r;->g:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->j:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->k:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/a/r;->p:I

    move/from16 v21, v0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-direct/range {v1 .. v23}, Lcom/google/android/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII)V

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/android/a/r;

    iget-boolean v0, p0, Lcom/google/android/a/r;->g:Z

    iget-boolean v1, p1, Lcom/google/android/a/r;->g:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->c:I

    iget v1, p1, Lcom/google/android/a/r;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->d:I

    iget v1, p1, Lcom/google/android/a/r;->d:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/r;->e:J

    iget-wide v6, p1, Lcom/google/android/a/r;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->h:I

    iget v1, p1, Lcom/google/android/a/r;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->i:I

    iget v1, p1, Lcom/google/android/a/r;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->l:I

    iget v1, p1, Lcom/google/android/a/r;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->m:F

    iget v1, p1, Lcom/google/android/a/r;->m:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->j:I

    iget v1, p1, Lcom/google/android/a/r;->j:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->k:I

    iget v1, p1, Lcom/google/android/a/r;->k:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->n:I

    iget v1, p1, Lcom/google/android/a/r;->n:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->o:I

    iget v1, p1, Lcom/google/android/a/r;->o:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->p:I

    iget v1, p1, Lcom/google/android/a/r;->p:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->q:I

    iget v1, p1, Lcom/google/android/a/r;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/r;->r:I

    iget v1, p1, Lcom/google/android/a/r;->r:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/r;->t:J

    iget-wide v6, p1, Lcom/google/android/a/r;->t:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/a/h/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/a/h/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/a/h/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/a/r;->u:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->m:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/r;->e:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/a/r;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->n:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->o:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->p:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->q:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/a/r;->r:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/a/r;->t:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iput v0, p0, Lcom/google/android/a/r;->u:I

    :cond_5
    iget v0, p0, Lcom/google/android/a/r;->u:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/a/r;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/a/r;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/a/r;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/a/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/a/r;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/a/r;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/google/android/a/r;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/google/android/a/r;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/a/r;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/a/r;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/a/r;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/google/android/a/r;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/google/android/a/r;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
