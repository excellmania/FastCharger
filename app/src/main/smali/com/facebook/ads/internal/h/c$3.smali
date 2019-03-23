.class Lcom/facebook/ads/internal/h/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/c;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c$3;->a:Lcom/facebook/ads/internal/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$3;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->c(Lcom/facebook/ads/internal/h/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c$3;->a:Lcom/facebook/ads/internal/h/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/h/c;->d(Lcom/facebook/ads/internal/h/c;)V

    :cond_0
    return-void
.end method
