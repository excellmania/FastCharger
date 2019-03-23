.class public final Lcom/google/android/a/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/g/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Lcom/google/android/a/g/q;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/g/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/g/e;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6

    const-wide/16 v4, -0x1

    iget-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/a/g/e;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/a/g/e;->e:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/a/g/e;->e:J

    :cond_2
    iget-object v1, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    invoke-interface {v1, v0}, Lcom/google/android/a/g/q;->a(I)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    int-to-long v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/a/g/e$a;

    invoke-direct {v1, v0}, Lcom/google/android/a/g/e$a;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public a(Lcom/google/android/a/g/h;)J
    .locals 6

    const-wide/16 v4, -0x1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/g/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/a/g/e;->a:Landroid/content/ContentResolver;

    iget-object v1, p1, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/google/android/a/g/h;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/a/g/h;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/a/g/e$a;

    invoke-direct {v1, v0}, Lcom/google/android/a/g/e$a;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-wide v0, p1, Lcom/google/android/a/g/h;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/google/android/a/g/h;->e:J

    iput-wide v0, p0, Lcom/google/android/a/g/e;->e:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/g/e;->f:Z

    iget-object v0, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    invoke-interface {v0}, Lcom/google/android/a/g/q;->b()V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    return-wide v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    iget-wide v0, p0, Lcom/google/android/a/g/e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/a/g/e;->e:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/g/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/a/g/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/a/g/e;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/a/g/e;->f:Z

    iget-object v0, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    invoke-interface {v0}, Lcom/google/android/a/g/q;->c()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lcom/google/android/a/g/e$a;

    invoke-direct {v1, v0}, Lcom/google/android/a/g/e$a;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/a/g/e;->c:Ljava/io/InputStream;

    iget-boolean v1, p0, Lcom/google/android/a/g/e;->f:Z

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/a/g/e;->f:Z

    iget-object v1, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/g/e;->b:Lcom/google/android/a/g/q;

    invoke-interface {v1}, Lcom/google/android/a/g/q;->c()V

    :cond_1
    throw v0
.end method
