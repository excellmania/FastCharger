.class Lcom/google/android/gms/c/os$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/os;->b(Lorg/json/JSONObject;)Lcom/google/android/gms/c/th;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/tg$a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/c/jk;",
        ">;",
        "Lcom/google/android/gms/c/ji;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/os;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/c/os$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/c/os$5;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/c/os$5;->c:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/c/os$5;->d:I

    iput p6, p0, Lcom/google/android/gms/c/os$5;->e:I

    iput p7, p0, Lcom/google/android/gms/c/os$5;->f:I

    iput p8, p0, Lcom/google/android/gms/c/os$5;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/google/android/gms/c/ji;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/c/jk;",
            ">;)",
            "Lcom/google/android/gms/c/ji;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    :goto_0
    move-object v8, v0

    :goto_1
    return-object v8

    :cond_1
    new-instance v0, Lcom/google/android/gms/c/ji;

    iget-object v1, p0, Lcom/google/android/gms/c/os$5;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/c/os;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/c/os$5;->b:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/c/os$5;->c:Ljava/lang/Integer;

    iget v5, p0, Lcom/google/android/gms/c/os$5;->d:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/google/android/gms/c/os$5;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    iget v6, p0, Lcom/google/android/gms/c/os$5;->e:I

    iget v7, p0, Lcom/google/android/gms/c/os$5;->f:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/c/os$5;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/c/ji;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get attribution icon"

    invoke-static {v1, v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    move-object v5, v8

    goto :goto_2
.end method

.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/os$5;->a(Ljava/util/List;)Lcom/google/android/gms/c/ji;

    move-result-object v0

    return-object v0
.end method
