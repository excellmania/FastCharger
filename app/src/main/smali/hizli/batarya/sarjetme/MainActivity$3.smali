.class Lhizli/batarya/sarjetme/app/MainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhizli/batarya/sarjetme/app/MainActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/MainActivity;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lhizli/batarya/sarjetme/app/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lhizli/batarya/sarjetme/app/MainActivity;->w:Landroid/media/AudioManager;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/MainActivity;->w:Landroid/media/AudioManager;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/MainActivity;->D:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lhizli/batarya/sarjetme/app/MainActivity;->a(Lhizli/batarya/sarjetme/app/MainActivity;I)V

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/MainActivity$3;->a:Lhizli/batarya/sarjetme/app/MainActivity;

    invoke-virtual {v0}, Lhizli/batarya/sarjetme/app/MainActivity;->finish()V

    return-void
.end method
