.class public Lcom/google/android/gms/c/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/fq;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/fm;

.field private b:Lcom/google/android/gms/c/lw$c;

.field private c:Z

.field private final d:Lcom/google/android/gms/c/kr;

.field private final e:Lcom/google/android/gms/c/kr;

.field private final f:Lcom/google/android/gms/c/kr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/fm;Lcom/google/android/gms/c/lw;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/fp$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fp$5;-><init>(Lcom/google/android/gms/c/fp;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fp;->d:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/fp$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fp$6;-><init>(Lcom/google/android/gms/c/fp;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fp;->e:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/fp$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fp$7;-><init>(Lcom/google/android/gms/c/fp;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fp;->f:Lcom/google/android/gms/c/kr;

    iput-object p1, p0, Lcom/google/android/gms/c/fp;->a:Lcom/google/android/gms/c/fm;

    invoke-virtual {p2}, Lcom/google/android/gms/c/lw;->a()Lcom/google/android/gms/c/lw$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/c/fp;->b:Lcom/google/android/gms/c/lw$c;

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->b:Lcom/google/android/gms/c/lw$c;

    new-instance v1, Lcom/google/android/gms/c/fp$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/fp$1;-><init>(Lcom/google/android/gms/c/fp;)V

    new-instance v2, Lcom/google/android/gms/c/fp$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/c/fp$2;-><init>(Lcom/google/android/gms/c/fp;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    const-string v1, "Core JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->a:Lcom/google/android/gms/c/fm;

    invoke-virtual {v0}, Lcom/google/android/gms/c/fm;->r()Lcom/google/android/gms/c/fk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/c/fk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/c/fp;)Lcom/google/android/gms/c/fm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->a:Lcom/google/android/gms/c/fm;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/c/fp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/c/fp;->c:Z

    return p1
.end method


# virtual methods
.method a(Lcom/google/android/gms/c/lx;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->d:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->e:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->f:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->b:Lcom/google/android/gms/c/lw$c;

    new-instance v1, Lcom/google/android/gms/c/fp$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/c/fp$3;-><init>(Lcom/google/android/gms/c/fp;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/google/android/gms/c/tk$b;

    invoke-direct {v2}, Lcom/google/android/gms/c/tk$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/c/fp;->c:Z

    return v0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->b:Lcom/google/android/gms/c/lw$c;

    new-instance v1, Lcom/google/android/gms/c/fp$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/c/fp$4;-><init>(Lcom/google/android/gms/c/fp;)V

    new-instance v2, Lcom/google/android/gms/c/tk$b;

    invoke-direct {v2}, Lcom/google/android/gms/c/tk$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/lw$c;->a(Lcom/google/android/gms/c/tk$c;Lcom/google/android/gms/c/tk$a;)V

    iget-object v0, p0, Lcom/google/android/gms/c/fp;->b:Lcom/google/android/gms/c/lw$c;

    invoke-virtual {v0}, Lcom/google/android/gms/c/lw$c;->d_()V

    return-void
.end method

.method b(Lcom/google/android/gms/c/lx;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->f:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->e:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/c/fp;->d:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method
