.class public final Lcom/google/android/a/h/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/a/h/t$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/a/h/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/a/h/t$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/a/h/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Lcom/google/android/a/h/t$a;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/a/h/t$1;

    invoke-direct {v0}, Lcom/google/android/a/h/t$1;-><init>()V

    sput-object v0, Lcom/google/android/a/h/t;->a:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/a/h/t$2;

    invoke-direct {v0}, Lcom/google/android/a/h/t$2;-><init>()V

    sput-object v0, Lcom/google/android/a/h/t;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/h/t;->c:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/a/h/t$a;

    iput-object v0, p0, Lcom/google/android/a/h/t;->e:[Lcom/google/android/a/h/t$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/a/h/t;->f:I

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/google/android/a/h/t;->f:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/a/h/t;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Lcom/google/android/a/h/t;->f:I

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/google/android/a/h/t;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/a/h/t;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/a/h/t;->f:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/a/h/t;->b()V

    iget v1, p0, Lcom/google/android/a/h/t;->h:I

    int-to-float v1, v1

    mul-float v3, p1, v1

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h/t$a;

    iget v4, v0, Lcom/google/android/a/h/t$a;->b:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    iget v0, v0, Lcom/google/android/a/h/t$a;->c:F

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h/t$a;

    iget v0, v0, Lcom/google/android/a/h/t$a;->c:F

    goto :goto_1
.end method

.method public a(IF)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/android/a/h/t;->a()V

    iget v0, p0, Lcom/google/android/a/h/t;->i:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/a/h/t;->e:[Lcom/google/android/a/h/t$a;

    iget v1, p0, Lcom/google/android/a/h/t;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/a/h/t;->i:I

    aget-object v0, v0, v1

    :goto_0
    iget v1, p0, Lcom/google/android/a/h/t;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/a/h/t;->g:I

    iput v1, v0, Lcom/google/android/a/h/t$a;->a:I

    iput p1, v0, Lcom/google/android/a/h/t$a;->b:I

    iput p2, v0, Lcom/google/android/a/h/t$a;->c:F

    iget-object v1, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/a/h/t;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/a/h/t;->h:I

    :cond_0
    :goto_1
    iget v0, p0, Lcom/google/android/a/h/t;->h:I

    iget v1, p0, Lcom/google/android/a/h/t;->c:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/a/h/t;->h:I

    iget v1, p0, Lcom/google/android/a/h/t;->c:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/h/t$a;

    iget v2, v0, Lcom/google/android/a/h/t$a;->b:I

    if-gt v2, v1, :cond_2

    iget v1, p0, Lcom/google/android/a/h/t;->h:I

    iget v2, v0, Lcom/google/android/a/h/t$a;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/a/h/t;->h:I

    iget-object v1, p0, Lcom/google/android/a/h/t;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/a/h/t;->i:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/a/h/t;->e:[Lcom/google/android/a/h/t$a;

    iget v2, p0, Lcom/google/android/a/h/t;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/a/h/t;->i:I

    aput-object v0, v1, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/a/h/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/a/h/t$a;-><init>(Lcom/google/android/a/h/t$1;)V

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/google/android/a/h/t$a;->b:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/a/h/t$a;->b:I

    iget v0, p0, Lcom/google/android/a/h/t;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/a/h/t;->h:I

    goto :goto_1

    :cond_3
    return-void
.end method
