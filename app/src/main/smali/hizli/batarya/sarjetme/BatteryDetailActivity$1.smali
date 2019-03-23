.class Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhizli/batarya/sarjetme/app/BatteryDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;


# direct methods
.method constructor <init>(Lhizli/batarya/sarjetme/app/BatteryDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0xb0

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temperature"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voltage"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "technology"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v7

    :cond_0
    const-string v0, "health"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    new-instance v1, Lhizli/batarya/sarjetme/app/a;

    iget-object v2, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v3, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v3, v3, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->e:[Ljava/lang/String;

    iget-object v4, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v4, v4, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    iget-object v5, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v5, v5, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->g:[Ljava/lang/Integer;

    invoke-direct {v1, v2, v3, v4, v5}, Lhizli/batarya/sarjetme/app/a;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Integer;)V

    iput-object v1, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->c:Lhizli/batarya/sarjetme/app/a;

    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v1, v1, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->c:Lhizli/batarya/sarjetme/app/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "BEL\u0130RS\u0130Z"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "\u0130Y\u0130"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "\u00c7OK ISINMI\u015e"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "\u00d6L\u00dc"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "Y\u00dcKSEK VOLT"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "BEL\u0130RLENEMEYEN HATA"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity$1;->a:Lhizli/batarya/sarjetme/app/BatteryDetailActivity;

    iget-object v0, v0, Lhizli/batarya/sarjetme/app/BatteryDetailActivity;->f:[Ljava/lang/String;

    const-string v1, "SO\u011eUK"

    aput-object v1, v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
