.class public Lcom/google/android/gms/c/up$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/up;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/up;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:Lcom/google/android/gms/c/up$c;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lcom/google/android/gms/c/eu$c;

.field private n:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/up;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/c/up$a;-><init>(Lcom/google/android/gms/c/up;[BLcom/google/android/gms/c/up$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/up;[BLcom/google/android/gms/c/up$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/c/up$a;-><init>(Lcom/google/android/gms/c/up;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/c/up;[BLcom/google/android/gms/c/up$c;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v0}, Lcom/google/android/gms/c/up;->a(Lcom/google/android/gms/c/up;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/up$a;->b:I

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v0}, Lcom/google/android/gms/c/up;->b(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v0}, Lcom/google/android/gms/c/up;->c(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v0}, Lcom/google/android/gms/c/up;->d(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v0}, Lcom/google/android/gms/c/up;->e(Lcom/google/android/gms/c/up;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/up$a;->f:I

    iput-object v1, p0, Lcom/google/android/gms/c/up$a;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/c/up$a;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/c/up$a;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/c/up$a;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/up$a;->l:Z

    new-instance v0, Lcom/google/android/gms/c/eu$c;

    invoke-direct {v0}, Lcom/google/android/gms/c/eu$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/up$a;->n:Z

    invoke-static {p1}, Lcom/google/android/gms/c/up;->c(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/c/up;->d(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/up$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    invoke-static {p1}, Lcom/google/android/gms/c/up;->f(Lcom/google/android/gms/c/up;)Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/c/eu$c;->a:J

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    invoke-static {p1}, Lcom/google/android/gms/c/up;->f(Lcom/google/android/gms/c/up;)Lcom/google/android/gms/common/util/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/c;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/c/eu$c;->b:J

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    invoke-static {p1}, Lcom/google/android/gms/c/up;->g(Lcom/google/android/gms/c/up;)Lcom/google/android/gms/c/up$d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    iget-wide v2, v2, Lcom/google/android/gms/c/eu$c;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/c/up$d;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/c/eu$c;->o:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    iput-object p2, v0, Lcom/google/android/gms/c/eu$c;->k:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/c/up$a;->g:Lcom/google/android/gms/c/up$c;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/c/up$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    iput p1, v0, Lcom/google/android/gms/c/eu$c;->e:I

    return-object p0
.end method

.method public a()Lcom/google/android/gms/c/ur;
    .locals 13

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/c/ur;

    new-instance v0, Lcom/google/android/gms/c/co;

    iget-object v1, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v1}, Lcom/google/android/gms/c/up;->i(Lcom/google/android/gms/c/up;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v2}, Lcom/google/android/gms/c/up;->j(Lcom/google/android/gms/c/up;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/c/up$a;->b:I

    iget-object v4, p0, Lcom/google/android/gms/c/up$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/c/up$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/c/up$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v7}, Lcom/google/android/gms/c/up;->h(Lcom/google/android/gms/c/up;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/c/up$a;->f:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/c/co;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    iget-object v4, p0, Lcom/google/android/gms/c/up$a;->g:Lcom/google/android/gms/c/up$c;

    invoke-static {v12}, Lcom/google/android/gms/c/up;->a(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/c/up;->b(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/c/up;->a(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/c/up;->c(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/c/up$a;->l:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/c/ur;-><init>(Lcom/google/android/gms/c/co;Lcom/google/android/gms/c/eu$c;Lcom/google/android/gms/c/up$c;Lcom/google/android/gms/c/up$c;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/c/up$a;->b()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/c/up$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/up$a;->m:Lcom/google/android/gms/c/eu$c;

    iput p1, v0, Lcom/google/android/gms/c/eu$c;->f:I

    return-object p0
.end method

.method public b()Lcom/google/android/gms/common/api/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/c/up$a;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/up$a;->n:Z

    invoke-virtual {p0}, Lcom/google/android/gms/c/up$a;->a()Lcom/google/android/gms/c/ur;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/c/ur;->b:Lcom/google/android/gms/c/co;

    iget-object v2, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v2}, Lcom/google/android/gms/c/up;->k(Lcom/google/android/gms/c/up;)Lcom/google/android/gms/c/up$b;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/c/co;->h:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/c/co;->d:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/c/up$b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/c/up$a;->a:Lcom/google/android/gms/c/up;

    invoke-static {v1}, Lcom/google/android/gms/c/up;->l(Lcom/google/android/gms/c/up;)Lcom/google/android/gms/c/uq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/c/uq;->a(Lcom/google/android/gms/c/ur;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    goto :goto_0
.end method
