.class Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 586
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 585
    return-void

    .line 588
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/exsettings/fuelgauge/BatteryEntry;

    .line 590
    .local v1, "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    .line 591
    iget-object v6, v1, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 590
    invoke-virtual {v5, v6}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;

    .line 592
    .local v2, "pgp":Lcom/android/exsettings/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 593
    iget-object v5, v1, Lcom/android/exsettings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 594
    .local v4, "userId":I
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 595
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    iget-object v5, v5, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Lcom/android/exsettings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object v5, v1, Lcom/android/exsettings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/exsettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    .end local v1    # "entry":Lcom/android/exsettings/fuelgauge/BatteryEntry;
    .end local v2    # "pgp":Lcom/android/exsettings/fuelgauge/PowerGaugePreference;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/exsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/exsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Lcom/android/exsettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 601
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
