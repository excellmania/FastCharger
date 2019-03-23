.class public final Lcom/google/android/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/a/b$c;,
        Lcom/google/android/a/a/b$b;,
        Lcom/google/android/a/a/b$a;,
        Lcom/google/android/a/a/b$e;,
        Lcom/google/android/a/a/b$f;,
        Lcom/google/android/a/a/b$d;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:J

.field private E:J

.field private F:F

.field private G:[B

.field private H:I

.field private I:I

.field private J:Ljava/nio/ByteBuffer;

.field private K:Z

.field private final c:Lcom/google/android/a/a/a;

.field private final d:I

.field private final e:Landroid/os/ConditionVariable;

.field private final f:[J

.field private final g:Lcom/google/android/a/a/b$a;

.field private h:Landroid/media/AudioTrack;

.field private i:Landroid/media/AudioTrack;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:J

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:Z

.field private w:J

.field private x:Ljava/lang/reflect/Method;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/a/a/b;->a:Z

    sput-boolean v0, Lcom/google/android/a/a/b;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;-><init>(Lcom/google/android/a/a/a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/a/a;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/a/b;->c:Lcom/google/android/a/a/a;

    iput p2, p0, Lcom/google/android/a/a/b;->d:I

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/a/a/b;->e:Landroid/os/ConditionVariable;

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/b;->x:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/google/android/a/a/b$c;

    invoke-direct {v0}, Lcom/google/android/a/a/b$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/a/a/b;->f:[J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/a/a/b;->F:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/a/b;->B:I

    return-void

    :cond_1
    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Lcom/google/android/a/a/b$b;

    invoke-direct {v0}, Lcom/google/android/a/a/b$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/a/a/b$a;

    invoke-direct {v0, v3}, Lcom/google/android/a/a/b$a;-><init>(Lcom/google/android/a/a/b$1;)V

    iput-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/a/h/e;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/google/android/a/h/a;->a()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lcom/google/android/a/h/a;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private a(J)J
    .locals 3

    iget v0, p0, Lcom/google/android/a/a/b;->o:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/a/a/b;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/b;->e:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v2, 0x0

    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_0
    mul-int/lit8 v0, p2, 0x2

    :goto_0
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    :cond_1
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v0, p1, p2

    sparse-switch p3, :sswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_1
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_2
    div-int/lit8 v0, p2, 0x2

    goto :goto_0

    :goto_1
    :sswitch_3
    if-ge p1, v0, :cond_2

    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :sswitch_4
    if-ge p1, v0, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x3

    goto :goto_2

    :goto_3
    :sswitch_5
    if-ge p1, v0, :cond_2

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    invoke-virtual {p4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/a/a/b;->j:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private c(J)J
    .locals 5

    iget v0, p0, Lcom/google/android/a/a/b;->j:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private l()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/a/a/b;->F:F

    invoke-static {v0, v1}, Lcom/google/android/a/a/b;->a(Landroid/media/AudioTrack;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/a/a/b;->F:F

    invoke-static {v0, v1}, Lcom/google/android/a/a/b;->b(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    new-instance v1, Lcom/google/android/a/a/b$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/a/b$2;-><init>(Lcom/google/android/a/a/b;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/a/a/b$2;->start()V

    goto :goto_0
.end method

.method private n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/a/a/b;->B:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->c()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iget-wide v0, p0, Lcom/google/android/a/a/b;->u:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/a/b;->f:[J

    iget v1, p0, Lcom/google/android/a/a/b;->r:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    iget v0, p0, Lcom/google/android/a/a/b;->r:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/a/a/b;->r:I

    iget v0, p0, Lcom/google/android/a/a/b;->s:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/a/a/b;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/a/b;->s:I

    :cond_2
    iput-wide v4, p0, Lcom/google/android/a/a/b;->u:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/a/b;->t:J

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/a/a/b;->s:I

    if-ge v0, v1, :cond_3

    iget-wide v6, p0, Lcom/google/android/a/a/b;->t:J

    iget-object v1, p0, Lcom/google/android/a/a/b;->f:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/a/a/b;->s:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/a/a/b;->t:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/a/a/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/a/b;->w:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    iget-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v6}, Lcom/google/android/a/a/b$a;->f()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/a/a/b;->D:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/a/a/b;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/a/a/b;->n:Z

    if-nez v0, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/google/android/a/a/b;->x:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/a/b;->q:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/a/b;->E:J

    iget-wide v0, p0, Lcom/google/android/a/a/b;->E:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/a/a/b;->E:J

    iget-wide v0, p0, Lcom/google/android/a/a/b;->E:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/a/a/b;->E:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/a/a/b;->E:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    iput-wide v4, p0, Lcom/google/android/a/a/b;->w:J

    goto/16 :goto_0

    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/a/a/b;->b:Z

    if-eqz v1, :cond_7

    new-instance v1, Lcom/google/android/a/a/b$e;

    invoke-direct {v1, v0}, Lcom/google/android/a/a/b$e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/google/android/a/a/b;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/a/a/b;->b:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/a/a/b$e;

    invoke-direct {v1, v0}, Lcom/google/android/a/a/b$e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v1, "AudioTrack"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/a/b;->x:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private p()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    :goto_0
    new-instance v1, Lcom/google/android/a/a/b$d;

    iget v2, p0, Lcom/google/android/a/a/b;->j:I

    iget v3, p0, Lcom/google/android/a/a/b;->k:I

    iget v4, p0, Lcom/google/android/a/a/b;->p:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/a/a/b$d;-><init>(IIII)V

    throw v1

    :catch_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    throw v0
.end method

.method private q()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/a/a/b;->n:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/a/a/b;->z:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/a/a/b;->y:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/google/android/a/a/b;->t:J

    iput v0, p0, Lcom/google/android/a/a/b;->s:I

    iput v0, p0, Lcom/google/android/a/a/b;->r:I

    iput-wide v2, p0, Lcom/google/android/a/a/b;->u:J

    iput-boolean v0, p0, Lcom/google/android/a/a/b;->v:Z

    iput-wide v2, p0, Lcom/google/android/a/a/b;->w:J

    return-void
.end method

.method private s()Z
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/a/a/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/android/a/a/b;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    if-nez p1, :cond_2

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/a/a/b;->d:I

    iget v2, p0, Lcom/google/android/a/a/b;->j:I

    iget v3, p0, Lcom/google/android/a/a/b;->k:I

    iget v4, p0, Lcom/google/android/a/a/b;->m:I

    iget v5, p0, Lcom/google/android/a/a/b;->p:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    :goto_0
    invoke-direct {p0}, Lcom/google/android/a/a/b;->p()V

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    sget-boolean v0, Lcom/google/android/a/a/b;->a:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/a/b;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/a/a/b;->d:I

    const/4 v6, 0x0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/a/a/b;->h:Landroid/media/AudioTrack;

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    iget-object v1, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/android/a/a/b;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/b$a;->a(Landroid/media/AudioTrack;Z)V

    invoke-direct {p0}, Lcom/google/android/a/a/b;->l()V

    return v7

    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/a/a/b;->d:I

    iget v2, p0, Lcom/google/android/a/a/b;->j:I

    iget v3, p0, Lcom/google/android/a/a/b;->k:I

    iget v4, p0, Lcom/google/android/a/a/b;->m:I

    iget v5, p0, Lcom/google/android/a/a/b;->p:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8

    if-nez p3, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/a/a/b;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/a/a/b;->I:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    iget v2, p0, Lcom/google/android/a/a/b;->l:I

    if-eq v0, v2, :cond_a

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/a/a/b;->K:Z

    iget-boolean v0, p0, Lcom/google/android/a/a/b;->K:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget v0, p0, Lcom/google/android/a/a/b;->l:I

    iget-object v2, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, p3, v0, v2}, Lcom/google/android/a/a/b;->a(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    :cond_4
    iput p3, p0, Lcom/google/android/a/a/b;->I:I

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/google/android/a/a/b;->n:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/a/a/b;->A:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    invoke-static {v0, p1}, Lcom/google/android/a/a/b;->a(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/a/b;->A:I

    :cond_5
    iget v0, p0, Lcom/google/android/a/a/b;->B:I

    if-nez v0, :cond_c

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/a/a/b;->C:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/a/b;->B:I

    move v0, v1

    :goto_3
    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/android/a/a/b;->G:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/a/a/b;->G:[B

    array-length v1, v1

    if-ge v1, p3, :cond_7

    :cond_6
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/android/a/a/b;->G:[B

    :cond_7
    iget-object v1, p0, Lcom/google/android/a/a/b;->G:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/a/a/b;->H:I

    :cond_8
    :goto_4
    const/4 v1, 0x0

    sget v2, Lcom/google/android/a/h/x;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e

    iget-wide v2, p0, Lcom/google/android/a/a/b;->y:J

    iget-object v4, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v4}, Lcom/google/android/a/a/b$a;->b()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/a/a/b;->o:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/google/android/a/a/b;->p:I

    sub-int v2, v3, v2

    if-lez v2, :cond_9

    iget v1, p0, Lcom/google/android/a/a/b;->I:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/a/a/b;->G:[B

    iget v4, p0, Lcom/google/android/a/a/b;->H:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-ltz v1, :cond_9

    iget v2, p0, Lcom/google/android/a/a/b;->H:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/a/a/b;->H:I

    :cond_9
    :goto_5
    if-gez v1, :cond_10

    new-instance v0, Lcom/google/android/a/a/b$f;

    invoke-direct {v0, v1}, Lcom/google/android/a/a/b$f;-><init>(I)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    iget-wide v2, p0, Lcom/google/android/a/a/b;->C:J

    invoke-direct {p0}, Lcom/google/android/a/a/b;->q()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/a/a/b;->b(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/a/a/b;->B:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_d

    sub-long v4, v2, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x30d40

    cmp-long v0, v4, v6

    if-lez v0, :cond_d

    const-string v0, "AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discontinuity detected [expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/a/b;->B:I

    :cond_d
    iget v0, p0, Lcom/google/android/a/a/b;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_13

    iget-wide v0, p0, Lcom/google/android/a/a/b;->C:J

    sub-long v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/a/b;->C:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/a/a/b;->B:I

    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_e
    iget-boolean v1, p0, Lcom/google/android/a/a/b;->K:Z

    if-eqz v1, :cond_f

    iget-object p1, p0, Lcom/google/android/a/a/b;->J:Ljava/nio/ByteBuffer;

    :cond_f
    iget-object v1, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/a/a/b;->I:I

    invoke-static {v1, p1, v2}, Lcom/google/android/a/a/b;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_5

    :cond_10
    iget v2, p0, Lcom/google/android/a/a/b;->I:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/a/a/b;->I:I

    iget-boolean v2, p0, Lcom/google/android/a/a/b;->n:Z

    if-nez v2, :cond_11

    iget-wide v2, p0, Lcom/google/android/a/a/b;->y:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/a/b;->y:J

    :cond_11
    iget v1, p0, Lcom/google/android/a/a/b;->I:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/a/a/b;->n:Z

    if-eqz v1, :cond_12

    iget-wide v2, p0, Lcom/google/android/a/a/b;->z:J

    iget v1, p0, Lcom/google/android/a/a/b;->A:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/a/b;->z:J

    :cond_12
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move v0, v1

    goto/16 :goto_4
.end method

.method public a(Z)J
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-direct {p0}, Lcom/google/android/a/a/b;->n()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/a/a/b;->o()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-boolean v2, p0, Lcom/google/android/a/a/b;->v:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/android/a/a/b$a;->e()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v1}, Lcom/google/android/a/a/b$a;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/android/a/a/b$a;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/a/b;->C:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/google/android/a/a/b;->s:I

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/a/a/b;->C:J

    add-long/2addr v0, v2

    :goto_1
    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/a/b;->E:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/a/a/b;->t:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/a/a/b;->C:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/a/a/b;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/a/a/b;->F:F

    invoke-direct {p0}, Lcom/google/android/a/a/b;->l()V

    :cond_0
    return-void
.end method

.method public a(Landroid/media/PlaybackParams;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/a/b$a;->a(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;IIII)V

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported channel count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    const-string v1, "audio/raw"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/google/android/a/a/b;->b(Ljava/lang/String;)I

    move-result p4

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/a/a/b;->l:I

    if-ne v1, p4, :cond_3

    iget v1, p0, Lcom/google/android/a/a/b;->j:I

    if-ne v1, p3, :cond_3

    iget v1, p0, Lcom/google/android/a/a/b;->k:I

    if-ne v1, v0, :cond_3

    :goto_2
    return-void

    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1c

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xdc

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xfc

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x4fc

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/google/android/a/b;->a:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/high16 v1, -0x80000000

    if-eq p4, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p4, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PCM encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/a/a/b;->j()V

    iput p4, p0, Lcom/google/android/a/a/b;->l:I

    iput-boolean v3, p0, Lcom/google/android/a/a/b;->n:Z

    iput p3, p0, Lcom/google/android/a/a/b;->j:I

    iput v0, p0, Lcom/google/android/a/a/b;->k:I

    if-eqz v3, :cond_4

    :goto_3
    iput p4, p0, Lcom/google/android/a/a/b;->m:I

    mul-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/google/android/a/a/b;->o:I

    if-eqz p5, :cond_5

    iput p5, p0, Lcom/google/android/a/a/b;->p:I

    :goto_4
    if-eqz v3, :cond_c

    const-wide/16 v0, -0x1

    :goto_5
    iput-wide v0, p0, Lcom/google/android/a/a/b;->q:J

    goto :goto_2

    :cond_4
    const/4 p4, 0x2

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_8

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/google/android/a/a/b;->m:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v0, 0x5000

    iput v0, p0, Lcom/google/android/a/a/b;->p:I

    goto :goto_4

    :cond_7
    const v0, 0xc000

    iput v0, p0, Lcom/google/android/a/a/b;->p:I

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/google/android/a/a/b;->m:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    mul-int/lit8 v2, v1, 0x4

    const-wide/32 v4, 0x3d090

    invoke-direct {p0, v4, v5}, Lcom/google/android/a/a/b;->c(J)J

    move-result-wide v4

    long-to-int v0, v4

    iget v4, p0, Lcom/google/android/a/a/b;->o:I

    mul-int/2addr v0, v4

    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    invoke-direct {p0, v6, v7}, Lcom/google/android/a/a/b;->c(J)J

    move-result-wide v6

    iget v1, p0, Lcom/google/android/a/a/b;->o:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    if-ge v2, v0, :cond_a

    :goto_7
    iput v0, p0, Lcom/google/android/a/a/b;->p:I

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_6

    :cond_a
    if-le v2, v1, :cond_b

    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    iget v0, p0, Lcom/google/android/a/a/b;->p:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->a(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->b(J)J

    move-result-wide v0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/a/b;->c:Lcom/google/android/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->c:Lcom/google/android/a/a/a;

    invoke-static {p1}, Lcom/google/android/a/a/b;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/a/a/b;->a(I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/a/b;->p:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/a/b;->q:J

    return-wide v0
.end method

.method public e()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/a/a/b;->D:J

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/a/b;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/a/a/b;->B:I

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-direct {p0}, Lcom/google/android/a/a/b;->q()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/a/b$a;->a(J)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/a/a/b;->q()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v2}, Lcom/google/android/a/a/b$a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/a/b;->t()Z

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

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/a/a/b;->r()V

    iget-object v0, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v0}, Lcom/google/android/a/a/b$a;->a()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/a/a/b;->y:J

    iput-wide v4, p0, Lcom/google/android/a/a/b;->z:J

    iput v2, p0, Lcom/google/android/a/a/b;->A:I

    iput v2, p0, Lcom/google/android/a/a/b;->I:I

    iput v2, p0, Lcom/google/android/a/a/b;->B:I

    iput-wide v4, p0, Lcom/google/android/a/a/b;->E:J

    invoke-direct {p0}, Lcom/google/android/a/a/b;->r()V

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iput-object v3, p0, Lcom/google/android/a/a/b;->i:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/a/a/b;->g:Lcom/google/android/a/a/b$a;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/a/a/b$a;->a(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/a/a/b;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/a/a/b$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/a/a/b$1;-><init>(Lcom/google/android/a/a/b;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/a/a/b$1;->start()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/a/a/b;->j()V

    invoke-direct {p0}, Lcom/google/android/a/a/b;->m()V

    return-void
.end method
