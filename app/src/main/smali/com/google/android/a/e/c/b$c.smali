.class final Lcom/google/android/a/e/c/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:[Lcom/google/android/a/e/c/j;

.field public b:Lcom/google/android/a/r;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/android/a/e/c/j;

    iput-object v0, p0, Lcom/google/android/a/e/c/b$c;->a:[Lcom/google/android/a/e/c/j;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/c/b$c;->c:I

    return-void
.end method
