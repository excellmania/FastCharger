.class final Lcom/google/android/a/e/g/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/e/g/a$a;->a:I

    iput-wide p2, p0, Lcom/google/android/a/e/g/a$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/a/e/g/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/a/e/g/a$a;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/g/a$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/e/g/a$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/a/e/g/a$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/g/a$a;->a:I

    return v0
.end method
