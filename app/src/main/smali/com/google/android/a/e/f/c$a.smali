.class final Lcom/google/android/a/e/f/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/e/f/c$a;->a:I

    iput-wide p2, p0, Lcom/google/android/a/e/f/c$a;->b:J

    return-void
.end method

.method public static a(Lcom/google/android/a/e/f;Lcom/google/android/a/h/o;)Lcom/google/android/a/e/f/c$a;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/a/h/o;->a:[B

    const/16 v1, 0x8

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/a/e/f;->c([BII)V

    invoke-virtual {p1, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->m()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->l()J

    move-result-wide v2

    new-instance v1, Lcom/google/android/a/e/f/c$a;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/a/e/f/c$a;-><init>(IJ)V

    return-object v1
.end method
