.class Lcom/facebook/ads/internal/h/q$1;
.super Lcom/facebook/ads/internal/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/h/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/e/c",
        "<",
        "Lcom/facebook/ads/internal/h/c/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/q;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/q$1;->a:Lcom/facebook/ads/internal/h/q;

    invoke-direct {p0}, Lcom/facebook/ads/internal/e/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/h/c/a/d;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/h/c/a/d;

    return-object v0
.end method

.method public a(Lcom/facebook/ads/internal/h/c/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/q$1;->a:Lcom/facebook/ads/internal/h/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/q;->b(Lcom/facebook/ads/internal/h/q;)Lcom/facebook/ads/internal/util/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/h/q$1;->a:Lcom/facebook/ads/internal/h/q;

    invoke-static {v1}, Lcom/facebook/ads/internal/h/q;->a(Lcom/facebook/ads/internal/h/q;)Lcom/facebook/ads/internal/h/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/m;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/o;->a(I)V

    return-void
.end method

.method public synthetic b(Lcom/facebook/ads/internal/e/a;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/h/c/a/d;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/h/q$1;->a(Lcom/facebook/ads/internal/h/c/a/d;)V

    return-void
.end method
