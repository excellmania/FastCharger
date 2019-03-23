.class public Lcom/google/android/gms/c/fo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/fq;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/c/fm;

.field private final b:Lcom/google/android/gms/c/lx;

.field private final c:Lcom/google/android/gms/c/kr;

.field private final d:Lcom/google/android/gms/c/kr;

.field private final e:Lcom/google/android/gms/c/kr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/fm;Lcom/google/android/gms/c/lx;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/c/fo$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fo$1;-><init>(Lcom/google/android/gms/c/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fo;->c:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/fo$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fo$2;-><init>(Lcom/google/android/gms/c/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fo;->d:Lcom/google/android/gms/c/kr;

    new-instance v0, Lcom/google/android/gms/c/fo$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/fo$3;-><init>(Lcom/google/android/gms/c/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/c/fo;->e:Lcom/google/android/gms/c/kr;

    iput-object p1, p0, Lcom/google/android/gms/c/fo;->a:Lcom/google/android/gms/c/fm;

    iput-object p2, p0, Lcom/google/android/gms/c/fo;->b:Lcom/google/android/gms/c/lx;

    iget-object v0, p0, Lcom/google/android/gms/c/fo;->b:Lcom/google/android/gms/c/lx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/fo;->a(Lcom/google/android/gms/c/lx;)V

    const-string v1, "Custom JS tracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/c/fo;->a:Lcom/google/android/gms/c/fm;

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

.method static synthetic a(Lcom/google/android/gms/c/fo;)Lcom/google/android/gms/c/fm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/fo;->a:Lcom/google/android/gms/c/fm;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/c/lx;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->c:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->d:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->e:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/fo;->b:Lcom/google/android/gms/c/lx;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/c/lx;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/c/fo;->a:Lcom/google/android/gms/c/fm;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/fm;->b(Lcom/google/android/gms/c/fq;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/c/fo;->b:Lcom/google/android/gms/c/lx;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/c/fo;->b(Lcom/google/android/gms/c/lx;)V

    return-void
.end method

.method b(Lcom/google/android/gms/c/lx;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->e:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->d:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/c/fo;->c:Lcom/google/android/gms/c/kr;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/c/lx;->b(Ljava/lang/String;Lcom/google/android/gms/c/kr;)V

    return-void
.end method
