.class abstract Lcom/google/android/a/e/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/a/d$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/a/e/m;

.field private b:J


# direct methods
.method protected constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/a/d;->a:Lcom/google/android/a/e/m;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/e/a/d;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/a/e/a/d;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/a/e/a/d;->b:J

    return-void
.end method

.method protected abstract a(Lcom/google/android/a/h/o;J)V
.end method

.method protected abstract a(Lcom/google/android/a/h/o;)Z
.end method

.method public final b(Lcom/google/android/a/h/o;J)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/a/e/a/d;->a(Lcom/google/android/a/h/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/a/e/a/d;->a(Lcom/google/android/a/h/o;J)V

    :cond_0
    return-void
.end method
