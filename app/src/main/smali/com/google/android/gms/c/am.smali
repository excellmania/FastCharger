.class public Lcom/google/android/gms/c/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/am$a;,
        Lcom/google/android/gms/c/am$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field private static final c:[Lcom/google/android/gms/c/vh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/c/vh",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/c/vh",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/c/am$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    const-string v2, "The connection to Google Play services was lost"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/c/am;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/c/vh;

    sput-object v0, Lcom/google/android/gms/c/am;->c:[Lcom/google/android/gms/c/vh;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/c/am$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/am$1;-><init>(Lcom/google/android/gms/c/am;)V

    iput-object v0, p0, Lcom/google/android/gms/c/am;->d:Lcom/google/android/gms/c/am$b;

    iput-object p1, p0, Lcom/google/android/gms/c/am;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/am;)Lcom/google/android/gms/common/api/n;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Lcom/google/android/gms/c/vh;Lcom/google/android/gms/common/api/n;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/vh",
            "<*>;",
            "Lcom/google/android/gms/common/api/n;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/c/vh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/am$a;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/c/am$a;-><init>(Lcom/google/android/gms/c/vh;Lcom/google/android/gms/common/api/n;Landroid/os/IBinder;Lcom/google/android/gms/c/am$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/vh;->a(Lcom/google/android/gms/c/am$b;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/c/am$a;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/c/am$a;-><init>(Lcom/google/android/gms/c/vh;Lcom/google/android/gms/common/api/n;Landroid/os/IBinder;Lcom/google/android/gms/c/am$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/vh;->a(Lcom/google/android/gms/c/am$b;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/c/vh;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/c/vh;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/c/vh;->a(Lcom/google/android/gms/c/am$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/c/vh;->e()V

    invoke-virtual {p0}, Lcom/google/android/gms/c/vh;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/n;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/c/am;->c:[Lcom/google/android/gms/c/vh;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/c/vh;

    array-length v4, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2, v6}, Lcom/google/android/gms/c/vh;->a(Lcom/google/android/gms/c/am$b;)V

    invoke-virtual {v2}, Lcom/google/android/gms/c/vh;->a()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/c/vh;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/c/vh;->h()V

    iget-object v5, p0, Lcom/google/android/gms/c/am;->e:Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/c/vf$a;

    invoke-virtual {v1}, Lcom/google/android/gms/c/vf$a;->b()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->h()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v2, v6, v1}, Lcom/google/android/gms/c/am;->a(Lcom/google/android/gms/c/vh;Lcom/google/android/gms/common/api/n;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Lcom/google/android/gms/c/vh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/vh",
            "<+",
            "Lcom/google/android/gms/common/api/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/c/am;->d:Lcom/google/android/gms/c/am$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/c/vh;->a(Lcom/google/android/gms/c/am$b;)V

    return-void
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, " mUnconsumedApiCalls.size()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/c/am;->b:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/c/am;->c:[Lcom/google/android/gms/c/vh;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/c/vh;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lcom/google/android/gms/c/am;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/c/vh;->d(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method