.class Lcom/onesignal/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/w$a;,
        Lcom/onesignal/w$b;,
        Lcom/onesignal/w$c;
    }
.end annotation


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/onesignal/w$b;",
            ">;"
        }
    .end annotation
.end field

.field static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Lcom/onesignal/w$c;

.field private static f:Lcom/onesignal/w$c;

.field private static final g:Ljava/lang/Object;

.field private static h:Landroid/content/Context;

.field private static final i:[Ljava/lang/String;

.field private static final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/onesignal/w;->c:Z

    sput-boolean v2, Lcom/onesignal/w;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/onesignal/w;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/onesignal/w$1;

    invoke-direct {v0}, Lcom/onesignal/w$1;-><init>()V

    sput-object v0, Lcom/onesignal/w;->g:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lat"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "loc_acc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "loc_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/onesignal/w;->i:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/onesignal/w;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onesignal/w;->j:Ljava/util/Set;

    new-instance v0, Lcom/onesignal/w$2;

    invoke-direct {v0}, Lcom/onesignal/w$2;-><init>()V

    sput-object v0, Lcom/onesignal/w;->k:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;)Lcom/onesignal/w$b;
    .locals 1

    invoke-static {p0}, Lcom/onesignal/w;->b(Ljava/lang/Integer;)Lcom/onesignal/w$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/onesignal/w;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/onesignal/w;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "tags"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v2

    move-object v0, v1

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/w;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/onesignal/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/w$b;

    invoke-virtual {v0}, Lcom/onesignal/w$b;->b()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    invoke-static {v0}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;)V

    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 6

    sput-object p0, Lcom/onesignal/w;->h:Landroid/content/Context;

    sget-object v1, Lcom/onesignal/w;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onesignal/w$c;

    new-instance v2, Lcom/onesignal/w;

    invoke-direct {v2}, Lcom/onesignal/w;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CURRENT_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/w$c;-><init>(Lcom/onesignal/w;Ljava/lang/String;ZLcom/onesignal/w$1;)V

    sput-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    :cond_0
    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onesignal/w$c;

    new-instance v2, Lcom/onesignal/w;

    invoke-direct {v2}, Lcom/onesignal/w;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "TOSYNC_STATE"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/onesignal/w$c;-><init>(Lcom/onesignal/w;Ljava/lang/String;ZLcom/onesignal/w$1;)V

    sput-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Lcom/onesignal/w$c;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/onesignal/w;->l()Lcom/onesignal/w$c;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v0, v2}, Lcom/onesignal/w;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/onesignal/w;->l()Lcom/onesignal/w$c;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/w$c;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/onesignal/w$c;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v0, v2}, Lcom/onesignal/w;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    sget-boolean v0, Lcom/onesignal/w;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/onesignal/w;->c:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "_a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/onesignal/w;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    if-nez p2, :cond_5

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lcom/onesignal/w;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method static a(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/onesignal/w;->c:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/onesignal/w;->d:Z

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    sget-object v4, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    invoke-static {v3, v4, v0}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;Lcom/onesignal/w$c;Z)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    iget-object v4, v4, Lcom/onesignal/w$c;->a:Lorg/json/JSONObject;

    sget-object v5, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    iget-object v5, v5, Lcom/onesignal/w$c;->a:Lorg/json/JSONObject;

    invoke-static {v4, v5, v6, v6}, Lcom/onesignal/w;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v3, :cond_3

    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    invoke-static {v0, v4, v6}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    invoke-static {v5}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;)V

    if-nez v2, :cond_4

    sget-boolean v5, Lcom/onesignal/w;->c:Z

    if-eqz v5, :cond_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "players/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onesignal/w$3;

    invoke-direct {v1, v4, v3}, Lcom/onesignal/w$3;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v0, v3, v1}, Lcom/onesignal/v;->c(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    const-string v0, "players"

    :goto_2
    sput-boolean v1, Lcom/onesignal/w;->d:Z

    new-instance v1, Lcom/onesignal/w$4;

    invoke-direct {v1, v4, v3}, Lcom/onesignal/w$4;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-static {v0, v3, v1}, Lcom/onesignal/v;->d(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/v$a;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "players/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/on_session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/onesignal/w;->b(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static b(Z)Lcom/onesignal/w$a;
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/onesignal/t;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onesignal/w$5;

    invoke-direct {v1}, Lcom/onesignal/w$5;-><init>()V

    invoke-static {v0, v1}, Lcom/onesignal/v;->b(Ljava/lang/String;Lcom/onesignal/v$a;)V

    :cond_0
    new-instance v0, Lcom/onesignal/w$a;

    sget-boolean v1, Lcom/onesignal/w;->b:Z

    sget-object v2, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    iget-object v2, v2, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/onesignal/w;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/w$a;-><init>(ZLorg/json/JSONObject;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;)Lcom/onesignal/w$b;
    .locals 4

    sget-object v1, Lcom/onesignal/w;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/onesignal/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/w;->a:Ljava/util/HashMap;

    new-instance v2, Lcom/onesignal/w$b;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/onesignal/w$b;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/onesignal/w;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/w$b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b()Lcom/onesignal/w$c;
    .locals 5

    new-instance v0, Lcom/onesignal/w$c;

    new-instance v1, Lcom/onesignal/w;

    invoke-direct {v1}, Lcom/onesignal/w;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nonPersist"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onesignal/w$c;-><init>(Lcom/onesignal/w;Ljava/lang/String;ZLcom/onesignal/w$1;)V

    return-object v0
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 4

    const-string v1, "["

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    sget-object v1, Lcom/onesignal/w;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/w;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x190

    if-ne p0, v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_1

    move-object p2, v6

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    if-eqz p2, :cond_3

    move-object v5, p2

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz p2, :cond_c

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    :goto_2
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v8, v3, v4, p3}, Lcom/onesignal/w;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v5, v2

    goto :goto_1

    :cond_4
    :try_start_1
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_5

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/onesignal/w;->a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    instance-of v8, v4, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v4, v8, v10

    if-eqz v4, :cond_2

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_8
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_9

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    :cond_9
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_a

    check-cast v3, Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/onesignal/w;->a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_b
    move-object p2, v5

    goto/16 :goto_0

    :cond_c
    move-object v4, v6

    goto/16 :goto_2
.end method

.method static c()Z
    .locals 1

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    invoke-static {v0}, Lcom/onesignal/w$c;->b(Lcom/onesignal/w$c;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/w;->d:Z

    return p0
.end method

.method static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    iget-object v0, v0, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    const-string v1, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Z)Z
    .locals 0

    sput-boolean p0, Lcom/onesignal/w;->c:Z

    return p0
.end method

.method static e()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/onesignal/t;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/onesignal/w$c;->b:Lorg/json/JSONObject;

    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    invoke-static {v0}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;)V

    const-wide/16 v0, -0xe4c

    invoke-static {v0, v1}, Lcom/onesignal/t;->a(J)V

    return-void
.end method

.method static f()V
    .locals 1

    invoke-static {}, Lcom/onesignal/w;->e()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/onesignal/w;->c:Z

    invoke-static {}, Lcom/onesignal/w;->m()V

    return-void
.end method

.method static synthetic g()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/onesignal/w;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/onesignal/w;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/onesignal/w;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j()Lcom/onesignal/w$c;
    .locals 1

    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    return-object v0
.end method

.method static synthetic k()Lcom/onesignal/w$c;
    .locals 1

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    return-object v0
.end method

.method private static l()Lcom/onesignal/w$c;
    .locals 2

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/w;->e:Lcom/onesignal/w$c;

    const-string v1, "TOSYNC_STATE"

    invoke-static {v0, v1}, Lcom/onesignal/w$c;->a(Lcom/onesignal/w$c;Ljava/lang/String;)Lcom/onesignal/w$c;

    move-result-object v0

    sput-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    :cond_0
    invoke-static {}, Lcom/onesignal/w;->m()V

    sget-object v0, Lcom/onesignal/w;->f:Lcom/onesignal/w$c;

    return-object v0
.end method

.method private static m()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/w;->b(Ljava/lang/Integer;)Lcom/onesignal/w$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/w$b;->a()V

    return-void
.end method
