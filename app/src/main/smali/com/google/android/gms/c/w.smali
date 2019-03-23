.class public interface abstract Lcom/google/android/gms/c/w;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a()Landroid/app/Activity;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/c/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/c/v;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/google/android/gms/c/v;)V
    .param p2    # Lcom/google/android/gms/c/v;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
