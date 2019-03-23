.class Lcom/google/android/a/e/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/e/h;->a(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/a/e/h;


# direct methods
.method constructor <init>(Lcom/google/android/a/e/h;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/e/h$1;->b:Lcom/google/android/a/e/h;

    iput-object p2, p0, Lcom/google/android/a/e/h$1;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/e/h$1;->b:Lcom/google/android/a/e/h;

    invoke-static {v0}, Lcom/google/android/a/e/h;->b(Lcom/google/android/a/e/h;)Lcom/google/android/a/e/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/e/h$1;->b:Lcom/google/android/a/e/h;

    invoke-static {v1}, Lcom/google/android/a/e/h;->a(Lcom/google/android/a/e/h;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/e/h$1;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/a/e/h$a;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method
