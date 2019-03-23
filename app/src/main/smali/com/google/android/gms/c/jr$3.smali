.class Lcom/google/android/gms/c/jr$3;
.super Lcom/google/android/gms/c/or$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/jr;->c()Lcom/google/android/gms/c/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/jr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/jr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/jr$3;->a:Lcom/google/android/gms/c/jr;

    invoke-direct {p0}, Lcom/google/android/gms/c/or$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/lx;)V
    .locals 3

    const-string v0, "/loadHtml"

    new-instance v1, Lcom/google/android/gms/c/jr$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/jr$3$1;-><init>(Lcom/google/android/gms/c/jr$3;Lcom/google/android/gms/c/lx;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/showOverlay"

    new-instance v1, Lcom/google/android/gms/c/jr$3$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/jr$3$2;-><init>(Lcom/google/android/gms/c/jr$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/hideOverlay"

    new-instance v1, Lcom/google/android/gms/c/jr$3$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/jr$3$3;-><init>(Lcom/google/android/gms/c/jr$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    iget-object v0, p0, Lcom/google/android/gms/c/jr$3;->a:Lcom/google/android/gms/c/jr;

    invoke-static {v0}, Lcom/google/android/gms/c/jr;->b(Lcom/google/android/gms/c/jr;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    const-string v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/c/jr$3$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/jr$3$4;-><init>(Lcom/google/android/gms/c/jr$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/ts;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    iget-object v0, p0, Lcom/google/android/gms/c/jr$3;->a:Lcom/google/android/gms/c/jr;

    invoke-static {v0}, Lcom/google/android/gms/c/jr;->b(Lcom/google/android/gms/c/jr;)Lcom/google/android/gms/c/tr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/tr;->l()Lcom/google/android/gms/c/ts;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/c/jr$3$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/c/jr$3$5;-><init>(Lcom/google/android/gms/c/jr$3;Lcom/google/android/gms/c/lx;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/ts;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method
