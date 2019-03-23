.class final Lcom/google/android/a/e/a/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:F

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/a/e$a;->a:Ljava/util/List;

    iput p2, p0, Lcom/google/android/a/e/a/e$a;->b:I

    iput p5, p0, Lcom/google/android/a/e/a/e$a;->c:F

    iput p3, p0, Lcom/google/android/a/e/a/e$a;->d:I

    iput p4, p0, Lcom/google/android/a/e/a/e$a;->e:I

    return-void
.end method
