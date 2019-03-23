.class final Lcom/google/android/a/e/c/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/e/c/b$d;->a:I

    iput-wide p2, p0, Lcom/google/android/a/e/c/b$d;->b:J

    iput p4, p0, Lcom/google/android/a/e/c/b$d;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/c/b$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/e/c/b$d;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/a/e/c/b$d;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/c/b$d;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/a/e/c/b$d;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/c/b$d;->c:I

    return v0
.end method
