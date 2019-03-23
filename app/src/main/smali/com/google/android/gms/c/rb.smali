.class public Lcom/google/android/gms/c/rb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/rb$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/rb$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/c/rb$a;->a(Lcom/google/android/gms/c/rb$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/rb;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/c/rb$a;->b(Lcom/google/android/gms/c/rb$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/rb;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/c/rb$a;->c(Lcom/google/android/gms/c/rb$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/c/rb;->c:I

    invoke-static {p1}, Lcom/google/android/gms/c/rb$a;->d(Lcom/google/android/gms/c/rb$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/c/rb;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/rb$a;Lcom/google/android/gms/c/rb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/rb;-><init>(Lcom/google/android/gms/c/rb$a;)V

    return-void
.end method
