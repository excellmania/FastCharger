.class public final Lcom/google/android/gms/c/pg$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/pg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:F

.field public final C:Z

.field public final D:I

.field public final E:I

.field public final F:Z

.field public final G:Z

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Z

.field public final K:I

.field public final L:Landroid/os/Bundle;

.field public final M:Ljava/lang/String;

.field public final a:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/c/gv;

.field public final c:Lcom/google/android/gms/c/ha;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/pm/ApplicationInfo;

.field public final f:Landroid/content/pm/PackageInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Landroid/os/Bundle;

.field public final j:Lcom/google/android/gms/c/tc;

.field public final k:I

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/os/Bundle;

.field public final o:Z

.field public final p:Landroid/os/Messenger;

.field public final q:I

.field public final r:I

.field public final s:F

.field public final t:Ljava/lang/String;

.field public final u:J

.field public final v:Ljava/lang/String;

.field public final w:Ljava/util/List;
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

.field public final x:Ljava/lang/String;

.field public final y:Lcom/google/android/gms/c/js;

.field public final z:Lcom/google/android/gms/c/pn;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/c/gv;Lcom/google/android/gms/c/ha;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/c/tc;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/c/js;Lcom/google/android/gms/c/pn;Ljava/lang/String;FZIIZZLjava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/content/pm/PackageInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/c/gv;",
            "Lcom/google/android/gms/c/ha;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/tc;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/c/js;",
            "Lcom/google/android/gms/c/pn;",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/pg$a;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/c/pg$a;->b:Lcom/google/android/gms/c/gv;

    iput-object p3, p0, Lcom/google/android/gms/c/pg$a;->c:Lcom/google/android/gms/c/ha;

    iput-object p4, p0, Lcom/google/android/gms/c/pg$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/c/pg$a;->e:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/c/pg$a;->f:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/c/pg$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/c/pg$a;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/c/pg$a;->j:Lcom/google/android/gms/c/tc;

    iput-object p10, p0, Lcom/google/android/gms/c/pg$a;->i:Landroid/os/Bundle;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/c/pg$a;->o:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->p:Landroid/os/Messenger;

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->q:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->r:I

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->s:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/c/pg$a;->k:I

    iput-object p11, p0, Lcom/google/android/gms/c/pg$a;->l:Ljava/util/List;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->m:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->n:Landroid/os/Bundle;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->t:Ljava/lang/String;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/c/pg$a;->u:J

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->v:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->w:Ljava/util/List;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->x:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->y:Lcom/google/android/gms/c/js;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->z:Lcom/google/android/gms/c/pn;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->A:Ljava/lang/String;

    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->B:F

    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/google/android/gms/c/pg$a;->C:Z

    move/from16 v0, p30

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->D:I

    move/from16 v0, p31

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->E:I

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/c/pg$a;->F:Z

    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/google/android/gms/c/pg$a;->G:Z

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->H:Ljava/lang/String;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->I:Ljava/lang/String;

    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/google/android/gms/c/pg$a;->J:Z

    move/from16 v0, p37

    iput v0, p0, Lcom/google/android/gms/c/pg$a;->K:I

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->L:Landroid/os/Bundle;

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/c/pg$a;->M:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/c/pg$a;->k:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/c/pg$a;->l:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/c/pg$a;->m:Ljava/util/List;

    goto :goto_0
.end method
