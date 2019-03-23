.class public final Lcom/google/android/a/g/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/r;


# instance fields
.field private final a:Lcom/google/android/a/g/r;

.field private final b:Lcom/google/android/a/g/r;

.field private final c:Lcom/google/android/a/g/r;

.field private final d:Lcom/google/android/a/g/r;

.field private e:Lcom/google/android/a/g/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/g/q;Lcom/google/android/a/g/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->a:Lcom/google/android/a/g/r;

    new-instance v0, Lcom/google/android/a/g/m;

    invoke-direct {v0, p2}, Lcom/google/android/a/g/m;-><init>(Lcom/google/android/a/g/q;)V

    iput-object v0, p0, Lcom/google/android/a/g/l;->b:Lcom/google/android/a/g/r;

    new-instance v0, Lcom/google/android/a/g/c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/a/g/c;-><init>(Landroid/content/Context;Lcom/google/android/a/g/q;)V

    iput-object v0, p0, Lcom/google/android/a/g/l;->c:Lcom/google/android/a/g/r;

    new-instance v0, Lcom/google/android/a/g/e;

    invoke-direct {v0, p1, p2}, Lcom/google/android/a/g/e;-><init>(Landroid/content/Context;Lcom/google/android/a/g/q;)V

    iput-object v0, p0, Lcom/google/android/a/g/l;->d:Lcom/google/android/a/g/r;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/g/q;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/a/g/l;-><init>(Landroid/content/Context;Lcom/google/android/a/g/q;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/g/q;Ljava/lang/String;Z)V
    .locals 7

    const/16 v4, 0x1f40

    new-instance v0, Lcom/google/android/a/g/k;

    const/4 v2, 0x0

    move-object v1, p3

    move-object v3, p2

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/a/g/k;-><init>(Ljava/lang/String;Lcom/google/android/a/h/r;Lcom/google/android/a/g/q;IIZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/a/g/l;-><init>(Landroid/content/Context;Lcom/google/android/a/g/q;Lcom/google/android/a/g/r;)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/a/g/r;->a([BII)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/a/g/h;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iget-object v0, p1, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/a/h/x;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/a/g/h;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/g/l;->c:Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    invoke-interface {v0, p1}, Lcom/google/android/a/g/r;->a(Lcom/google/android/a/g/h;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/g/l;->b:Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/a/g/l;->c:Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/a/g/l;->d:Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/a/g/l;->a:Lcom/google/android/a/g/r;

    iput-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    invoke-interface {v0}, Lcom/google/android/a/g/r;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    invoke-interface {v0}, Lcom/google/android/a/g/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/a/g/l;->e:Lcom/google/android/a/g/r;

    throw v0
.end method
