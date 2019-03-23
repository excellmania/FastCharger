.class Lcom/google/android/gms/c/tw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/tw;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/c/tw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/tw;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/tw$1;->b:Lcom/google/android/gms/c/tw;

    iput-object p2, p0, Lcom/google/android/gms/c/tw$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/tw$1;->b:Lcom/google/android/gms/c/tw;

    invoke-static {v0}, Lcom/google/android/gms/c/tw;->a(Lcom/google/android/gms/c/tw;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    const-string v1, "pubVideoCmd"

    iget-object v2, p0, Lcom/google/android/gms/c/tw$1;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/c/tr;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
