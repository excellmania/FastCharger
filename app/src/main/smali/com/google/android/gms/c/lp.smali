.class Lcom/google/android/gms/c/lp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/lp$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/c/lp$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/c/gv;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/gv;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/google/android/gms/c/lp;->b:Lcom/google/android/gms/c/gv;

    iput-object p2, p0, Lcom/google/android/gms/c/lp;->c:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/c/lp;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/lp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/c/lp;)Lcom/google/android/gms/c/gv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->b:Lcom/google/android/gms/c/gv;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/android/gms/c/gv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->b:Lcom/google/android/gms/c/gv;

    return-object v0
.end method

.method a(Lcom/google/android/gms/c/gv;)Lcom/google/android/gms/c/lp$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/c/gv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/c/lp;->b:Lcom/google/android/gms/c/gv;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/lp$a;

    return-object v0
.end method

.method a(Lcom/google/android/gms/c/lk;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/c/lp$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/lp$a;-><init>(Lcom/google/android/gms/c/lp;Lcom/google/android/gms/c/lk;)V

    iget-object v1, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/c/lp$a;->a()V

    return-void
.end method

.method a(Lcom/google/android/gms/c/lk;Lcom/google/android/gms/c/gv;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/c/lp$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/lp$a;-><init>(Lcom/google/android/gms/c/lp;Lcom/google/android/gms/c/lk;Lcom/google/android/gms/c/gv;)V

    iget-object v1, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/lp;->d:I

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/lp$a;

    iget-boolean v0, v0, Lcom/google/android/gms/c/lp$a;->e:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/lp;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/lp$a;

    invoke-virtual {v0}, Lcom/google/android/gms/c/lp$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/lp;->e:Z

    return-void
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/lp;->e:Z

    return v0
.end method
