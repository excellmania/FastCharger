.class public abstract Lcom/google/android/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/a/g/o$c;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/a/b/i;

.field public final e:Lcom/google/android/a/g/h;

.field public final f:I

.field protected final g:Lcom/google/android/a/g/f;


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;IILcom/google/android/a/b/i;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/f;

    iput-object v0, p0, Lcom/google/android/a/b/c;->g:Lcom/google/android/a/g/f;

    invoke-static {p2}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/a/g/h;

    iput-object v0, p0, Lcom/google/android/a/b/c;->e:Lcom/google/android/a/g/h;

    iput p3, p0, Lcom/google/android/a/b/c;->b:I

    iput p4, p0, Lcom/google/android/a/b/c;->c:I

    iput-object p5, p0, Lcom/google/android/a/b/c;->d:Lcom/google/android/a/b/i;

    iput p6, p0, Lcom/google/android/a/b/c;->f:I

    return-void
.end method


# virtual methods
.method public abstract e()J
.end method
