.class final Lcom/google/android/a/h/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/a/h/t$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/a/h/t$a;Lcom/google/android/a/h/t$a;)I
    .locals 2

    iget v0, p1, Lcom/google/android/a/h/t$a;->a:I

    iget v1, p2, Lcom/google/android/a/h/t$a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/a/h/t$a;

    check-cast p2, Lcom/google/android/a/h/t$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/a/h/t$1;->a(Lcom/google/android/a/h/t$a;Lcom/google/android/a/h/t$a;)I

    move-result v0

    return v0
.end method
