.class public Lcom/google/android/gms/ads/internal/k;
.super Lcom/google/android/gms/c/hl$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/c/hj;

.field private b:Lcom/google/android/gms/c/kf;

.field private c:Lcom/google/android/gms/c/kg;

.field private d:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/kh;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/ki;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/c/js;

.field private g:Lcom/google/android/gms/c/hr;

.field private final h:Landroid/content/Context;

.field private final i:Lcom/google/android/gms/c/mo;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/c/tc;

.field private final l:Lcom/google/android/gms/ads/internal/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/ads/internal/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/hl$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/k;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/c/mo;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/c/tc;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/k;->d:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/k;->l:Lcom/google/android/gms/ads/internal/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/hk;
    .locals 13

    new-instance v0, Lcom/google/android/gms/ads/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/k;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/k;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/k;->i:Lcom/google/android/gms/c/mo;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/k;->k:Lcom/google/android/gms/c/tc;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/c/hj;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/c/kf;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/c/kg;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/k;->d:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v10, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/c/js;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/c/hr;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/k;->l:Lcom/google/android/gms/ads/internal/d;

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/ads/internal/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/c/mo;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/hj;Lcom/google/android/gms/c/kf;Lcom/google/android/gms/c/kg;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/c/js;Lcom/google/android/gms/c/hr;Lcom/google/android/gms/ads/internal/d;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->a:Lcom/google/android/gms/c/hj;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/hr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->g:Lcom/google/android/gms/c/hr;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/js;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->f:Lcom/google/android/gms/c/js;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->b:Lcom/google/android/gms/c/kf;

    return-void
.end method

.method public a(Lcom/google/android/gms/c/kg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/k;->c:Lcom/google/android/gms/c/kg;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/c/ki;Lcom/google/android/gms/c/kh;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->e:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/k;->d:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
