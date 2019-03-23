.class public final Lcom/google/android/a/h/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:[J

.field private final b:[J


# direct methods
.method private constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/h/f;->a:[J

    iput-object p2, p0, Lcom/google/android/a/h/f;->b:[J

    return-void
.end method

.method public static a(Lcom/google/android/a/h/o;)Lcom/google/android/a/h/f;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/a/h/o;->c(I)V

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->j()I

    move-result v0

    div-int/lit8 v1, v0, 0x12

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->o()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p0}, Lcom/google/android/a/h/o;->o()J

    move-result-wide v4

    aput-wide v4, v3, v0

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/a/h/f;

    invoke-direct {v0, v2, v3}, Lcom/google/android/a/h/f;-><init>([J[J)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/a/h/f;)[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/h/f;->a:[J

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/h/f;)[J
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/h/f;->b:[J

    return-object v0
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/a/e/l;
    .locals 7

    new-instance v0, Lcom/google/android/a/h/f$1;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/h/f$1;-><init>(Lcom/google/android/a/h/f;JJ)V

    return-object v0
.end method
