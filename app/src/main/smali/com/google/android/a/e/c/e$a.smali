.class final Lcom/google/android/a/e/c/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/a/e/c/k;

.field public final b:Lcom/google/android/a/e/m;

.field public c:Lcom/google/android/a/e/c/i;

.field public d:Lcom/google/android/a/e/c/c;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/a/e/c/k;

    invoke-direct {v0}, Lcom/google/android/a/e/c/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    iput-object p1, p0, Lcom/google/android/a/e/c/e$a;->b:Lcom/google/android/a/e/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/c/i;Lcom/google/android/a/e/c/c;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/i;

    iput-object v0, p0, Lcom/google/android/a/e/c/e$a;->c:Lcom/google/android/a/e/c/i;

    invoke-static {p2}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/c/c;

    iput-object v0, p0, Lcom/google/android/a/e/c/e$a;->d:Lcom/google/android/a/e/c/c;

    iget-object v0, p0, Lcom/google/android/a/e/c/e$a;->b:Lcom/google/android/a/e/m;

    iget-object v1, p1, Lcom/google/android/a/e/c/i;->k:Lcom/google/android/a/r;

    invoke-interface {v0, v1}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    iget-object v0, p0, Lcom/google/android/a/e/c/e$a;->a:Lcom/google/android/a/e/c/k;

    invoke-virtual {v0}, Lcom/google/android/a/e/c/k;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/e/c/e$a;->e:I

    return-void
.end method
