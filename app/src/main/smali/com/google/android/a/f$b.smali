.class Lcom/google/android/a/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/f$b;->a:I

    iput v0, p0, Lcom/google/android/a/f$b;->b:I

    iput-boolean v0, p0, Lcom/google/android/a/f$b;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/f$b;->d:J

    return-void
.end method
