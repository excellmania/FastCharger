.class public final Lcom/google/android/a/p;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/p$1;,
        Lcom/google/android/a/p$a;,
        Lcom/google/android/a/p$d;,
        Lcom/google/android/a/p$e;,
        Lcom/google/android/a/p$c;,
        Lcom/google/android/a/p$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/a/p$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/a/p;->a:Ljava/util/Map;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/a/p;->b:I

    return-void
.end method

.method public static a()I
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/google/android/a/p;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "video/avc"

    invoke-static {v1, v0}, Lcom/google/android/a/p;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/a/e;->b:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v2}, Lcom/google/android/a/p;->a(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    sput v0, Lcom/google/android/a/p;->b:I

    :cond_1
    sget v0, Lcom/google/android/a/p;->b:I

    return v0
.end method

.method private static a(I)I
    .locals 4

    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_0

    :sswitch_4
    const v0, 0x31800

    goto :goto_0

    :sswitch_5
    move v0, v2

    goto :goto_0

    :sswitch_6
    move v0, v2

    goto :goto_0

    :sswitch_7
    const v0, 0xe1000

    goto :goto_0

    :sswitch_8
    const/high16 v0, 0x140000

    goto :goto_0

    :sswitch_9
    move v0, v3

    goto :goto_0

    :sswitch_a
    move v0, v3

    goto :goto_0

    :sswitch_b
    const/high16 v0, 0x220000

    goto :goto_0

    :sswitch_c
    const v0, 0x564000

    goto :goto_0

    :sswitch_d
    const/high16 v0, 0x900000

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x200 -> :sswitch_7
        0x400 -> :sswitch_8
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/a/e;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/a/p;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/a/p$a;Lcom/google/android/a/p$c;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/p$a;",
            "Lcom/google/android/a/p$c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/e;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/a/p$a;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/a/p$c;->a()I

    move-result v5

    invoke-interface {p1}, Lcom/google/android/a/p$c;->b()Z

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_4

    invoke-interface {p1, v3}, Lcom/google/android/a/p$c;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/google/android/a/p;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v1, v2

    :goto_1
    if-ge v1, v10, :cond_5

    aget-object v11, v9, v1

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v7, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v11

    invoke-interface {p1, v4, v11}, Lcom/google/android/a/p$c;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    if-eqz v6, :cond_0

    iget-boolean v13, p0, Lcom/google/android/a/p$a;->b:Z

    if-eq v13, v12, :cond_1

    :cond_0
    if-nez v6, :cond_3

    iget-boolean v13, p0, Lcom/google/android/a/p$a;->b:Z

    if-nez v13, :cond_3

    :cond_1
    new-instance v12, Lcom/google/android/a/e;

    invoke-direct {v12, v8, v11}, Lcom/google/android/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_2

    if-eqz v12, :cond_2

    new-instance v1, Lcom/google/android/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".secure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lcom/google/android/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/a/p$b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/a/p$b;-><init>(Ljava/lang/Throwable;Lcom/google/android/a/p$1;)V

    throw v1
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .locals 4

    const/16 v3, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const-string v1, "CIPAACDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "CIPMP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CIPVorbisDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AACDecoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MP3Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_3

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    sget v1, Lcom/google/android/a/h/x;->a:I

    if-ne v1, v3, :cond_4

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "protou"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6602"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6603"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6606"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C6616"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "L36h"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    sget v1, Lcom/google/android/a/h/x;->a:I

    if-ne v1, v3, :cond_5

    const-string v1, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "C1504"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1505"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1604"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "C1605"

    sget-object v2, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_7

    sget-object v1, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    const-string v2, "d2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google/android/a/h/x;->b:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "samsung"

    sget-object v2, Lcom/google/android/a/h/x;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;ZII)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-static {p0, p1}, Lcom/google/android/a/p;->c(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ZIID)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-static {p0, p1}, Lcom/google/android/a/p;->c(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static declared-synchronized b(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/e;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x15

    const-class v2, Lcom/google/android/a/p;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/google/android/a/p$a;

    invoke-direct {v3, p0, p1}, Lcom/google/android/a/p$a;-><init>(Ljava/lang/String;Z)V

    sget-object v0, Lcom/google/android/a/p;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/a/h/x;->a:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/google/android/a/p$e;

    invoke-direct {v0, p1}, Lcom/google/android/a/p$e;-><init>(Z)V

    :goto_1
    invoke-static {v3, v0}, Lcom/google/android/a/p;->a(Lcom/google/android/a/p$a;Lcom/google/android/a/p$c;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/a/h/x;->a:I

    if-gt v4, v1, :cond_2

    sget v1, Lcom/google/android/a/h/x;->a:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_2

    new-instance v0, Lcom/google/android/a/p$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/a/p$d;-><init>(Lcom/google/android/a/p$1;)V

    invoke-static {v3, v0}, Lcom/google/android/a/p;->a(Lcom/google/android/a/p$a;Lcom/google/android/a/p$c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v4, "MediaCodecUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Assuming: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e;

    iget-object v0, v0, Lcom/google/android/a/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/android/a/p;->a:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/a/p$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/a/p$d;-><init>(Lcom/google/android/a/p$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Z)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/a/p;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/a/e;->b:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    goto :goto_0
.end method
