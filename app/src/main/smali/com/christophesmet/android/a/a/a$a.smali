.class public final Lcom/christophesmet/android/a/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/christophesmet/android/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final MaskableLayout:[I

.field public static final MaskableLayout_mask:I = 0x0

.field public static final MaskableLayout_porterduffxfermode:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/christophesmet/android/a/a/a$a;->MaskableLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01010b
        0x7f01010c
    .end array-data
.end method
