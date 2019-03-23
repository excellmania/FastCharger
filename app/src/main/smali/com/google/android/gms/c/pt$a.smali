.class public Lcom/google/android/gms/c/pt$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/so;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/pt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/so",
        "<",
        "Lcom/google/android/gms/c/ls;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/ls;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/c/pt;->b(Lcom/google/android/gms/c/ls;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/c/ls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/c/pt$a;->a(Lcom/google/android/gms/c/ls;)V

    return-void
.end method
