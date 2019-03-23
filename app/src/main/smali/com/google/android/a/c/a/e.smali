.class public Lcom/google/android/a/c/a/e;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/google/android/a/g/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/c/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/a/g/s$a",
        "<",
        "Lcom/google/android/a/c/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/c/a/e;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/c/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/c/a/e;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/c/a/e;->c:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 3

    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/a/c/a/e;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    int-to-float p1, v1

    goto :goto_0
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, p1

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/a/h/x;->c(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    goto :goto_0
.end method

.method protected static c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/a/h/x;->d(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/a/h/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a(Lcom/google/android/a/c/a/h;)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, -0x1

    iget-object v2, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget-object v2, v2, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/google/android/a/h/k;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/google/android/a/h/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/a/h/k;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/ttml+xml"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "application/mp4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/a/c/a/h;->c:Lcom/google/android/a/b/i;

    iget-object v2, v2, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    const-string v3, "stpp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "wvtt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/a/c/a/f;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "id"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "start"

    invoke-static {p1, v0, p3, p4}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "duration"

    const-wide/16 v8, -0x1

    invoke-static {p1, v0, v8, v9}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-object v1, v3

    move-object v2, p2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "BaseURL"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string v10, "Period"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v4, v6, v7, v5}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/a/c/a/f;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v10, "AdaptationSet"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i;)Lcom/google/android/a/c/a/a;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v10, "SegmentBase"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$e;)Lcom/google/android/a/c/a/i$e;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v10, "SegmentList"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$b;)Lcom/google/android/a/c/a/i$b;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v10, "SegmentTemplate"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$c;)Lcom/google/android/a/c/a/i$c;

    move-result-object v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/a/b/i;
    .locals 11

    new-instance v0, Lcom/google/android/a/b/i;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/a/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(IILjava/util/List;Ljava/util/List;)Lcom/google/android/a/c/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;)",
            "Lcom/google/android/a/c/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/c/a/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/a/c/a/a;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i;)Lcom/google/android/a/c/a/a;
    .locals 20

    const-string v3, "id"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v18

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v17

    const/4 v3, 0x0

    const-string v4, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "width"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v3, "height"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v10

    const/4 v11, -0x1

    const-string v3, "audioSamplingRate"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    const/4 v3, 0x0

    const-string v4, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v15, Lcom/google/android/a/c/a/e$a;

    invoke-direct {v15}, Lcom/google/android/a/c/a/e$a;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v14, p3

    move-object/from16 v5, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v16, :cond_9

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    move/from16 v4, v17

    :goto_1
    const-string v16, "AdaptationSet"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v15}, Lcom/google/android/a/c/a/e$a;->b()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/a/c/a/e;->a(IILjava/util/List;Ljava/util/List;)Lcom/google/android/a/c/a/a;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/a/c/a/b;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v15, v3}, Lcom/google/android/a/c/a/e$a;->a(Lcom/google/android/a/c/a/b;)V

    :cond_1
    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_1

    :cond_2
    const-string v3, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v4, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/a/c/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move/from16 v0, v17

    invoke-static {v0, v3}, Lcom/google/android/a/c/a/e;->a(II)I

    move-result v3

    move v4, v3

    move/from16 v3, v16

    goto :goto_1

    :cond_3
    const-string v3, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/a/c/a/i;Lcom/google/android/a/c/a/e$a;)Lcom/google/android/a/c/a/h;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/a/c/a/e$a;->a()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/a/c/a/e;->a(Lcom/google/android/a/c/a/h;)I

    move-result v3

    move/from16 v0, v17

    invoke-static {v0, v3}, Lcom/google/android/a/c/a/e;->a(II)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_4
    const-string v3, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v11

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_5
    const-string v3, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v14, Lcom/google/android/a/c/a/i$e;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v14}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$e;)Lcom/google/android/a/c/a/i$e;

    move-result-object v14

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_6
    const-string v3, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast v14, Lcom/google/android/a/c/a/i$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v14}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$b;)Lcom/google/android/a/c/a/i$b;

    move-result-object v14

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_7
    const-string v3, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    check-cast v14, Lcom/google/android/a/c/a/i$c;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v14}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$c;)Lcom/google/android/a/c/a/i$c;

    move-result-object v14

    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_9
    move/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_a
    move/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/a/d/a$b;)Lcom/google/android/a/c/a/b;
    .locals 1

    new-instance v0, Lcom/google/android/a/c/a/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/a/c/a/b;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/a/d/a$b;)V

    return-object v0
