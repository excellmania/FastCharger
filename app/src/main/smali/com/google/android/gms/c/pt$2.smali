.class Lcom/google/android/gms/c/pt$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pg;)Lcom/google/android/gms/c/pj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/c/pt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/pt;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pt$2;->c:Lcom/google/android/gms/c/pt;

    iput-object p2, p0, Lcom/google/android/gms/c/pt$2;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/c/pt$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/pt$2;->c:Lcom/google/android/gms/c/pt;

    invoke-static {}, Lcom/google/android/gms/c/pt;->f()Lcom/google/android/gms/c/lw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/c/lw;->a()Lcom/google/android/gms/c/lw$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/c/pt;->a(Lcom/google/android/gms/c/pt;Lcom/google/android/gms/c/lw$c;)Lcom/google/android/gms/c/lw$c;

    iget-object v0, p0, Lcom/google/android/gms/c/pt$2;->c:Lcom/google/android/gms/c/pt;

    invoke-static {v0}, Lcom/google/android/gms/c/pt;->b(Lcom/google/android/gms/c/pt;)Lcom/google/android/gms/c/lw$c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/c/pt$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/pt$2$1;-><init>(Lcom/google/android/gms/c/pt$2;)V

    new-instance v2, Lcom/google/android/gms/c/pt$2$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/pt$2$2;-><init>(Lcom/google/android/gms/c/pt$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    return-void
.end method
