.class final Lcom/google/android/a/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/google/android/a/e;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/a/p;->a(Ljava/lang/String;Z)Lcom/google/android/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    return-object v0
.end method
