.class Lcom/google/android/a/b/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/b/f;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/a/b/f;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/f$5;->c:Lcom/google/android/a/b/f;

    iput-wide p2, p0, Lcom/google/android/a/b/f$5;->a:J

    iput-wide p4, p0, Lcom/google/android/a/b/f$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/b/f$5;->c:Lcom/google/android/a/b/f;

    invoke-static {v0}, Lcom/google/android/a/b/f;->b(Lcom/google/android/a/b/f;)Lcom/google/android/a/b/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/b/f$5;->c:Lcom/google/android/a/b/f;

    invoke-static {v1}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/f;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/b/f$5;->c:Lcom/google/android/a/b/f;

    iget-wide v4, p0, Lcom/google/android/a/b/f$5;->a:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/a/b/f;->c(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/a/b/f$5;->c:Lcom/google/android/a/b/f;

    iget-wide v6, p0, Lcom/google/android/a/b/f$5;->b:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/a/b/f;->c(J)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/a/b/f$a;->a(IJJ)V

    return-void
.end method
