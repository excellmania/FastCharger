.class public Lcom/google/android/gms/c/tt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;)Lcom/google/android/gms/c/tr;
    .locals 10
    .param p5    # Lcom/google/android/gms/c/cm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/c/tt;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tr;
    .locals 2
    .param p5    # Lcom/google/android/gms/c/cm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/c/tu;

    invoke-static/range {p1 .. p9}, Lcom/google/android/gms/c/tv;->a(Landroid/content/Context;Lcom/google/android/gms/c/ha;ZZLcom/google/android/gms/c/cm;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/jb;Lcom/google/android/gms/ads/internal/t;Lcom/google/android/gms/ads/internal/d;)Lcom/google/android/gms/c/tv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/tu;-><init>(Lcom/google/android/gms/c/tr;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/c/sk;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/c/sk;->a(Lcom/google/android/gms/c/tr;Z)Lcom/google/android/gms/c/ts;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/tr;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/c/sk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/c/sk;->c(Lcom/google/android/gms/c/tr;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/c/tr;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
