.class public Lcom/google/android/gms/c/ja;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/iz;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/c/jb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/jb;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/c/jb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/ja;->b:Lcom/google/android/gms/c/jb;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/ja;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/jb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/ja;->b:Lcom/google/android/gms/c/jb;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/c/iz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/ja;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/c/ja;->b:Lcom/google/android/gms/c/jb;

    iget-object v0, p0, Lcom/google/android/gms/c/ja;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/iz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, p3, p4, v2}, Lcom/google/android/gms/c/ix;->a(Lcom/google/android/gms/c/jb;Lcom/google/android/gms/c/iz;J[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/c/ja;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/c/ja;->b:Lcom/google/android/gms/c/jb;

    invoke-static {v1, p3, p4}, Lcom/google/android/gms/c/ix;->a(Lcom/google/android/gms/c/jb;J)Lcom/google/android/gms/c/iz;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
