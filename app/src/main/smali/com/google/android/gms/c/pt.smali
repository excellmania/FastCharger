.class public Lcom/google/android/gms/c/pt;
.super Lcom/google/android/gms/c/se;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/pt$a;,
        Lcom/google/android/gms/c/pt$b;,
        Lcom/google/android/gms/c/pt$c;
    }
.end annotation


# static fields
.field static final a:J

.field static b:Z

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/google/android/gms/c/lw;

.field private static e:Lcom/google/android/gms/c/ks;

.field private static f:Lcom/google/android/gms/c/kx;

.field private static g:Lcom/google/android/gms/c/kr;


# instance fields
.field private final h:Lcom/google/android/gms/c/pb$a;

.field private final i:Lcom/google/android/gms/c/pg$a;

.field private final j:Ljava/lang/Object;

.field private final k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/c/lw$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/c/pt;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/pt;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/c/pt;->b:Z

    sput-object v4, Lcom/google/android/gms/c/pt;->d:Lcom/google/android/gms/c/lw;

    sput-object v4, Lcom/google/android/gms/c/pt;->e:Lcom/google/android/gms/c/ks;

    sput-object v4, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    sput-object v4, Lcom/google/android/gms/c/pt;->g:Lcom/google/android/gms/c/kr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/pg$a;Lcom/google/android/gms/c/pb$a;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/c/se;-><init>(Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/pt;->j:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/c/pt;->h:Lcom/google/android/gms/c/pb$a;

    iput-object p1, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/c/pt;->i:Lcom/google/android/gms/c/pg$a;

    sget-object v6, Lcom/google/android/gms/c/pt;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/c/pt;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/kx;

    invoke-direct {v0}, Lcom/google/android/gms/c/kx;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    new-instance v0, Lcom/google/android/gms/c/ks;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/c/pg$a;->j:Lcom/google/android/gms/c/tc;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/c/ks;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;)V

    sput-object v0, Lcom/google/android/gms/c/pt;->e:Lcom/google/android/gms/c/ks;

    new-instance v0, Lcom/google/android/gms/c/pt$c;

    invoke-direct {v0}, Lcom/google/android/gms/c/pt$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/pt;->g:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/lw;

    iget-object v1, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/pt;->i:Lcom/google/android/gms/c/pg$a;

    iget-object v2, v2, Lcom/google/android/gms/c/pg$a;->j:Lcom/google/android/gms/c/tc;

    sget-object v3, Lcom/google/android/gms/c/is;->b:Lcom/google/android/gms/c/io;

    invoke-virtual {v3}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/c/pt$b;

    invoke-direct {v4}, Lcom/google/android/gms/c/pt$b;-><init>()V

    new-instance v5, Lcom/google/android/gms/c/pt$a;

    invoke-direct {v5}, Lcom/google/android/gms/c/pt$a;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/lw;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Ljava/lang/String;Lcom/google/android/gms/c/so;Lcom/google/android/gms/c/so;)V

    sput-object v0, Lcom/google/android/gms/c/pt;->d:Lcom/google/android/gms/c/lw;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/c/pt;->b:Z

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/c/pt;Lcom/google/android/gms/c/lw$c;)Lcom/google/android/gms/c/lw$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pt;->l:Lcom/google/android/gms/c/lw$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/pb$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/pt;->h:Lcom/google/android/gms/c/pb$a;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pj;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/sj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pg;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/c/pj;

    invoke-direct {v0, v9}, Lcom/google/android/gms/c/pj;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/c/kx;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/c/pt$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/google/android/gms/c/pt$2;-><init>(Lcom/google/android/gms/c/pt;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/c/pt;->a:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long/2addr v0, v2

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/c/pj;

    invoke-direct {v0, v8}, Lcom/google/android/gms/c/pj;-><init>(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/c/pj;

    invoke-direct {v0, v8}, Lcom/google/android/gms/c/pj;-><init>(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/google/android/gms/c/pj;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/pj;-><init>(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/google/android/gms/c/pj;

    invoke-direct {v0, v9}, Lcom/google/android/gms/c/pj;-><init>(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/c/qa;->a(Landroid/content/Context;Lcom/google/android/gms/c/pg;Ljava/lang/String;)Lcom/google/android/gms/c/pj;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/c/pj;->e:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/c/pj;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/pj;-><init>(I)V

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/google/android/gms/c/pg;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/c/pg;->c:Lcom/google/android/gms/c/gv;

    iget-object v0, v0, Lcom/google/android/gms/c/gv;->c:Landroid/os/Bundle;

    const-string v2, "sdk_less_server_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/c/pw;

    invoke-direct {v3}, Lcom/google/android/gms/c/pw;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/c/pw;->a(Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pw;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->n()Lcom/google/android/gms/c/qg;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/c/qg;->a(Landroid/content/Context;)Lcom/google/android/gms/c/qf;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/c/pw;->a(Lcom/google/android/gms/c/qf;)Lcom/google/android/gms/c/pw;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/c/qa;->a(Landroid/content/Context;Lcom/google/android/gms/c/pw;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/pt;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/c/a;->b(Landroid/content/Context;)Lcom/google/android/gms/ads/c/a$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "request_id"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "request_param"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v2, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lat"

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/c/sj;->a(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    const-string v4, "Cannot get advertising id info"

    invoke-static {v4, v0}, Lcom/google/android/gms/c/sf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method protected static a(Lcom/google/android/gms/c/ls;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/c/pt;->e:Lcom/google/android/gms/c/ks;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/c/pt;->g:Lcom/google/android/gms/c/kr;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/lw$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/pt;->l:Lcom/google/android/gms/c/lw$c;

    return-object v0
.end method

.method protected static b(Lcom/google/android/gms/c/ls;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/c/pt;->e:Lcom/google/android/gms/c/ks;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/c/pt;->g:Lcom/google/android/gms/c/kr;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/c/ls;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method static synthetic c()Lcom/google/android/gms/c/kx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/c/pt;->f:Lcom/google/android/gms/c/kx;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/c/lw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/c/pt;->d:Lcom/google/android/gms/c/lw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    const/4 v3, 0x0

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/c/pg;

    iget-object v0, p0, Lcom/google/android/gms/c/pt;->i:Lcom/google/android/gms/c/pg$a;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/google/android/gms/c/pg;-><init>(Lcom/google/android/gms/c/pg$a;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pj;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->k()Lcom/google/android/gms/common/util/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/c/rv$a;

    iget v5, v2, Lcom/google/android/gms/c/pj;->e:I

    iget-wide v8, v2, Lcom/google/android/gms/c/pj;->n:J

    move-object v4, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/c/rv$a;-><init>(Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/pj;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/ha;IJJLorg/json/JSONObject;)V

    sget-object v1, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/pt$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/c/pt$1;-><init>(Lcom/google/android/gms/c/pt;Lcom/google/android/gms/c/rv$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/c/pt;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/c/sy;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/c/pt$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/pt$3;-><init>(Lcom/google/android/gms/c/pt;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
