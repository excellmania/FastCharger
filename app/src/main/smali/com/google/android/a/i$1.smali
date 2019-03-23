.class Lcom/google/android/a/i$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/i;-><init>(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/i;


# direct methods
.method constructor <init>(Lcom/google/android/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/i$1;->a:Lcom/google/android/a/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/i$1;->a:Lcom/google/android/a/i;

    invoke-virtual {v0, p1}, Lcom/google/android/a/i;->a(Landroid/os/Message;)V

    return-void
.end method
