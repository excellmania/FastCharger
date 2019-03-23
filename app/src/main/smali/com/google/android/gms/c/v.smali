.class public Lcom/google/android/gms/c/v;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/android/gms/c/w;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/c/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/v;->a:Lcom/google/android/gms/c/w;

    return-void
.end method

.method protected static a(Lcom/google/android/gms/c/u;)Lcom/google/android/gms/c/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/c/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/c/u;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/ak;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/c/ak;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/c/u;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/x;->a(Landroid/app/Activity;)Lcom/google/android/gms/c/x;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public b()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/v;->a:Lcom/google/android/gms/c/w;

    invoke-interface {v0}, Lcom/google/android/gms/c/w;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
