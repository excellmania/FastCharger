.class public final Lcom/google/android/gms/c/rv$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/c/rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/c/pg;

.field public final b:Lcom/google/android/gms/c/pj;

.field public final c:Lcom/google/android/gms/c/mf;

.field public final d:Lcom/google/android/gms/c/ha;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:I

.field public final f:J

.field public final g:J

.field public final h:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/pg;Lcom/google/android/gms/c/pj;Lcom/google/android/gms/c/mf;Lcom/google/android/gms/c/ha;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/c/rv$a;->a:Lcom/google/android/gms/c/pg;

    iput-object p2, p0, Lcom/google/android/gms/c/rv$a;->b:Lcom/google/android/gms/c/pj;

    iput-object p3, p0, Lcom/google/android/gms/c/rv$a;->c:Lcom/google/android/gms/c/mf;

    iput-object p4, p0, Lcom/google/android/gms/c/rv$a;->d:Lcom/google/android/gms/c/ha;

    iput p5, p0, Lcom/google/android/gms/c/rv$a;->e:I

    iput-wide p6, p0, Lcom/google/android/gms/c/rv$a;->f:J

    iput-wide p8, p0, Lcom/google/android/gms/c/rv$a;->g:J

    iput-object p10, p0, Lcom/google/android/gms/c/rv$a;->h:Lorg/json/JSONObject;

    return-void
.end method
