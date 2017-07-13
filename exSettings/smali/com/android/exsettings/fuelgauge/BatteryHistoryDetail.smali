.class public Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mDockStats:Landroid/os/BatteryStats;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "stats"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "histFile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 45
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "dock_stats"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "dockHistFile":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "broadcast"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 41
    return-void

    .line 49
    :cond_0
    iput-object v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v2, 0x7f040018

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f130034

    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    .line 59
    .local v0, "chart":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;
    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 60
    iget-object v2, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mDockStats:Landroid/os/BatteryStats;

    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 61
    return-object v1
.end method
