.class public Lcom/google/android/a/c/a/h$a;
.super Lcom/google/android/a/c/a/h;

# interfaces
.implements Lcom/google/android/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/a/c/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final e:Lcom/google/android/a/c/a/i$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/a/b/i;Lcom/google/android/a/c/a/i$a;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/a/c/a/h;-><init>(Ljava/lang/String;JLcom/google/android/a/b/i;Lcom/google/android/a/c/a/i;Ljava/lang/String;Lcom/google/android/a/c/a/h$1;)V

    iput-object p5, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0}, Lcom/google/android/a/c/a/i$a;->b()I

    move-result v0

    return v0
.end method

.method public a(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/a/c/a/i$a;->a(J)I

    move-result v0

    return v0
.end method

.method public a(JJ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/a/c/a/i$a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/c/a/i$a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IJ)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/a/c/a/i$a;->a(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)Lcom/google/android/a/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/a/c/a/i$a;->a(Lcom/google/android/a/c/a/h;I)Lcom/google/android/a/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/c/a/h$a;->e:Lcom/google/android/a/c/a/i$a;

    invoke-virtual {v0}, Lcom/google/android/a/c/a/i$a;->c()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/android/a/c/a/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/google/android/a/c/b;
    .locals 0

    return-object p0
.end method
