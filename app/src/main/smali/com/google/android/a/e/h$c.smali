.class final Lcom/google/android/a/e/h$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/a/e/e;

.field private final b:Lcom/google/android/a/e/g;

.field private c:Lcom/google/android/a/e/e;


# direct methods
.method public constructor <init>([Lcom/google/android/a/e/e;Lcom/google/android/a/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/h$c;->a:[Lcom/google/android/a/e/e;

    iput-object p2, p0, Lcom/google/android/a/e/h$c;->b:Lcom/google/android/a/e/g;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/h$c;)Lcom/google/android/a/e/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/a/e/h$c;Lcom/google/android/a/e/e;)Lcom/google/android/a/e/e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;)Lcom/google/android/a/e/e;
    .locals 5

    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/e/h$c;->a:[Lcom/google/android/a/e/e;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/a/e/h$e;

    iget-object v1, p0, Lcom/google/android/a/e/h$c;->a:[Lcom/google/android/a/e/e;

    invoke-direct {v0, v1}, Lcom/google/android/a/e/h$e;-><init>([Lcom/google/android/a/e/e;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/a/e/f;->a()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    iget-object v1, p0, Lcom/google/android/a/e/h$c;->b:Lcom/google/android/a/e/g;

    invoke-interface {v0, v1}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/g;)V

    iget-object v0, p0, Lcom/google/android/a/e/h$c;->c:Lcom/google/android/a/e/e;

    goto :goto_0
.end method
