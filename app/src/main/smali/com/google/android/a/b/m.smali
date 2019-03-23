.class public abstract Lcom/google/android/a/b/m;
.super Lcom/google/android/a/b/c;


# instance fields
.field public final h:J

.field public final i:J

.field public final j:I


# direct methods
.method public constructor <init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;ILcom/google/android/a/b/i;JJII)V
    .locals 11

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lcom/google/android/a/b/c;-><init>(Lcom/google/android/a/g/f;Lcom/google/android/a/g/h;IILcom/google/android/a/b/i;I)V

    invoke-static {p4}, Lcom/google/android/a/h/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/a/b/m;->h:J

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/a/b/m;->i:J

    move/from16 v0, p9

    iput v0, p0, Lcom/google/android/a/b/m;->j:I

    return-void
.end method


# virtual methods
.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/a/b/m;->j:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
