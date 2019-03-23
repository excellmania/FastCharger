.class public Lcom/google/android/gms/c/oy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/oy$a;,
        Lcom/google/android/gms/c/oy$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/c/dk$a;

.field public final c:Lcom/google/android/gms/c/uc;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/uc;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/oy;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/c/oy;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/c/oy;->b:Lcom/google/android/gms/c/dk$a;

    iput-object p1, p0, Lcom/google/android/gms/c/oy;->c:Lcom/google/android/gms/c/uc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/c/dk$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/c/dk$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/c/oy;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/c/oy;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/c/oy;->b:Lcom/google/android/gms/c/dk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/oy;->c:Lcom/google/android/gms/c/uc;

    return-void
.end method

.method public static a(Lcom/google/android/gms/c/uc;)Lcom/google/android/gms/c/oy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/c/uc;",
            ")",
            "Lcom/google/android/gms/c/oy",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/oy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/oy;-><init>(Lcom/google/android/gms/c/uc;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/c/dk$a;)Lcom/google/android/gms/c/oy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/c/dk$a;",
            ")",
            "Lcom/google/android/gms/c/oy",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/oy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/oy;-><init>(Ljava/lang/Object;Lcom/google/android/gms/c/dk$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/oy;->c:Lcom/google/android/gms/c/uc;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
