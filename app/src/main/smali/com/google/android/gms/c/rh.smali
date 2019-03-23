.class public Lcom/google/android/gms/c/rh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/mp;

.field private final b:Lcom/google/android/gms/c/re;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/mp;Lcom/google/android/gms/c/rd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/rh;->a:Lcom/google/android/gms/c/mp;

    new-instance v0, Lcom/google/android/gms/c/re;

    invoke-direct {v0, p2}, Lcom/google/android/gms/c/re;-><init>(Lcom/google/android/gms/c/rd;)V

    iput-object v0, p0, Lcom/google/android/gms/c/rh;->b:Lcom/google/android/gms/c/re;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/mp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/rh;->a:Lcom/google/android/gms/c/mp;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/c/re;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/rh;->b:Lcom/google/android/gms/c/re;

    return-object v0
.end method
