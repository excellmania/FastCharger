.class Lcom/google/android/gms/c/fo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/kr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/fo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/fo$1;->a:Lcom/google/android/gms/c/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/tr;Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/gms/c/fo$1;->a:Lcom/google/android/gms/c/fo;

    invoke-static {v0}, Lcom/google/android/gms/c/fo;->a(Lcom/google/android/gms/c/fo;)Lcom/google/android/gms/c/fm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/c/fm;->a(Lcom/google/android/gms/c/tr;Ljava/util/Map;)V

    return-void
.end method