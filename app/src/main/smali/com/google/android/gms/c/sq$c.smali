.class Lcom/google/android/gms/c/sq$c;
.super Lcom/google/android/gms/c/te;

# interfaces
.implements Lcom/google/android/gms/c/oy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/sq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/c/te",
        "<TT;>;",
        "Lcom/google/android/gms/c/oy$b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/c/sq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/te;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/c/sq;Lcom/google/android/gms/c/sq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/c/sq$c;-><init>(Lcom/google/android/gms/c/sq;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/c/te;->b(Ljava/lang/Object;)V

    return-void
.end method
