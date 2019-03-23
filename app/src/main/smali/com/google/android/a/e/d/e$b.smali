.class public final Lcom/google/android/a/e/d/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/a/e/d/e$b;->j:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/d/e$b;->a:I

    iput v0, p0, Lcom/google/android/a/e/d/e$b;->b:I

    iput-wide v2, p0, Lcom/google/android/a/e/d/e$b;->c:J

    iput-wide v2, p0, Lcom/google/android/a/e/d/e$b;->d:J

    iput-wide v2, p0, Lcom/google/android/a/e/d/e$b;->e:J

    iput-wide v2, p0, Lcom/google/android/a/e/d/e$b;->f:J

    iput v0, p0, Lcom/google/android/a/e/d/e$b;->g:I

    iput v0, p0, Lcom/google/android/a/e/d/e$b;->h:I

    iput v0, p0, Lcom/google/android/a/e/d/e$b;->i:I

    return-void
.end method
