.class Lcom/google/android/a/b/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/b/f;->a(JIILcom/google/android/a/b/i;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/a/b/i;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/google/android/a/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/a/b/f;JIILcom/google/android/a/b/i;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/b/f$1;->g:Lcom/google/android/a/b/f;

    iput-wide p2, p0, Lcom/google/android/a/b/f$1;->a:J

    iput p4, p0, Lcom/google/android/a/b/f$1;->b:I

    iput p5, p0, Lcom/google/android/a/b/f$1;->c:I

    iput-object p6, p0, Lcom/google/android/a/b/f$1;->d:Lcom/google/android/a/b/i;

    iput-wide p7, p0, Lcom/google/android/a/b/f$1;->e:J

    iput-wide p9, p0, Lcom/google/android/a/b/f$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/a/b/f$1;->g:Lcom/google/android/a/b/f;

    invoke-static {v0}, Lcom/google/android/a/b/f;->b(Lcom/google/android/a/b/f;)Lcom/google/android/a/b/f$a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/a/b/f$1;->g:Lcom/google/android/a/b/f;

    invoke-static {v0}, Lcom/google/android/a/b/f;->a(Lcom/google/android/a/b/f;)I

    move-result v2

    iget-wide v3, p0, Lcom/google/android/a/b/f$1;->a:J

    iget v5, p0, Lcom/google/android/a/b/f$1;->b:I

    iget v6, p0, Lcom/google/android/a/b/f$1;->c:I

    iget-object v7, p0, Lcom/google/android/a/b/f$1;->d:Lcom/google/android/a/b/i;

    iget-object v0, p0, Lcom/google/android/a/b/f$1;->g:Lcom/google/android/a/b/f;

    iget-wide v8, p0, Lcom/google/android/a/b/f$1;->e:J

    invoke-virtual {v0, v8, v9}, Lcom/google/android/a/b/f;->c(J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/a/b/f$1;->g:Lcom/google/android/a/b/f;

    iget-wide v10, p0, Lcom/google/android/a/b/f$1;->f:J

    invoke-virtual {v0, v10, v11}, Lcom/google/android/a/b/f;->c(J)J

    move-result-wide v10

    invoke-interface/range {v1 .. v11}, Lcom/google/android/a/b/f$a;->a(IJIILcom/google/android/a/b/i;JJ)V

    return-void
.end method
