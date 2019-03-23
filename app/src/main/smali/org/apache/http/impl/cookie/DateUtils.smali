.class public final Lorg/apache/http/impl/cookie/DateUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field private static final DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

.field public static final GMT:Ljava/util/TimeZone;

.field public static final PATTERN_ASCTIME:Ljava/lang/String; = "EEE MMM d HH:mm:ss yyyy"

.field public static final PATTERN_RFC1036:Ljava/lang/String; = "EEEE, dd-MMM-yy HH:mm:ss zzz"

.field public static final PATTERN_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "EEE MMM d HH:mm:ss yyyy"

    aput-object v4, v0, v1

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/cookie/DateUtils;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v1, 0x7d0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {p0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "date is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pattern is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dateValue is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_PATTERNS:[Ljava/lang/String;

    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lorg/apache/http/impl/cookie/DateUtils;->DEFAULT_TWO_DIGIT_YEAR_START:Ljava/util/Date;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;->formatFor(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/apache/http/impl/cookie/DateParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse the date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/DateParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
