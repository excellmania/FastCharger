.class public final Lcom/google/android/gms/c/jg;
.super Lcom/google/android/gms/c/jf$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/c/jf$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/jg;->a:Lcom/google/android/gms/ads/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/c/je;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/jg;->a:Lcom/google/android/gms/ads/a/c;

    new-instance v1, Lcom/google/android/gms/c/jd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/c/jd;-><init>(Lcom/google/android/gms/c/je;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/c;->a(Lcom/google/android/gms/ads/a/b;)V

    return-void
.end method
