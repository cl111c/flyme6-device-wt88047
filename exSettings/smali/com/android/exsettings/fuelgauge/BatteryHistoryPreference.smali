.class public Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

.field private mDockStats:Landroid/os/BatteryStats;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 94
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    if-nez v3, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    const v3, 0x7f130034

    .line 97
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    .line 99
    .local v0, "chart":Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 102
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v4}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->setDockStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 103
    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    .line 91
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {v0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 108
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 109
    .local v1, "index":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 110
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string/jumbo v3, "tmp_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "stats"

    const-string/jumbo v3, "tmp_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string/jumbo v3, "tmp_dock_bat_history.bin"

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->storeDockStatsHistoryInFile(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "dock_stats"

    const-string/jumbo v3, "tmp_dock_bat_history.bin"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    const-string/jumbo v1, "broadcast"

    .line 68
    iget-object v3, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/exsettings/SettingsActivity;

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 71
    .local v0, "sa":Lcom/android/exsettings/SettingsActivity;
    const-class v1, Lcom/android/exsettings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    const v3, 0x7f0c0b50

    const/4 v6, 0x0

    move-object v5, v4

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 55
    .end local v0    # "sa":Lcom/android/exsettings/SettingsActivity;
    :cond_2
    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    const v1, 0x7f040018

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/exsettings/fuelgauge/BatteryHistoryChart;

    .line 79
    iput-object p1, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getDockStats()Landroid/os/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mDockStats:Landroid/os/BatteryStats;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->getLayoutResource()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 76
    return-void
.end method
