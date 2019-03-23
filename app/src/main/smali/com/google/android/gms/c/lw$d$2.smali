.class Lcom/google/android/gms/c/lw$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/tk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/lw$d;->e_()Lcom/google/android/gms/c/lw$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/lw$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/lw$d;Lcom/google/android/gms/c/lw$c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/c/lw$d$2;->a:Lcom/google/android/gms/c/lw$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/lw$d$2;->a:Lcom/google/android/gms/c/lw$c;

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw$c;->a()V

    return-void
.end method
