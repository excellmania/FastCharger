.class public final Lcom/google/android/gms/ads/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/ads/i;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/c$a;->a:Z

    iput v0, p0, Lcom/google/android/gms/ads/b/c$a;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/c$a;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/b/c$a;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/b/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/c$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/b/c$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/c$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/b/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/c$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/b/c$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/c$a;->e:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/b/c$a;)Lcom/google/android/gms/ads/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/b/c$a;->d:Lcom/google/android/gms/ads/i;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/ads/b/c$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/b/c$a;->b:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/ads/i;)Lcom/google/android/gms/ads/b/c$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/b/c$a;->d:Lcom/google/android/gms/ads/i;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/ads/b/c$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/c$a;->a:Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/ads/b/c;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/b/c;-><init>(Lcom/google/android/gms/ads/b/c$a;Lcom/google/android/gms/ads/b/c$1;)V

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/ads/b/c$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/b/c$a;->e:I

    return-object p0
.end method

.method public b(Z)Lcom/google/android/gms/ads/b/c$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/c$a;->c:Z

    return-object p0
.end method
