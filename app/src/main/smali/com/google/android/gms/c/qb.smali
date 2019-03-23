.class public final Lcom/google/android/gms/c/qb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/c/lw$c;

.field public final b:Lcom/google/android/gms/c/kr;

.field public final c:Lcom/google/android/gms/c/kr;

.field public final d:Lcom/google/android/gms/c/kr;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/c/te;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/te",
            "<",
            "Lcom/google/android/gms/c/qe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/qb;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/c/te;

    invoke-direct {v0}, Lcom/google/android/gms/c/te;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/qb;->h:Lcom/google/android/gms/c/te;

    new-instance v0, Lcom/google/android/gms/c/qb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/qb$1;-><init>(Lcom/google/android/gms/c/qb;)V

    iput-object v0, p0, Lcom/google/android/gms/c/qb;->b:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/qb$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/qb$2;-><init>(Lcom/google/android/gms/c/qb;)V

    iput-object v0, p0, Lcom/google/android/gms/c/qb;->c:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/qb$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/qb$3;-><init>(Lcom/google/android/gms/c/qb;)V

    iput-object v0, p0, Lcom/google/android/gms/c/qb;->d:Lcom/google/android/gms/c/kr;

    iput-object p2, p0, Lcom/google/android/gms/c/qb;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/c/qb;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/c/qb;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/c/qb;)Lcom/google/android/gms/c/te;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->h:Lcom/google/android/gms/c/te;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/c/qb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/c/qb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/lw$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->a:Lcom/google/android/gms/c/lw$c;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/c/lw$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/qb;->a:Lcom/google/android/gms/c/lw$c;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/c/qe;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/qb;->h:Lcom/google/android/gms/c/te;

    return-object v0
.end method
