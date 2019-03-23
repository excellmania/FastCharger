.class Lcom/facebook/ads/internal/util/w$1;
.super Lcom/facebook/ads/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/util/w;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/g;Lcom/facebook/ads/internal/util/w$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/ads/internal/util/g;

.field final synthetic f:Lcom/facebook/ads/internal/util/w;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/w;DDDZLcom/facebook/ads/internal/util/g;)V
    .locals 12

    iput-object p1, p0, Lcom/facebook/ads/internal/util/w$1;->f:Lcom/facebook/ads/internal/util/w;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/ads/internal/util/w$1;->e:Lcom/facebook/ads/internal/util/g;

    move-object v3, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/internal/b/b;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method protected a(ZZLcom/facebook/ads/internal/b/c;)V
    .locals 3
    .param p3    # Lcom/facebook/ads/internal/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w$1;->f:Lcom/facebook/ads/internal/util/w;

    sget-object v1, Lcom/facebook/ads/internal/util/w$b;->d:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/w$1;->e:Lcom/facebook/ads/internal/util/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/w$1;->f:Lcom/facebook/ads/internal/util/w;

    sget-object v2, Lcom/facebook/ads/internal/util/w$b;->d:Lcom/facebook/ads/internal/util/w$b;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w$b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/util/w$1;->f:Lcom/facebook/ads/internal/util/w;

    invoke-static {v2}, Lcom/facebook/ads/internal/util/w;->a(Lcom/facebook/ads/internal/util/w;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/util/g;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
