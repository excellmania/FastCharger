.class Lcom/google/android/a/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/a/o;->a(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/a/o;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/o$3;->d:Lcom/google/android/a/o;

    iput-object p2, p0, Lcom/google/android/a/o$3;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/a/o$3;->b:J

    iput-wide p5, p0, Lcom/google/android/a/o$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/a/o$3;->d:Lcom/google/android/a/o;

    invoke-static {v0}, Lcom/google/android/a/o;->a(Lcom/google/android/a/o;)Lcom/google/android/a/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/a/o$3;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/a/o$3;->b:J

    iget-wide v4, p0, Lcom/google/android/a/o$3;->c:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/a/o$b;->onDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method
