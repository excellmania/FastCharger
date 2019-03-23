.class public final Lcom/google/android/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/a/h/x;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3fc

    :goto_0
    sput v0, Lcom/google/android/a/b;->a:I

    return-void

    :cond_0
    const/16 v0, 0x18fc

    goto :goto_0
.end method
