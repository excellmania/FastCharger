.class public Lcom/google/android/gms/c/hf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/c/hf;


# instance fields
.field private final c:Lcom/google/android/gms/c/sy;

.field private final d:Lcom/google/android/gms/c/he;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/hf;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/c/hf;

    invoke-direct {v0}, Lcom/google/android/gms/c/hf;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/c/hf;->a(Lcom/google/android/gms/c/hf;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/sy;

    invoke-direct {v0}, Lcom/google/android/gms/c/sy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/hf;->c:Lcom/google/android/gms/c/sy;

    new-instance v0, Lcom/google/android/gms/c/he;

    new-instance v1, Lcom/google/android/gms/c/gu;

    invoke-direct {v1}, Lcom/google/android/gms/c/gu;-><init>()V

    new-instance v2, Lcom/google/android/gms/c/gt;

    invoke-direct {v2}, Lcom/google/android/gms/c/gt;-><init>()V

    new-instance v3, Lcom/google/android/gms/c/ia;

    invoke-direct {v3}, Lcom/google/android/gms/c/ia;-><init>()V

    new-instance v4, Lcom/google/android/gms/c/kj;

    invoke-direct {v4}, Lcom/google/android/gms/c/kj;-><init>()V

    new-instance v5, Lcom/google/android/gms/c/qv;

    invoke-direct {v5}, Lcom/google/android/gms/c/qv;-><init>()V

    new-instance v6, Lcom/google/android/gms/c/od;

    invoke-direct {v6}, Lcom/google/android/gms/c/od;-><init>()V

    new-instance v7, Lcom/google/android/gms/c/nn;

    invoke-direct {v7}, Lcom/google/android/gms/c/nn;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/c/he;-><init>(Lcom/google/android/gms/c/gu;Lcom/google/android/gms/c/gt;Lcom/google/android/gms/c/ia;Lcom/google/android/gms/c/kj;Lcom/google/android/gms/c/qv;Lcom/google/android/gms/c/od;Lcom/google/android/gms/c/nn;)V

    iput-object v0, p0, Lcom/google/android/gms/c/hf;->d:Lcom/google/android/gms/c/he;

    return-void
.end method

.method public static a()Lcom/google/android/gms/c/sy;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/c/hf;->c()Lcom/google/android/gms/c/hf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/c/hf;->c:Lcom/google/android/gms/c/sy;

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/c/hf;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/c/hf;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/c/hf;->b:Lcom/google/android/gms/c/hf;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/c/he;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/c/hf;->c()Lcom/google/android/gms/c/hf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/c/hf;->d:Lcom/google/android/gms/c/he;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/c/hf;
    .locals 2

    sget-object v1, Lcom/google/android/gms/c/hf;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/c/hf;->b:Lcom/google/android/gms/c/hf;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
