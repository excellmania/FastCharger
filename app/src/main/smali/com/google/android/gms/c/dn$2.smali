.class Lcom/google/android/gms/c/dn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/dn;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/dn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/dn$2;->a:Lcom/google/android/gms/c/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/dn$2;->a:Lcom/google/android/gms/c/dn;

    invoke-static {v0}, Lcom/google/android/gms/c/dn;->b(Lcom/google/android/gms/c/dn;)V

    sget-object v1, Lcom/google/android/gms/c/dn;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/dn$2;->a:Lcom/google/android/gms/c/dn;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/c/dn;->a(Lcom/google/android/gms/c/dn;Z)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
