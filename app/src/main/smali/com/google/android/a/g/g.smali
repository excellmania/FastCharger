.class public final Lcom/google/android/a/g/g;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Lcom/google/android/a/g/f;

.field private final b:Lcom/google/android/a/g/h;

.field private final c:[B

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/a/g/g;->d:Z

    iput-boolean v0, p0, Lcom/google/android/a/g/g;->e:Z

    iput-object p1, p0, Lcom/google/android/a/g/g;->a:Lcom/google/android/a/g/f;

    iput-object p2, p0, Lcom/google/android/a/g/g;->b:Lcom/google/android/a/g/h;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/a/g/g;->c:[B

    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/a/g/g;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/g;->a:Lcom/google/android/a/g/f;

    iget-object v1, p0, Lcom/google/android/a/g/g;->b:Lcom/google/android/a/g/h;

    invoke-interface {v0, v1}, Lcom/google/android/a/g/f;->a(Lcom/google/android/a/g/h;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/g/g;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/a/g/g;->b()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/g/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/g;->a:Lcom/google/android/a/g/f;

    invoke-interface {v0}, Lcom/google/android/a/g/f;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/g/g;->e:Z

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/a/g/g;->c:[B

    invoke-virtual {p0, v1}, Lcom/google/android/a/g/g;->read([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/g/g;->c:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/a/g/g;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/g/g;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/a/g/g;->b()V

    iget-object v0, p0, Lcom/google/android/a/g/g;->a:Lcom/google/android/a/g/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/a/g/f;->a([BII)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/a/g/g;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    invoke-direct {p0}, Lcom/google/android/a/g/g;->b()V

    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
