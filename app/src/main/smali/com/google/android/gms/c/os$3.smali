.class Lcom/google/android/gms/c/os$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/kr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/os;->a(Lcom/google/android/gms/c/jq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/jn;

.field final synthetic b:Lcom/google/android/gms/c/os;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/os;Lcom/google/android/gms/c/jn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/os$3;->b:Lcom/google/android/gms/c/os;

    iput-object p2, p0, Lcom/google/android/gms/c/os$3;->a:Lcom/google/android/gms/c/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/tr;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/tr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asset"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/c/os$3;->b:Lcom/google/android/gms/c/os;

    iget-object v2, p0, Lcom/google/android/gms/c/os$3;->a:Lcom/google/android/gms/c/jn;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/c/os;->a(Lcom/google/android/gms/c/os;Lcom/google/android/gms/c/ke;Ljava/lang/String;)V

    return-void
.end method
