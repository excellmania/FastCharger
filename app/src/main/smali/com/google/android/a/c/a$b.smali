.class public final Lcom/google/android/a/c/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/a/r;

.field public final b:I

.field public final c:I

.field private final d:I

.field private final e:Lcom/google/android/a/b/i;

.field private final f:[Lcom/google/android/a/b/i;


# direct methods
.method public constructor <init>(Lcom/google/android/a/r;ILcom/google/android/a/b/i;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/c/a$b;->a:Lcom/google/android/a/r;

    iput p2, p0, Lcom/google/android/a/c/a$b;->d:I

    iput-object p3, p0, Lcom/google/android/a/c/a$b;->e:Lcom/google/android/a/b/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/c/a$b;->f:[Lcom/google/android/a/b/i;

    iput v1, p0, Lcom/google/android/a/c/a$b;->b:I

    iput v1, p0, Lcom/google/android/a/c/a$b;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/r;I[Lcom/google/android/a/b/i;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/c/a$b;->a:Lcom/google/android/a/r;

    iput p2, p0, Lcom/google/android/a/c/a$b;->d:I

    iput-object p3, p0, Lcom/google/android/a/c/a$b;->f:[Lcom/google/android/a/b/i;

    iput p4, p0, Lcom/google/android/a/c/a$b;->b:I

    iput p5, p0, Lcom/google/android/a/c/a$b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/c/a$b;->e:Lcom/google/android/a/b/i;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/c/a$b;)[Lcom/google/android/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a$b;->f:[Lcom/google/android/a/b/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/a/c/a$b;)Lcom/google/android/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a$b;->e:Lcom/google/android/a/b/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/a/c/a$b;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/c/a$b;->d:I

    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a$b;->f:[Lcom/google/android/a/b/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
