.class Lcom/google/android/a/b/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/i;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/a/b/i;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/a/b/f;Lcom/google/android/a/b/i;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/a/b/f$6;->d:Lcom/google/android/a/b/f;

    iput-object p2, p0, Lcom/google/android/a/b/f$6;->a:Lcom/google/android/a/b/i;

    iput p3, p0, Lcom/google/android/a/b/f$6;->b:I

    iput-wide p4, p0, Lcom/google/android/a/b/f$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/a/b/f$6;->d:Lcom/google/android/a/b/f;

    invoke-static {v0}, Lcom/google/android/a/b/f;->b(Lcom/google/android/a/b/f;)Lcom/google/android/a/b/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/b/f$6;->d:Lcom/google/android/a/b/f;

    invoke-static {v1}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/f;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/a/b/f$6;->a:Lcom/google/android/a/b/i;

    iget v3, p0, Lcom/google/android/a/b/f$6;->b:I

    iget-object v4, p0, Lcom/google/android/a/b/f$6;->d:Lcom/google/android/a/b/f;

    iget-wide v6, p0, Lcom/google/android/a/b/f$6;->c:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/a/b/f;->c(J)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/a/b/f$a;->a(ILcom/google/android/a/b/i;IJ)V

    return-void
.end method
