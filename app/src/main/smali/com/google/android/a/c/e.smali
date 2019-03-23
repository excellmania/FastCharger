.class public final Lcom/google/android/a/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/c/c;


# instance fields
.field private final a:I

.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/c/e;->a:I

    iput-object p2, p0, Lcom/google/android/a/c/e;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/google/android/a/c/e;->c:Z

    iput-boolean p4, p0, Lcom/google/android/a/c/e;->d:Z

    return-void
.end method

.method public static a()Lcom/google/android/a/c/e;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/a/c/e;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/a/c/e;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZZ)Lcom/google/android/a/c/e;
    .locals 2

    new-instance v0, Lcom/google/android/a/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/a/c/e;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/a/c/a/d;ILcom/google/android/a/c/c$a;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/a/c/a/d;->a(I)Lcom/google/android/a/c/a/f;

    move-result-object v5

    move v1, v2

    :goto_0
    iget-object v0, v5, Lcom/google/android/a/c/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, v5, Lcom/google/android/a/c/a/f;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/a;

    iget v4, v0, Lcom/google/android/a/c/a/a;->b:I

    iget v6, p0, Lcom/google/android/a/c/e;->a:I

    if-ne v4, v6, :cond_4

    iget v4, p0, Lcom/google/android/a/c/e;->a:I

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/a/c/e;->c:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/a/c/e;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/google/android/a/c/a/a;->c:Ljava/util/List;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/google/android/a/c/e;->d:Z

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/a/c/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v4, v6, v7, v0}, Lcom/google/android/a/b/o;->a(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v0

    :goto_2
    array-length v6, v0

    if-le v6, v3, :cond_0

    invoke-interface {p3, p1, p2, v1, v0}, Lcom/google/android/a/c/c$a;->a(Lcom/google/android/a/c/a/d;II[I)V

    :cond_0
    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_4

    aget v7, v0, v4

    invoke-interface {p3, p1, p2, v1, v7}, Lcom/google/android/a/c/c$a;->a(Lcom/google/android/a/c/a/d;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/google/android/a/c/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/h/x;->a(I)[I

    move-result-object v0

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_4
    iget-object v6, v0, Lcom/google/android/a/c/a/a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-interface {p3, p1, p2, v1, v4}, Lcom/google/android/a/c/c$a;->a(Lcom/google/android/a/c/a/d;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    return-void
.end method
