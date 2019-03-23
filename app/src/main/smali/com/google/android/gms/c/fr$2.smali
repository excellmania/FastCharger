.class Lcom/google/android/gms/c/fr$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/fr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/fr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/fr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/fr$2;->a:Lcom/google/android/gms/c/fr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/fr$2;->a:Lcom/google/android/gms/c/fr;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/c/fr;->a(Lcom/google/android/gms/c/fr;I)V

    return-void
.end method
