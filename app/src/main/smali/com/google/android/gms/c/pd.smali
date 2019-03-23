.class public final Lcom/google/android/gms/c/pd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/c/pa;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/c/pd$b;,
        Lcom/google/android/gms/c/pd$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)Lcom/google/android/gms/c/sl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tc;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")",
            "Lcom/google/android/gms/c/sl;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/c/pd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/c/pd$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/c/pd;->a(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;Lcom/google/android/gms/c/pd$b;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;Lcom/google/android/gms/c/pd$b;)Lcom/google/android/gms/c/sl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tc;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            "Lcom/google/android/gms/c/pd$b;",
            ")",
            "Lcom/google/android/gms/c/sl;"
        }
    .end annotation

    invoke-interface {p4, p1}, Lcom/google/android/gms/c/pd$b;->a(Lcom/google/android/gms/c/tc;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/c/pd;->a(Landroid/content/Context;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/c/pd;->b(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)Lcom/google/android/gms/c/sl;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)Lcom/google/android/gms/c/sl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")",
            "Lcom/google/android/gms/c/sl;"
        }
    .end annotation

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/c/pe$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/c/pe$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/c/pe;->e()Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)Lcom/google/android/gms/c/sl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/c/tc;",
            "Lcom/google/android/gms/c/tk",
            "<",
            "Lcom/google/android/gms/c/pg;",
            ">;",
            "Lcom/google/android/gms/c/pd$a;",
            ")",
            "Lcom/google/android/gms/c/sl;"
        }
    .end annotation

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/c/hf;->a()Lcom/google/android/gms/c/sy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/sy;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/c/sf;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/c/pe$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/c/pe$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/c/tc;Lcom/google/android/gms/c/tk;Lcom/google/android/gms/c/pd$a;)V

    goto :goto_0
.end method
