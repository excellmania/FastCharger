.class final Lcom/google/android/a/e/e/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/a/e/m;


# direct methods
.method public constructor <init>(Lcom/google/android/a/e/m;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/a/e/e/n;->a:Lcom/google/android/a/e/m;

    const-string v2, "application/eia-608"

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    move-object v6, v1

    invoke-static/range {v1 .. v6}, Lcom/google/android/a/r;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/a/r;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/r;)V

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/a/h/o;)V
    .locals 9

    const/16 v8, 0xff

    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/google/android/a/h/o;->b()I

    move-result v0

    if-le v0, v4, :cond_3

    move v0, v6

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    add-int/2addr v0, v1

    if-eq v1, v8, :cond_0

    move v5, v6

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/a/h/o;->f()I

    move-result v1

    add-int/2addr v5, v1

    if-eq v1, v8, :cond_1

    invoke-static {v0, v5, p3}, Lcom/google/android/a/f/a/a;->a(IILcom/google/android/a/h/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/a/e/e/n;->a:Lcom/google/android/a/e/m;

    invoke-interface {v0, p3, v5}, Lcom/google/android/a/e/m;->a(Lcom/google/android/a/h/o;I)V

    iget-object v1, p0, Lcom/google/android/a/e/e/n;->a:Lcom/google/android/a/e/m;

    const/4 v7, 0x0

    move-wide v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/a/e/m;->a(JIII[B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v5}, Lcom/google/android/a/h/o;->c(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
