.class Lcom/google/android/a/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/c/a;->a(Lcom/google/android/a/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/y;

.field final synthetic b:Lcom/google/android/a/c/a;


# direct methods
.method constructor <init>(Lcom/google/android/a/c/a;Lcom/google/android/a/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/c/a$1;->b:Lcom/google/android/a/c/a;

    iput-object p2, p0, Lcom/google/android/a/c/a$1;->a:Lcom/google/android/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/a/c/a$1;->b:Lcom/google/android/a/c/a;

    invoke-static {v0}, Lcom/google/android/a/c/a;->b(Lcom/google/android/a/c/a;)Lcom/google/android/a/c/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/c/a$1;->b:Lcom/google/android/a/c/a;

    invoke-static {v1}, Lcom/google/android/a/c/a;->a(Lcom/google/android/a/c/a;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/c/a$1;->a:Lcom/google/android/a/y;

    invoke-interface {v0, v1, v2}, Lcom/google/android/a/c/a$a;->a(ILcom/google/android/a/y;)V

    return-void
.end method
