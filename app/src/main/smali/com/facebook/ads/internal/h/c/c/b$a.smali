.class Lcom/facebook/ads/internal/h/c/c/b$a;
.super Lcom/google/android/a/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/h/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/h/c/c/b;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/h/c/c/b;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/h/c/c/b$a;->a:Lcom/facebook/ads/internal/h/c/c/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;)Lcom/google/android/a/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/a/h/q;-><init>(Lcom/google/android/a/h;)V

    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/a/h/q;->pause()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$a;->a:Lcom/facebook/ads/internal/h/c/c/b;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->e:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/facebook/ads/internal/h/c/c/g;)Lcom/facebook/ads/internal/h/c/c/g;

    return-void
.end method

.method public seekTo(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/a/h/q;->seekTo(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$a;->a:Lcom/facebook/ads/internal/h/c/c/b;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;J)J

    return-void
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/a/h/q;->start()V

    iget-object v0, p0, Lcom/facebook/ads/internal/h/c/c/b$a;->a:Lcom/facebook/ads/internal/h/c/c/b;

    sget-object v1, Lcom/facebook/ads/internal/h/c/c/g;->d:Lcom/facebook/ads/internal/h/c/c/g;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/h/c/c/b;->a(Lcom/facebook/ads/internal/h/c/c/b;Lcom/facebook/ads/internal/h/c/c/g;)Lcom/facebook/ads/internal/h/c/c/g;

    return-void
.end method