.end method

.method protected a(JJJZJJLcom/google/android/a/c/a/k;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/a/c/a/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/a/c/a/k;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/f;",
            ">;)",
            "Lcom/google/android/a/c/a/d;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/a/c/a/d;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/google/android/a/c/a/d;-><init>(JJJZJJLcom/google/android/a/c/a/k;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/a/c/a/d;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/c/a/e;->c:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/a/t;

    const-string v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/a/t;

    invoke-direct {v1, v0}, Lcom/google/android/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/d;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/a/t;

    invoke-direct {v1, v0}, Lcom/google/android/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/d;
    .locals 33

    const-string v6, "availabilityStartTime"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v8, v9}, Lcom/google/android/a/c/a/e;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    const-string v6, "mediaPresentationDuration"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    const-string v6, "minBufferTime"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v6, 0x0

    const-string v7, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "dynamic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    :goto_0
    if-eqz v14, :cond_1

    const-string v6, "minimumUpdatePeriod"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    :goto_1
    if-eqz v14, :cond_2

    const-string v6, "timeShiftBufferDepth"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    :goto_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_3

    const-wide/16 v6, -0x1

    :goto_3
    const/4 v11, 0x0

    const/4 v10, 0x0

    move-wide/from16 v22, v6

    move-object/from16 v24, p2

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v10, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    move/from16 v32, v11

    move-wide/from16 v10, v22

    move-object/from16 v22, v7

    move/from16 v7, v32

    :goto_5
    const-string v23, "MPD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    const-wide/16 v6, -0x1

    cmp-long v6, v26, v6

    if-nez v6, :cond_d

    const-wide/16 v6, -0x1

    cmp-long v6, v10, v6

    if-eqz v6, :cond_b

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Lcom/google/android/a/t;

    const-string v7, "No periods found."

    invoke-direct {v6, v7}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v15, -0x1

    goto :goto_1

    :cond_2
    const-wide/16 v17, -0x1

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_4
    const-string v6, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/a/c/a/k;

    move-result-object v19

    move v6, v10

    move v7, v11

    move-wide/from16 v10, v22

    move-object/from16 v22, v24

    goto :goto_5

    :cond_5
    const-string v6, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    move v6, v10

    move v7, v11

    move-wide/from16 v10, v22

    move-object/from16 v22, v24

    goto :goto_5

    :cond_6
    const-string v6, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/a/c/a/f;

    iget-wide v0, v6, Lcom/google/android/a/c/a/f;->b:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v25, v28, v30

    if-nez v25, :cond_8

    if-eqz v14, :cond_7

    const/4 v6, 0x1

    move v7, v6

    move v6, v10

    move-wide/from16 v10, v22

    move-object/from16 v22, v24

    goto/16 :goto_5

    :cond_7
    new-instance v6, Lcom/google/android/a/t;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to determine start of period "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v28, -0x1

    cmp-long v7, v22, v28

    if-nez v7, :cond_a

    const-wide/16 v22, -0x1

    :goto_7
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move v6, v10

    move v7, v11

    move-wide/from16 v10, v22

    move-object/from16 v22, v24

    goto/16 :goto_5

    :cond_a
    iget-wide v0, v6, Lcom/google/android/a/c/a/f;->b:J

    move-wide/from16 v28, v0

    add-long v22, v22, v28

    goto :goto_7

    :cond_b
    if-nez v14, :cond_d

    new-instance v6, Lcom/google/android/a/t;

    const-string v7, "Unable to determine duration of static manifest."

    invoke-direct {v6, v7}, Lcom/google/android/a/t;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v21}, Lcom/google/android/a/c/a/e;->a(JJJZJJLcom/google/android/a/c/a/k;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/a/c/a/d;

    move-result-object v6

    return-object v6

    :cond_d
    move-wide/from16 v10, v26

    goto/16 :goto_6

    :cond_e
    move-object/from16 v24, v22

    move-wide/from16 v22, v10

    move v11, v7

    move v10, v6

    goto/16 :goto_4
.end method

.method protected a(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/a/c/a/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/a;",
            ">;)",
            "Lcom/google/android/a/c/a/f;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/c/a/f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/a/c/a/f;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/a/c/a/g;
    .locals 9

    new-instance v1, Lcom/google/android/a/c/a/g;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/c/a/g;
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-interface {p1, v0, p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/a/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;ILcom/google/android/a/b/i;Lcom/google/android/a/c/a/i;)Lcom/google/android/a/c/a/h;
    .locals 2

    int-to-long v0, p2

    invoke-static {p1, v0, v1, p3, p4}, Lcom/google/android/a/c/a/h;->a(Ljava/lang/String;JLcom/google/android/a/b/i;Lcom/google/android/a/c/a/i;)Lcom/google/android/a/c/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/a/c/a/i;Lcom/google/android/a/c/a/e$a;)Lcom/google/android/a/c/a/h;
    .locals 14

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "bandwidth"

    invoke-static {p1, v1}, Lcom/google/android/a/c/a/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    const-string v1, "mimeType"

    move-object/from16 v0, p3

    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "codecs"

    move-object/from16 v0, p4

    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "width"

    move/from16 v0, p5

    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string v1, "height"

    move/from16 v0, p6

    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move/from16 v0, p7

    invoke-static {p1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v6

    const-string v1, "audioSamplingRate"

    move/from16 v0, p9

    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const/4 v7, 0x0

    move/from16 v10, p8

    move-object/from16 v1, p11

    move-object/from16 v12, p2

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v13, "BaseURL"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v7, :cond_5

    invoke-static {p1, v12}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x1

    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    :goto_1
    const-string v10, "Representation"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v1, p0

    move-object/from16 v10, p10

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/a/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/a/c/a/e;->b:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v12, :cond_6

    :goto_2
    invoke-virtual {p0, v2, v3, v1, v12}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;ILcom/google/android/a/b/i;Lcom/google/android/a/c/a/i;)Lcom/google/android/a/c/a/h;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v13, "AudioChannelConfiguration"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/a/c/a/e;->f(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    goto :goto_1

    :cond_1
    const-string v13, "SegmentBase"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    check-cast v1, Lcom/google/android/a/c/a/i$e;

    invoke-virtual {p0, p1, v12, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$e;)Lcom/google/android/a/c/a/i$e;

    move-result-object v1

    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    goto :goto_1

    :cond_2
    const-string v13, "SegmentList"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    check-cast v1, Lcom/google/android/a/c/a/i$b;

    invoke-virtual {p0, p1, v12, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$b;)Lcom/google/android/a/c/a/i$b;

    move-result-object v1

    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    goto :goto_1

    :cond_3
    const-string v13, "SegmentTemplate"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    check-cast v1, Lcom/google/android/a/c/a/i$c;

    invoke-virtual {p0, p1, v12, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$c;)Lcom/google/android/a/c/a/i$c;

    move-result-object v1

    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    goto :goto_1

    :cond_4
    const-string v13, "ContentProtection"

    invoke-static {p1, v13}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/android/a/c/a/e;->c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/a/c/a/b;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p12

    invoke-virtual {v0, v13}, Lcom/google/android/a/c/a/e$a;->a(Lcom/google/android/a/c/a/b;)V

    :cond_5
    move-object v13, v12

    move-object v12, v1

    move v1, v7

    move v7, v10

    goto :goto_1

    :cond_6
    new-instance v12, Lcom/google/android/a/c/a/i$e;

    invoke-direct {v12, v13}, Lcom/google/android/a/c/a/i$e;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v10, v7

    move v7, v1

    move-object v1, v12

    move-object v12, v13

    goto/16 :goto_0
.end method

.method protected a(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/a/c/a/i$b;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/c/a/g;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/g;",
            ">;)",
            "Lcom/google/android/a/c/a/i$b;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/c/a/i$b;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/a/c/a/i$b;-><init>(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$b;)Lcom/google/android/a/c/a/i$b;
    .locals 12

    const/4 v9, 0x0

    const-string v2, "timescale"

    if-eqz p3, :cond_2

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$b;->b:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "presentationTimeOffset"

    if-eqz p3, :cond_3

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$b;->c:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "duration"

    if-eqz p3, :cond_4

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$b;->e:J

    :goto_2
    invoke-static {p1, v6, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "startNumber"

    if-eqz p3, :cond_5

    iget v0, p3, Lcom/google/android/a/c/a/i$b;->d:I

    :goto_3
    invoke-static {p1, v1, v0}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object v0, v9

    move-object v1, v9

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v10, "Initialization"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v9

    :cond_1
    :goto_4
    const-string v10, "SegmentList"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p3, :cond_c

    if-eqz v9, :cond_9

    move-object v10, v9

    :goto_5
    if-eqz v1, :cond_a

    move-object v9, v1

    :goto_6
    if-eqz v0, :cond_b

    :goto_7
    move-object v1, v10

    move-object v10, v0

    :goto_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/a/c/a/e;->a(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/a/c/a/i$b;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const-string v10, "SegmentTimeline"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/a/c/a/e;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-string v10, "SegmentURL"

    invoke-static {p1, v10}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/c/a/e;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v10, p3, Lcom/google/android/a/c/a/i$b;->a:Lcom/google/android/a/c/a/g;

    goto :goto_5

    :cond_a
    iget-object v9, p3, Lcom/google/android/a/c/a/i$b;->f:Ljava/util/List;

    goto :goto_6

    :cond_b
    iget-object v0, p3, Lcom/google/android/a/c/a/i$b;->g:Ljava/util/List;

    goto :goto_7

    :cond_c
    move-object v10, v0

    move-object v11, v1

    move-object v1, v9

    move-object v9, v11

    goto :goto_8
.end method

.method protected a(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Lcom/google/android/a/c/a/j;Lcom/google/android/a/c/a/j;Ljava/lang/String;)Lcom/google/android/a/c/a/i$c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/a/c/a/g;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;",
            "Lcom/google/android/a/c/a/j;",
            "Lcom/google/android/a/c/a/j;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/a/c/a/i$c;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/a/c/a/i$c;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/a/c/a/i$c;-><init>(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Lcom/google/android/a/c/a/j;Lcom/google/android/a/c/a/j;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$c;)Lcom/google/android/a/c/a/i$c;
    .locals 15

    const-string v4, "timescale"

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/a/c/a/i$c;->b:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "presentationTimeOffset"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/a/c/a/i$c;->c:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "duration"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/a/c/a/i$c;->e:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2, v3}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v3, "startNumber"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/a/c/a/i$c;->d:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v3, "media"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/a/c/a/i$c;->h:Lcom/google/android/a/c/a/j;

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/j;)Lcom/google/android/a/c/a/j;

    move-result-object v13

    const-string v3, "initialization"

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/a/c/a/i$c;->g:Lcom/google/android/a/c/a/j;

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/j;)Lcom/google/android/a/c/a/j;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v11, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v3

    :cond_1
    :goto_6
    const-string v11, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz p3, :cond_b

    if-eqz v3, :cond_9

    :goto_7
    if-eqz v2, :cond_a

    :goto_8
    move-object v11, v2

    :goto_9
    move-object v2, p0

    move-object/from16 v14, p2

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/a/c/a/e;->a(Lcom/google/android/a/c/a/g;JJIJLjava/util/List;Lcom/google/android/a/c/a/j;Lcom/google/android/a/c/a/j;Ljava/lang/String;)Lcom/google/android/a/c/a/i$c;

    move-result-object v2

    return-object v2

    :cond_2
    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const-string v11, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/a/c/a/e;->e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :cond_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/a/c/a/i$c;->a:Lcom/google/android/a/c/a/g;

    goto :goto_7

    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/a/c/a/i$c;->f:Ljava/util/List;

    goto :goto_8

    :cond_b
    move-object v11, v2

    goto :goto_9
.end method

.method protected a(JJ)Lcom/google/android/a/c/a/i$d;
    .locals 1

    new-instance v0, Lcom/google/android/a/c/a/i$d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/a/c/a/i$d;-><init>(JJ)V

    return-object v0
.end method

.method protected a(Lcom/google/android/a/c/a/g;JJLjava/lang/String;JJ)Lcom/google/android/a/c/a/i$e;
    .locals 11

    new-instance v0, Lcom/google/android/a/c/a/i$e;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/a/c/a/i$e;-><init>(Lcom/google/android/a/c/a/g;JJLjava/lang/String;JJ)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/i$e;)Lcom/google/android/a/c/a/i$e;
    .locals 12

    const-string v2, "timescale"

    if-eqz p3, :cond_0

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$e;->b:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "presentationTimeOffset"

    if-eqz p3, :cond_1

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$e;->c:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p3, :cond_2

    iget-wide v7, p3, Lcom/google/android/a/c/a/i$e;->e:J

    :goto_2
    if-eqz p3, :cond_3

    iget-wide v0, p3, Lcom/google/android/a/c/a/i$e;->f:J

    :goto_3
    const/4 v6, 0x0

    const-string v9, "indexRange"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v7

    const-wide/16 v10, 0x1

    add-long v9, v0, v10

    :goto_4
    if-eqz p3, :cond_4

    iget-object v0, p3, Lcom/google/android/a/c/a/i$e;->a:Lcom/google/android/a/c/a/g;

    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {p1, v1}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/c/a/e;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v1

    :goto_6
    const-string v0, "SegmentBase"

    invoke-static {p1, v0}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/a/c/a/e;->a(Lcom/google/android/a/c/a/g;JJLjava/lang/String;JJ)Lcom/google/android/a/c/a/i$e;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move-object v1, v0

    goto :goto_6

    :cond_7
    move-wide v9, v0

    goto :goto_4
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/a/c/a/j;)Lcom/google/android/a/c/a/j;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/a/c/a/j;->a(Ljava/lang/String;)Lcom/google/android/a/c/a/j;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/c/a/k;
    .locals 1

    new-instance v0, Lcom/google/android/a/c/a/k;

    invoke-direct {v0, p1, p2}, Lcom/google/android/a/c/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/a/c/a/k;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "schemeIdUri"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/c/a/k;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "contentType"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/a/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/a/c/a/b;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v0, "schemeIdUri"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, v3

    move-object v1, v4

    move-object v2, v4

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "cenc:pssh"

    invoke-static {p1, v6}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/a/d/a$b;

    const-string v2, "video/mp4"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/google/android/a/d/a$b;-><init>(Ljava/lang/String;[B)V

    iget-object v2, v1, Lcom/google/android/a/d/a$b;->b:[B

    invoke-static {v2}, Lcom/google/android/a/e/c/g;->a([B)Ljava/util/UUID;

    move-result-object v2

    :cond_1
    const-string v6, "ContentProtection"

    invoke-static {p1, v6}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    const-string v0, "MediaPresentationDescriptionParser"

    const-string v1, "Skipped unsupported ContentProtection element"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {p0, v5, v2, v1}, Lcom/google/android/a/c/a/e;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/a/d/a$b;)Lcom/google/android/a/c/a/b;

    move-result-object v4

    goto :goto_0
.end method

.method protected c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/a/c/a/g;
    .locals 2

    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/a/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method protected e(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/i$d;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    invoke-static {p1, v2}, Lcom/google/android/a/h/p;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "t"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/a/c/a/e;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "d"

    invoke-static {p1, v2}, Lcom/google/android/a/c/a/e;->f(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "r"

    invoke-static {p1, v2, v3}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_1

    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/google/android/a/c/a/e;->a(JJ)Lcom/google/android/a/c/a/i$d;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v4, v0, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_1
    const-string v2, "SegmentTimeline"

    invoke-static {p1, v2}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v6
.end method

.method protected f(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/a/c/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "value"

    invoke-static {p1, v0}, Lcom/google/android/a/c/a/e;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "AudioChannelConfiguration"

    invoke-static {p1, v1}, Lcom/google/android/a/h/p;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
