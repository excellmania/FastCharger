.class public final Lcom/google/android/a/c/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/a/c/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/android/a/c/a/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;",
            "Lcom/google/android/a/c/a/b;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/b;

    iget-object v0, v0, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/c/a/b;Lcom/google/android/a/c/a/b;)I
    .locals 2

    iget-object v0, p1, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/a/c/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/a/c/a/e$a;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/google/android/a/c/a/e$a;->d:Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/c/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/google/android/a/c/a/e$a;->a(Ljava/util/List;Lcom/google/android/a/c/a/b;)V

    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/c/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/c/a/b;

    invoke-direct {p0, v2, v0}, Lcom/google/android/a/c/a/e$a;->a(Ljava/util/List;Lcom/google/android/a/c/a/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/c/a/e$a;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/a/c/a/b;

    check-cast p2, Lcom/google/android/a/c/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/c/a/e$a;->a(Lcom/google/android/a/c/a/b;Lcom/google/android/a/c/a/b;)I

    move-result v0

    return v0
.end method