.class final Lcom/google/android/a/e/c/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Lcom/google/android/a/h/o;

.field private final g:Lcom/google/android/a/h/o;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/h/o;Lcom/google/android/a/h/o;Z)V
    .locals 3

    const/16 v2, 0xc

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/c/b$b;->g:Lcom/google/android/a/h/o;

    iput-object p2, p0, Lcom/google/android/a/e/c/b$b;->f:Lcom/google/android/a/h/o;

    iput-boolean p3, p0, Lcom/google/android/a/e/c/b$b;->e:Z

    invoke-virtual {p2, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p2}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/e/c/b$b;->a:I

    invoke-virtual {p1, v2}, Lcom/google/android/a/h/o;->b(I)V

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->s()I

    move-result v1

    iput v1, p0, Lcom/google/android/a/e/c/b$b;->i:I

    invoke-virtual {p1}, Lcom/google/android/a/h/o;->m()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "first_chunk must be 1"

    invoke-static {v0, v1}, Lcom/google/android/a/h/b;->b(ZLjava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/c/b$b;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/google/android/a/e/c/b$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/a/e/c/b$b;->b:I

    iget v1, p0, Lcom/google/android/a/e/c/b$b;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/a/e/c/b$b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/c/b$b;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->u()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/google/android/a/e/c/b$b;->d:J

    iget v0, p0, Lcom/google/android/a/e/c/b$b;->b:I

    iget v1, p0, Lcom/google/android/a/e/c/b$b;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/a/e/c/b$b;->g:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/e/c/b$b;->c:I

    iget-object v0, p0, Lcom/google/android/a/e/c/b$b;->g:Lcom/google/android/a/h/o;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->c(I)V

    iget v0, p0, Lcom/google/android/a/e/c/b$b;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/a/e/c/b$b;->i:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/a/e/c/b$b;->g:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iput v0, p0, Lcom/google/android/a/e/c/b$b;->h:I

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/e/c/b$b;->f:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->k()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method
