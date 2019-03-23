.class public final Lcom/google/android/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/g;
.implements Lcom/google/android/a/e/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/b/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/a/e/e;

.field private b:Z

.field private c:Lcom/google/android/a/b/d$a;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/b/d;->a:Lcom/google/android/a/e/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;)I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/a/b/d;->a:Lcom/google/android/a/e/e;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/e/f;IZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/a/b/d$a;->a(Lcom/google/android/a/e/f;IZ)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/a/b/d;->d:Z

    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    return-void
.end method

.method public a(JIII[B)V
    .locals 9

    iget-object v1, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/b/d$a;->a(JIII[B)V

    return-void
.end method

.method public a(Lcom/google/android/a/b/d$a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    iget-boolean v0, p0, Lcom/google/android/a/b/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b/d;->a:Lcom/google/android/a/e/e;

    invoke-interface {v0, p0}, Lcom/google/android/a/e/e;->a(Lcom/google/android/a/e/g;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/a/b/d;->b:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/b/d;->a:Lcom/google/android/a/e/e;

    invoke-interface {v0}, Lcom/google/android/a/e/e;->b()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    invoke-interface {v0, p1}, Lcom/google/android/a/b/d$a;->a(Lcom/google/android/a/d/a;)V

    return-void
.end method

.method public a(Lcom/google/android/a/e/l;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    invoke-interface {v0, p1}, Lcom/google/android/a/b/d$a;->a(Lcom/google/android/a/e/l;)V

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    invoke-interface {v0, p1, p2}, Lcom/google/android/a/b/d$a;->a(Lcom/google/android/a/h/o;I)V

    return-void
.end method

.method public a(Lcom/google/android/a/r;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/d;->c:Lcom/google/android/a/b/d$a;

    invoke-interface {v0, p1}, Lcom/google/android/a/b/d$a;->a(Lcom/google/android/a/r;)V

    return-void
.end method

.method public a_(I)Lcom/google/android/a/e/m;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/a/b/d;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/a/h/b;->b(Z)V

    iput-boolean v1, p0, Lcom/google/android/a/b/d;->d:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
