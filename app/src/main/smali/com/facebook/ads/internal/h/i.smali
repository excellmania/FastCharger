.class public Lcom/facebook/ads/internal/h/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/j;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/h/j$a;

.field private final c:Lcom/facebook/ads/internal/h/d;

.field private final d:Lcom/facebook/ads/internal/adapters/m;

.field private e:Lcom/facebook/ads/internal/adapters/l;

.field private f:J

.field private g:J

.field private h:Lcom/facebook/ads/internal/util/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/h/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/h/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/h/j$a;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/h/i;->b:Lcom/facebook/ads/internal/h/j$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/h/i;->f:J

    new-instance v0, Lcom/facebook/ads/internal/h/d;

    new-instance v1, Lcom/facebook/ads/internal/h/i$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/h/i$1;-><init>(Lcom/facebook/ads/internal/h/i;Lcom/facebook/ads/InterstitialAdActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/h/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/d$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    new-instance v2, Lcom/facebook/ads/internal/h/i$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/h/i$2;-><init>(Lcom/facebook/ads/internal/h/i;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/adapters/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/h/b;Lcom/facebook/ads/internal/adapters/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/h/i;->d:Lcom/facebook/ads/internal/adapters/m;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->d:Lcom/facebook/ads/internal/adapters/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/m;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/h/j$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/i;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/h/i;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/i;)Lcom/facebook/ads/internal/h/j$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->b:Lcom/facebook/ads/internal/h/j$a;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/h/i;Lcom/facebook/ads/internal/util/b$a;)Lcom/facebook/ads/internal/util/b$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/i;->h:Lcom/facebook/ads/internal/util/b$a;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/h/i;)Lcom/facebook/ads/internal/adapters/m;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->d:Lcom/facebook/ads/internal/adapters/m;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/h/i;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->onPause()V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/l;->a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-static {}, Lcom/facebook/ads/internal/util/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/h/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/l;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h/d;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/l;->b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->d:Lcom/facebook/ads/internal/adapters/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/l;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-static {}, Lcom/facebook/ads/internal/util/i;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/h/d;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/l;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/h/d;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/l;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/i;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->h:Lcom/facebook/ads/internal/util/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/i;->g:J

    iget-object v2, p0, Lcom/facebook/ads/internal/h/i;->h:Lcom/facebook/ads/internal/util/b$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/b;->a(JLcom/facebook/ads/internal/util/b$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->onResume()V

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/h/i;->f:J

    sget-object v2, Lcom/facebook/ads/internal/util/b$a;->c:Lcom/facebook/ads/internal/util/b$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/h/i;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/l;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/b;->a(JLcom/facebook/ads/internal/util/b$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/i;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/i;->c:Lcom/facebook/ads/internal/h/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->destroy()V

    return-void
.end method
