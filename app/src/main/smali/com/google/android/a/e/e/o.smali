.class public final Lcom/google/android/a/e/e/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/e/e/o$1;,
        Lcom/google/android/a/e/e/o$b;,
        Lcom/google/android/a/e/e/o$c;,
        Lcom/google/android/a/e/e/o$a;,
        Lcom/google/android/a/e/e/o$d;
    }
.end annotation


# static fields
.field private static final d:J

.field private static final e:J

.field private static final f:J


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/a/e/e/o$d;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseBooleanArray;

.field c:Lcom/google/android/a/e/e/i;

.field private final g:Lcom/google/android/a/e/e/m;

.field private final h:I

.field private final i:Lcom/google/android/a/h/o;

.field private final j:Lcom/google/android/a/h/n;

.field private k:Lcom/google/android/a/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AC-3"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/a/e/e/o;->d:J

    const-string v0, "EAC3"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/a/e/e/o;->e:J

    const-string v0, "HEVC"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/a/e/e/o;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/a/e/e/m;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/android/a/e/e/m;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/a/e/e/o;-><init>(Lcom/google/android/a/e/e/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/e/e/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/a/e/e/o;-><init>(Lcom/google/android/a/e/e/m;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/e/e/m;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/e/o;->g:Lcom/google/android/a/e/e/m;

    iput p2, p0, Lcom/google/android/a/e/e/o;->h:I

    new-instance v0, Lcom/google/android/a/h/o;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lcom/google/android/a/h/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    new-instance v0, Lcom/google/android/a/h/n;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/a/h/n;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/a/e/e/o$a;

    invoke-direct {v2, p0}, Lcom/google/android/a/e/e/o$a;-><init>(Lcom/google/android/a/e/e/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/e/e/o;->b:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic a(Lcom/google/android/a/e/e/o;)I
    .locals 1

    iget v0, p0, Lcom/google/android/a/e/e/o;->h:I

    return v0
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/google/android/a/e/e/o;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/a/e/e/o;)Lcom/google/android/a/e/e/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->g:Lcom/google/android/a/e/e/m;

    return-object v0
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/google/android/a/e/e/o;->e:J

    return-wide v0
.end method

.method static synthetic e()J
    .locals 2

    sget-wide v0, Lcom/google/android/a/e/e/o;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/google/android/a/e/f;Lcom/google/android/a/e/j;)I
    .locals 6

    const/16 v2, 0xbc

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    iget-object v0, v0, Lcom/google/android/a/h/o;->a:[B

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/google/android/a/e/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v1}, Lcom/google/android/a/h/o;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    invoke-virtual {v0, v2}, Lcom/google/android/a/h/o;->a(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    invoke-virtual {v0}, Lcom/google/android/a/h/o;->f()I

    move-result v0

    const/16 v2, 0x47

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    iget-object v2, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/a/h/o;->a(Lcom/google/android/a/h/n;I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    invoke-virtual {v0}, Lcom/google/android/a/h/n;->b()Z

    move-result v2

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    invoke-virtual {v0, v4}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/a/h/n;->c(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/a/h/n;->b(I)V

    iget-object v3, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    invoke-virtual {v3}, Lcom/google/android/a/h/n;->b()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/a/e/e/o;->j:Lcom/google/android/a/h/n;

    invoke-virtual {v4}, Lcom/google/android/a/h/n;->b()Z

    move-result v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    invoke-virtual {v3}, Lcom/google/android/a/h/o;->f()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    invoke-virtual {v5, v3}, Lcom/google/android/a/h/o;->c(I)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/e/o$d;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/a/e/e/o;->i:Lcom/google/android/a/h/o;

    iget-object v4, p0, Lcom/google/android/a/e/e/o;->k:Lcom/google/android/a/e/g;

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/a/e/e/o$d;->a(Lcom/google/android/a/h/o;ZLcom/google/android/a/e/g;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/a/e/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/e/e/o;->k:Lcom/google/android/a/e/g;

    sget-object v0, Lcom/google/android/a/e/l;->f:Lcom/google/android/a/e/l;

    invoke-interface {p1, v0}, Lcom/google/android/a/e/g;->a(Lcom/google/android/a/e/l;)V

    return-void
.end method

.method public a(Lcom/google/android/a/e/f;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v3, v1, [B

    move v2, v0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v3, v0, v1}, Lcom/google/android/a/e/f;->c([BII)V

    aget-byte v4, v3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    :goto_1
    return v0

    :cond_0
    const/16 v4, 0xbb

    invoke-interface {p1, v4}, Lcom/google/android/a/e/f;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->g:Lcom/google/android/a/e/e/m;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/m;->a()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/e/e/o;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/e/e/o$d;

    invoke-virtual {v0}, Lcom/google/android/a/e/e/o$d;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
