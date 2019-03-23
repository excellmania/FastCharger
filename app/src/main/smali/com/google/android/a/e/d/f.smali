.class abstract Lcom/google/android/a/e/d/f;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/android/a/h/o;

.field protected final b:Lcom/google/android/a/e/d/c;

.field protected c:Lcom/google/android/a/e/m;

.field protected d:Lcom/google/android/a/e/g;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/a/h/o;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/a/h/o;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/a/e/d/f;->a:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/e/d/c;

    invoke-direct {v0}, Lcom/google/android/a/e/d/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/d/f;->b:Lcom/google/android/a/e/d/c;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
.end method

.method a(Lcom/google/android/a/e/g;Lcom/google/android/a/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/d/f;->d:Lcom/google/android/a/e/g;

    iput-object p2, p0, Lcom/google/android/a/e/d/f;->c:Lcom/google/android/a/e/m;

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/d/f;->b:Lcom/google/android/a/e/d/c;

    invoke-virtual {v0}, Lcom/google/android/a/e/d/c;->a()V

    iget-object v0, p0, Lcom/google/android/a/e/d/f;->a:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->a()V

    return-void
.end method
