.class final Lcom/google/android/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/c/b;


# instance fields
.field private final a:Lcom/google/android/a/e/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iput-object p2, p0, Lcom/google/android/a/c/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iget v0, v0, Lcom/google/android/a/e/a;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(JJ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/e/a;->a(J)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iget-object v0, v0, Lcom/google/android/a/e/a;->e:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public a(IJ)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iget-object v0, v0, Lcom/google/android/a/e/a;->d:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(I)Lcom/google/android/a/c/a/g;
    .locals 8

    new-instance v1, Lcom/google/android/a/c/a/g;

    iget-object v2, p0, Lcom/google/android/a/c/d;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iget-object v0, v0, Lcom/google/android/a/e/a;->c:[J

    aget-wide v4, v0, p1

    iget-object v0, p0, Lcom/google/android/a/c/d;->a:Lcom/google/android/a/e/a;

    iget-object v0, v0, Lcom/google/android/a/e/a;->b:[I

    aget v0, v0, p1

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/a/c/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
