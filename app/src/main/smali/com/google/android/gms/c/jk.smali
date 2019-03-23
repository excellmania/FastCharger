.class public Lcom/google/android/gms/c/jk;
.super Lcom/google/android/gms/c/jv$a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/net/Uri;

.field private final c:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/jv$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/jk;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/c/jk;->b:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/c/jk;->c:D

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/jk;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/jk;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/c/jk;->c:D

    return-wide v0
.end method
