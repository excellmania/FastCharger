.class Lcom/google/android/a/b/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/b/f;->a(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/a/b/f;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/f$4;->b:Lcom/google/android/a/b/f;

    iput-object p2, p0, Lcom/google/android/a/b/f$4;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/b/f$4;->b:Lcom/google/android/a/b/f;

    invoke-static {v0}, Lcom/google/android/a/b/f;->b(Lcom/google/android/a/b/f;)Lcom/google/android/a/b/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/b/f$4;->b:Lcom/google/android/a/b/f;

    invoke-static {v1}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/f;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/b/f$4;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/a/b/f$a;->a(ILjava/io/IOException;)V

    return-void
.end method
