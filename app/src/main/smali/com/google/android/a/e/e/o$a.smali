.class Lcom/google/android/a/e/e/o$a;
.super Lcom/google/android/a/e/e/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/e/e/o;

.field private final b:Lcom/google/android/a/h/n;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/e/o;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/a/e/e/o$a;->a:Lcom/google/android/a/e/e/o;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/a/e/e/o$d;-><init>(Lcom/google/android/a/e/e/o$1;)V

    new-instance v0, Lcom/google/android/a/h/n;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/a/h/o;ZLcom/google/android/a/e/g;)V
    .locals 8

    const/16 v7, 0xd

    const/16 v1, 0xc

    const/4 v6, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/a/h/o;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {p1, v0, v6}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/android/a/h/o;->c(I)V

    add-int/lit8 v0, v0, -0x9

    div-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v2, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {v3, v6}, Lcom/google/android/a/h/n;->b(I)V

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v7}, Lcom/google/android/a/h/n;->b(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/a/e/e/o$a;->b:Lcom/google/android/a/h/n;

    invoke-virtual {v2, v7}, Lcom/google/android/a/h/n;->c(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/a/e/e/o$a;->a:Lcom/google/android/a/e/e/o;

    iget-object v3, v3, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/a/e/e/o$c;

    iget-object v5, p0, Lcom/google/android/a/e/e/o$a;->a:Lcom/google/android/a/e/e/o;

    invoke-direct {v4, v5}, Lcom/google/android/a/e/e/o$c;-><init>(Lcom/google/android/a/e/e/o;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method
