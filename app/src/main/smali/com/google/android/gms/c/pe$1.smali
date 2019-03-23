.class Lcom/google/android/gms/c/pe$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tk$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/pe;->c()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/tk$c",
        "<",
        "Lcom/google/android/gms/c/pg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/pp;

.field final synthetic b:Lcom/google/android/gms/c/pe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/pe;Lcom/google/android/gms/c/pp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/pe$1;->b:Lcom/google/android/gms/c/pe;

    iput-object p2, p0, Lcom/google/android/gms/c/pe$1;->a:Lcom/google/android/gms/c/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/pg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/pe$1;->b:Lcom/google/android/gms/c/pe;

    iget-object v1, p0, Lcom/google/android/gms/c/pe$1;->a:Lcom/google/android/gms/c/pp;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/c/pe;->a(Lcom/google/android/gms/c/pp;Lcom/google/android/gms/c/pg;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pe$1;->b:Lcom/google/android/gms/c/pe;

    invoke-virtual {v0}, Lcom/google/android/gms/c/pe;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/pg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/pe$1;->a(Lcom/google/android/gms/c/pg;)V

    return-void
.end method
