.class public Lcom/facebook/ads/internal/util/o;
.super Lcom/facebook/ads/internal/util/w;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/internal/util/w$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/facebook/ads/internal/util/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/g;-><init>()V

    const-string v1, ""

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/ads/internal/util/w;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/g;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/util/o;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/util/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/facebook/ads/internal/util/o$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/util/w$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/internal/util/o;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/facebook/ads/internal/util/o;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
