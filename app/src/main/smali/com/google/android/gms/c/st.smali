.class public final Lcom/google/android/gms/c/st;
.super Lcom/google/android/gms/c/se;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/ta;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/c/sj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/c/sj;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/c/st;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/se;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/ta;

    invoke-direct {v0, p2}, Lcom/google/android/gms/c/ta;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/c/st;->a:Lcom/google/android/gms/c/ta;

    iput-object p1, p0, Lcom/google/android/gms/c/st;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/st;->a:Lcom/google/android/gms/c/ta;

    iget-object v1, p0, Lcom/google/android/gms/c/st;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
