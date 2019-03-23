.class Lcom/google/android/gms/ads/internal/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/jb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/rv$a;

.field final synthetic b:Lcom/google/android/gms/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/c/rv$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c$2;->b:Lcom/google/android/gms/ads/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/c/rv$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/c$2;->b:Lcom/google/android/gms/ads/internal/c;

    new-instance v0, Lcom/google/android/gms/c/rv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/c/rv$a;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/c/rv;-><init>(Lcom/google/android/gms/c/rv$a;Lcom/google/android/gms/c/tr;Lcom/google/android/gms/c/me;Lcom/google/android/gms/c/mp;Ljava/lang/String;Lcom/google/android/gms/c/mh;Lcom/google/android/gms/c/jq$a;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/c;->b(Lcom/google/android/gms/c/rv;)V

    return-void
.end method
