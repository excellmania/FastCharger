.class public final Lcom/google/android/gms/ads/b/c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Lcom/google/android/gms/ads/i;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/b/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/b/c$a;->a(Lcom/google/android/gms/ads/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/c;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/b/c$a;->b(Lcom/google/android/gms/ads/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/c;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/b/c$a;->c(Lcom/google/android/gms/ads/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/c;->c:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/b/c$a;->d(Lcom/google/android/gms/ads/b/c$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/c;->d:I

    invoke-static {p1}, Lcom/google/android/gms/ads/b/c$a;->e(Lcom/google/android/gms/ads/b/c$a;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/b/c;->e:Lcom/google/android/gms/ads/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/b/c$a;Lcom/google/android/gms/ads/b/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b/c;-><init>(Lcom/google/android/gms/ads/b/c$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/c;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/c;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/c;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/c;->d:I

    return v0
.end method

.method public e()Lcom/google/android/gms/ads/i;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/b/c;->e:Lcom/google/android/gms/ads/i;

    return-object v0
.end method
