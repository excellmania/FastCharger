.class public final Lcom/google/android/a/e/c/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# instance fields
.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:Lcom/google/android/a/r;

.field public final l:[Lcom/google/android/a/e/c/j;

.field public final m:[J

.field public final n:[J

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/c/i;->a:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/c/i;->b:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/c/i;->c:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/c/i;->d:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/a/h/x;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/a/e/c/i;->e:I

    return-void
.end method

.method public constructor <init>(IIJJJLcom/google/android/a/r;[Lcom/google/android/a/e/c/j;I[J[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/a/e/c/i;->f:I

    iput p2, p0, Lcom/google/android/a/e/c/i;->g:I

    iput-wide p3, p0, Lcom/google/android/a/e/c/i;->h:J

    iput-wide p5, p0, Lcom/google/android/a/e/c/i;->i:J

    iput-wide p7, p0, Lcom/google/android/a/e/c/i;->j:J

    iput-object p9, p0, Lcom/google/android/a/e/c/i;->k:Lcom/google/android/a/r;

    iput-object p10, p0, Lcom/google/android/a/e/c/i;->l:[Lcom/google/android/a/e/c/j;

    iput p11, p0, Lcom/google/android/a/e/c/i;->o:I

    iput-object p12, p0, Lcom/google/android/a/e/c/i;->m:[J

    iput-object p13, p0, Lcom/google/android/a/e/c/i;->n:[J

    return-void
.end method
