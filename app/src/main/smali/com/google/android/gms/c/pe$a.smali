.class public final Lcom/google/android/gms/c/pe$a;
.super Lcom/google/android/gms/c/pe;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/pe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/c/pe;-><init>(Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V

    iput-object p1, p0, Lcom/google/android/gms/c/pe$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/c/pp;
    .locals 3

    new-instance v1, Lcom/google/android/gms/c/il;

    sget-object v0, Lcom/google/android/gms/c/is;->b:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/c/il;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/c/pe$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/c/px;->a()Lcom/google/android/gms/c/px;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/c/py;->a(Landroid/content/Context;Lcom/google/android/gms/c/il;Lcom/google/android/gms/c/px;)Lcom/google/android/gms/c/py;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/c/pe;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
