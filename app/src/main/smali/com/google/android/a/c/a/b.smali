.class public Lcom/google/android/a/c/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/UUID;

.field public final c:Lcom/google/android/a/d/a$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/a/d/a$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/a/c/a/b;->b:Ljava/util/UUID;

    iput-object p3, p0, Lcom/google/android/a/c/a/b;->c:Lcom/google/android/a/d/a$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/a/c/a/b;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    check-cast p1, Lcom/google/android/a/c/a/b;

    iget-object v2, p0, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/a/c/a/b;->b:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/a/c/a/b;->b:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/android/a/h/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/a/c/a/b;->c:Lcom/google/android/a/d/a$b;

    iget-object v3, p1, Lcom/google/android/a/c/a/b;->c:Lcom/google/android/a/d/a$b;

    invoke-static {v2, v3}, Lcom/google/android/a/h/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/google/android/a/c/a/b;->b:Ljava/util/UUID;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a/b;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/google/android/a/c/a/b;->c:Lcom/google/android/a/d/a$b;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/a/c/a/b;->c:Lcom/google/android/a/d/a$b;

    invoke-virtual {v1}, Lcom/google/android/a/d/a$b;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
