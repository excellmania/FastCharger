.class public final Lcom/google/android/gms/c/pj;
.super Lcom/google/android/gms/common/internal/safeparcel/a;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/c/pj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Lcom/google/android/gms/c/rk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final D:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Z

.field public final G:Lcom/google/android/gms/c/pl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final H:Z

.field public I:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Z

.field public final L:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final M:Lcom/google/android/gms/c/rn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final N:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final O:Z

.field private P:Lcom/google/android/gms/c/pg;

.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J

.field public final h:Z

.field public final i:J

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:J

.field public final l:I

.field public final m:Ljava/lang/String;

.field public final n:J

.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public x:Lcom/google/android/gms/c/pr;

.field public y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/c/pk;

    invoke-direct {v0}, Lcom/google/android/gms/c/pk;-><init>()V

    sput-object v0, Lcom/google/android/gms/c/pj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 47

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v1, p0

    move/from16 v6, p1

    invoke-direct/range {v1 .. v46}, Lcom/google/android/gms/c/pj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/c/pr;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 48

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v13, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x1

    move-object/from16 v1, p0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v1 .. v46}, Lcom/google/android/gms/c/pj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/c/pr;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/c/pr;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/google/android/gms/c/pr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/c/rk;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/c/pl;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/rn;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/c/pj;->a:I

    iput-object p2, p0, Lcom/google/android/gms/c/pj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    if-eqz p4, :cond_1

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/c/pj;->d:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/c/pj;->e:I

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/c/pj;->f:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/c/pj;->g:J

    iput-boolean p9, p0, Lcom/google/android/gms/c/pj;->h:Z

    iput-wide p10, p0, Lcom/google/android/gms/c/pj;->i:J

    if-eqz p12, :cond_3

    invoke-static/range {p12 .. p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/c/pj;->j:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/c/pj;->k:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/c/pj;->l:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->m:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/c/pj;->n:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->o:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->p:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->q:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->r:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->s:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->t:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->u:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->v:Z

    move/from16 v0, p45

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->O:Z

    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->w:Z

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->x:Lcom/google/android/gms/c/pr;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->y:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/pj;->x:Lcom/google/android/gms/c/pr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/c/pj;->x:Lcom/google/android/gms/c/pr;

    sget-object v3, Lcom/google/android/gms/c/pu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/c/pr;->a(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/c/pu;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/c/pu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/c/pu;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    :cond_0
    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->A:Z

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->B:Z

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->C:Lcom/google/android/gms/c/rk;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->D:Ljava/util/List;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->E:Ljava/util/List;

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->F:Z

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->G:Lcom/google/android/gms/c/pl;

    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->H:Z

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->I:Ljava/lang/String;

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->J:Ljava/util/List;

    move/from16 v0, p41

    iput-boolean v0, p0, Lcom/google/android/gms/c/pj;->K:Z

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->L:Ljava/lang/String;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->M:Lcom/google/android/gms/c/rn;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->N:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/c/pg;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/pg;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/c/rk;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/c/pl;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/rn;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x12

    const/4 v8, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move-object/from16 v25, p19

    move/from16 v26, p20

    move/from16 v27, p21

    move/from16 v28, p22

    move/from16 v29, p23

    move/from16 v30, p24

    move-object/from16 v33, p25

    move/from16 v34, p26

    move/from16 v35, p27

    move-object/from16 v36, p28

    move-object/from16 v37, p29

    move-object/from16 v38, p30

    move/from16 v39, p31

    move-object/from16 v40, p32

    move/from16 v41, p33

    move-object/from16 v42, p34

    move-object/from16 v43, p35

    move/from16 v44, p36

    move-object/from16 v45, p37

    move-object/from16 v46, p38

    move-object/from16 v47, p39

    move/from16 v48, p40

    invoke-direct/range {v3 .. v48}, Lcom/google/android/gms/c/pj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/c/pr;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/c/pj;->P:Lcom/google/android/gms/c/pg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/c/pg;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/pg;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/google/android/gms/c/rk;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/android/gms/c/pl;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/rn;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x12

    const/4 v8, -0x2

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-object/from16 v15, p11

    move-wide/from16 v16, p12

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-wide/from16 v20, p16

    move-object/from16 v22, p18

    move/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move/from16 v28, p24

    move/from16 v29, p25

    move/from16 v30, p26

    move-object/from16 v33, p27

    move/from16 v34, p28

    move/from16 v35, p29

    move-object/from16 v36, p30

    move-object/from16 v37, p31

    move-object/from16 v38, p32

    move/from16 v39, p33

    move-object/from16 v40, p34

    move/from16 v41, p35

    move-object/from16 v42, p36

    move-object/from16 v43, p37

    move/from16 v44, p38

    move-object/from16 v45, p39

    move-object/from16 v46, p40

    move-object/from16 v47, p41

    move/from16 v48, p42

    invoke-direct/range {v3 .. v48}, Lcom/google/android/gms/c/pj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLcom/google/android/gms/c/pr;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/gms/c/rk;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/c/pl;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/c/rn;Ljava/lang/String;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/c/pj;->P:Lcom/google/android/gms/c/pg;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/pj;->P:Lcom/google/android/gms/c/pg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pj;->P:Lcom/google/android/gms/c/pg;

    iget v0, v0, Lcom/google/android/gms/c/pg;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/pr;

    new-instance v1, Lcom/google/android/gms/c/pu;

    iget-object v2, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/c/pu;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/c/pr;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->x:Lcom/google/android/gms/c/pr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/c/pj;->c:Ljava/lang/String;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/c/pk;->a(Lcom/google/android/gms/c/pj;Landroid/os/Parcel;I)V

    return-void
.end method
