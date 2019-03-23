.class public Lcom/google/android/a/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/b/i$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/a/b/i;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/a/b/i;->d:I

    iput p4, p0, Lcom/google/android/a/b/i;->e:I

    iput p5, p0, Lcom/google/android/a/b/i;->f:F

    iput p6, p0, Lcom/google/android/a/b/i;->g:I

    iput p7, p0, Lcom/google/android/a/b/i;->h:I

    iput p8, p0, Lcom/google/android/a/b/i;->c:I

    iput-object p9, p0, Lcom/google/android/a/b/i;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/a/b/i;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/a/b/i;

    iget-object v0, p1, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
