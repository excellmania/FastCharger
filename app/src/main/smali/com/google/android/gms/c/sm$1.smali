.class Lcom/google/android/gms/c/sm$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/sm;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/gms/c/sm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/sm;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/sm$1;->d:Lcom/google/android/gms/c/sm;

    iput p2, p0, Lcom/google/android/gms/c/sm$1;->a:I

    iput p3, p0, Lcom/google/android/gms/c/sm$1;->b:I

    iput p4, p0, Lcom/google/android/gms/c/sm$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/c/sm$1;->a:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/c/sm$1;->d:Lcom/google/android/gms/c/sm;

    invoke-static {v0}, Lcom/google/android/gms/c/sm;->a(Lcom/google/android/gms/c/sm;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/c/sm$1;->b:I

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/google/android/gms/c/is;->da:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/c/sm$1;->d:Lcom/google/android/gms/c/sm;

    invoke-static {v0}, Lcom/google/android/gms/c/sm;->b(Lcom/google/android/gms/c/sm;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/c/sm$1;->c:I

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/c/is;->db:Lcom/google/android/gms/c/io;

    invoke-virtual {v0}, Lcom/google/android/gms/c/io;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/sm$1;->d:Lcom/google/android/gms/c/sm;

    invoke-static {v0}, Lcom/google/android/gms/c/sm;->c(Lcom/google/android/gms/c/sm;)V

    goto :goto_0
.end method
