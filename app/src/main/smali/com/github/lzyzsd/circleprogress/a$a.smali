.class public final Lcom/github/lzyzsd/circleprogress/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/lzyzsd/circleprogress/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final ArcProgress:[I

.field public static final ArcProgress_arc_angle:I = 0x1

.field public static final ArcProgress_arc_bottom_text:I = 0xb

.field public static final ArcProgress_arc_bottom_text_size:I = 0xc

.field public static final ArcProgress_arc_finished_color:I = 0x5

.field public static final ArcProgress_arc_max:I = 0x3

.field public static final ArcProgress_arc_progress:I = 0x0

.field public static final ArcProgress_arc_stroke_width:I = 0x2

.field public static final ArcProgress_arc_suffix_text:I = 0x8

.field public static final ArcProgress_arc_suffix_text_padding:I = 0xa

.field public static final ArcProgress_arc_suffix_text_size:I = 0x9

.field public static final ArcProgress_arc_text_color:I = 0x7

.field public static final ArcProgress_arc_text_size:I = 0x6

.field public static final ArcProgress_arc_unfinished_color:I = 0x4

.field public static final CircleProgress:[I

.field public static final CircleProgress_circle_finished_color:I = 0x3

.field public static final CircleProgress_circle_max:I = 0x1

.field public static final CircleProgress_circle_prefix_text:I = 0x6

.field public static final CircleProgress_circle_progress:I = 0x0

.field public static final CircleProgress_circle_suffix_text:I = 0x7

.field public static final CircleProgress_circle_text_color:I = 0x5

.field public static final CircleProgress_circle_text_size:I = 0x4

.field public static final CircleProgress_circle_unfinished_color:I = 0x2

.field public static final DonutProgress:[I

.field public static final DonutProgress_donut_background_color:I = 0xa

.field public static final DonutProgress_donut_finished_color:I = 0x3

.field public static final DonutProgress_donut_finished_stroke_width:I = 0x4

.field public static final DonutProgress_donut_inner_bottom_text:I = 0xb

.field public static final DonutProgress_donut_inner_bottom_text_color:I = 0xd

.field public static final DonutProgress_donut_inner_bottom_text_size:I = 0xc

.field public static final DonutProgress_donut_max:I = 0x1

.field public static final DonutProgress_donut_prefix_text:I = 0x8

.field public static final DonutProgress_donut_progress:I = 0x0

.field public static final DonutProgress_donut_suffix_text:I = 0x9

.field public static final DonutProgress_donut_text_color:I = 0x7

.field public static final DonutProgress_donut_text_size:I = 0x6

.field public static final DonutProgress_donut_unfinished_color:I = 0x2

.field public static final DonutProgress_donut_unfinished_stroke_width:I = 0x5

.field public static final Themes:[I

.field public static final Themes_arcProgressStyle:I = 0x2

.field public static final Themes_circleProgressStyle:I = 0x0

.field public static final Themes_donutProgressStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xe

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/lzyzsd/circleprogress/a$a;->ArcProgress:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/github/lzyzsd/circleprogress/a$a;->CircleProgress:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/github/lzyzsd/circleprogress/a$a;->DonutProgress:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/github/lzyzsd/circleprogress/a$a;->Themes:[I

    return-void

    :array_0
    .array-data 4
        0x7f0100a4
        0x7f0100a5
        0x7f0100a6
        0x7f0100a7
        0x7f0100a8
        0x7f0100a9
        0x7f0100aa
        0x7f0100ab
        0x7f0100ac
        0x7f0100ad
        0x7f0100ae
        0x7f0100af
        0x7f0100b0
        0x7f0100b1
    .end array-data

    :array_1
    .array-data 4
        0x7f0100c1
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
        0x7f0100c6
        0x7f0100c7
        0x7f0100c8
    .end array-data

    :array_2
    .array-data 4
        0x7f0100e8
        0x7f0100e9
        0x7f0100ea
        0x7f0100eb
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
        0x7f0100ef
        0x7f0100f0
        0x7f0100f1
        0x7f0100f2
        0x7f0100f3
        0x7f0100f4
        0x7f0100f5
    .end array-data

    :array_3
    .array-data 4
        0x7f01015b
        0x7f01015c
        0x7f01015d
    .end array-data
.end method
