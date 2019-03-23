.class Lcom/google/android/a/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/o;->b(Lcom/google/android/a/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/o$a;

.field final synthetic b:Lcom/google/android/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/a/o;Lcom/google/android/a/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/o$1;->b:Lcom/google/android/a/o;

    iput-object p2, p0, Lcom/google/android/a/o$1;->a:Lcom/google/android/a/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/o$1;->b:Lcom/google/android/a/o;

    invoke-static {v0}, Lcom/google/android/a/o;->a(Lcom/google/android/a/o;)Lcom/google/android/a/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/o$1;->a:Lcom/google/android/a/o$a;

    invoke-interface {v0, v1}, Lcom/google/android/a/o$b;->onDecoderInitializationError(Lcom/google/android/a/o$a;)V

    return-void
.end method
