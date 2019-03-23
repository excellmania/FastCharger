.class Lcom/google/android/a/e/h$d;
.super Lcom/google/android/a/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/e/h;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/h;Lcom/google/android/a/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/h$d;->a:Lcom/google/android/a/e/h;

    invoke-direct {p0, p2}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/g/b;)V

    return-void
.end method


# virtual methods
.method public a(JIII[B)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/google/android/a/e/c;->a(JIII[B)V

    iget-object v0, p0, Lcom/google/android/a/e/h$d;->a:Lcom/google/android/a/e/h;

    invoke-static {v0}, Lcom/google/android/a/e/h;->c(Lcom/google/android/a/e/h;)I

    return-void
.end method
