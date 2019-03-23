.class public abstract Lcom/google/android/a/b/b;
.super Lcom/google/android/a/b/m;


# instance fields
.field public final a:Z

.field private k:Lcom/google/android/a/e/c;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJIZI)V
    .locals 15

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/google/android/a/b/m;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJII)V

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/google/android/a/b/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/b/b;->l:I

    return v0
.end method

.method public a(Lcom/google/android/a/e/c;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/a/b/b;->k:Lcom/google/android/a/e/c;

    invoke-virtual {p1}, Lcom/google/android/a/e/c;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/a/b/b;->l:I

    return-void
.end method

.method public abstract b()Lcom/google/android/a/r;
.end method

.method public abstract c()Lcom/google/android/a/d/a;
.end method

.method protected final d()Lcom/google/android/a/e/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/a/b/b;->k:Lcom/google/android/a/e/c;

    return-object v0
.end method
