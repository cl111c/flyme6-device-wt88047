.class public Lcom/android/exsettings/nx/NetworkTrafficSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NetworkTrafficSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private MASK_DOWN:I

.field private MASK_PERIOD:I

.field private MASK_UNIT:I

.field private MASK_UP:I

.field private mNetTrafficAutohide:Landroid/preference/SwitchPreference;

.field private mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

.field private mNetTrafficPeriod:Landroid/preference/ListPreference;

.field private mNetTrafficState:Landroid/preference/ListPreference;

.field private mNetTrafficUnit:Landroid/preference/ListPreference;

.field private mNetTrafficVal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getBit(II)Z
    .locals 1
    .param p1, "intNumber"    # I
    .param p2, "intMask"    # I

    .prologue
    .line 185
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UP:I

    .line 171
    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_DOWN:I

    .line 172
    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UNIT:I

    .line 173
    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_PERIOD:I

    .line 168
    return-void
.end method

.method private setBit(IIZ)I
    .locals 1
    .param p1, "intNumber"    # I
    .param p2, "intMask"    # I
    .param p3, "blnState"    # Z

    .prologue
    .line 178
    if-eqz p3, :cond_0

    .line 179
    or-int v0, p1, p2

    return v0

    .line 181
    :cond_0
    not-int v0, p2

    and-int/2addr v0, p1

    return v0
.end method

.method private updateNetworkTrafficState(I)V
    .locals 3
    .param p1, "mIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    if-gtz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/nx/SeekBarPreference;->setEnabled(Z)V

    .line 114
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/nx/SeekBarPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v4, 0x7f08003a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 55
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 57
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->loadResources()V

    .line 59
    const-string/jumbo v4, "network_traffic_state"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    .line 60
    const-string/jumbo v4, "network_traffic_unit"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    .line 61
    const-string/jumbo v4, "network_traffic_period"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    .line 64
    const-string/jumbo v4, "network_traffic_autohide"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 63
    iput-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    .line 65
    iget-object v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 66
    const-string/jumbo v8, "network_traffic_autohide"

    .line 65
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string/jumbo v4, "network_traffic_autohide_threshold"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/nx/SeekBarPreference;

    iput-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    .line 71
    const-string/jumbo v4, "network_traffic_autohide_threshold"

    const/16 v7, 0xa

    .line 70
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, "netTrafficAutohideThreshold":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    div-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Lcom/android/exsettings/nx/SeekBarPreference;->setValue(I)V

    .line 73
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/android/exsettings/nx/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_5

    .line 77
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_5

    .line 78
    const-string/jumbo v4, "network_traffic_state"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 79
    iget v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UP:I

    iget v8, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_DOWN:I

    add-int/2addr v7, v8

    and-int v0, v4, v7

    .line 80
    .local v0, "intIndex":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 81
    if-gtz v0, :cond_0

    .line 82
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 83
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 85
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    invoke-virtual {v4, v6}, Lcom/android/exsettings/nx/SeekBarPreference;->setEnabled(Z)V

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    if-ltz v0, :cond_3

    .end local v0    # "intIndex":I
    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 88
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v8, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UNIT:I

    invoke-direct {p0, v7, v8}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getBit(II)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 92
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_PERIOD:I

    and-int/2addr v4, v6

    ushr-int/lit8 v0, v4, 0x10

    .line 96
    .restart local v0    # "intIndex":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 97
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ltz v0, :cond_4

    .end local v0    # "intIndex":I
    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 98
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    :goto_3
    return-void

    .end local v1    # "netTrafficAutohideThreshold":I
    :cond_2
    move v4, v6

    .line 65
    goto/16 :goto_0

    .restart local v0    # "intIndex":I
    .restart local v1    # "netTrafficAutohideThreshold":I
    :cond_3
    move v0, v6

    .line 87
    goto :goto_1

    :cond_4
    move v0, v5

    .line 97
    goto :goto_2

    .line 101
    .end local v0    # "intIndex":I
    :cond_5
    const-string/jumbo v4, "network_traffic_state"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    const-string/jumbo v4, "network_traffic_unit"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    const-string/jumbo v4, "network_traffic_period"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    const-string/jumbo v4, "network_traffic_autohide"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    const-string/jumbo v4, "network_traffic_autohide_threshold"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 129
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 130
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    .local v1, "intState":I
    iget v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UP:I

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UP:I

    invoke-direct {p0, v1, v7}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getBit(II)Z

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->setBit(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 132
    iget v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_DOWN:I

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_DOWN:I

    invoke-direct {p0, v1, v7}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getBit(II)Z

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->setBit(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 133
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 134
    const-string/jumbo v6, "network_traffic_state"

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 133
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "index":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficState:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->updateNetworkTrafficState(I)V

    .line 138
    return v5

    .line 139
    .end local v0    # "index":I
    .end local v1    # "intState":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 140
    iget v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_UNIT:I

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v6, v7, v4}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->setBit(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    const-string/jumbo v6, "network_traffic_state"

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 141
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 144
    .restart local v0    # "index":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficUnit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return v5

    .line 146
    .end local v0    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    move-object v4, p2

    .line 147
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    .restart local v1    # "intState":I
    iget v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->MASK_PERIOD:I

    invoke-direct {p0, v4, v7, v6}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->setBit(IIZ)I

    move-result v4

    shl-int/lit8 v6, v1, 0x10

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 149
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 150
    const-string/jumbo v6, "network_traffic_state"

    iget v7, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficVal:I

    .line 149
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 152
    .restart local v0    # "index":I
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficPeriod:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    return v5

    .line 154
    .end local v0    # "index":I
    .end local v1    # "intState":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohide:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_4

    .line 155
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 156
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 157
    const-string/jumbo v8, "network_traffic_autohide"

    if-eqz v3, :cond_3

    move v4, v5

    .line 156
    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    return v5

    :cond_3
    move v4, v6

    .line 157
    goto :goto_0

    .line 159
    .end local v3    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/nx/NetworkTrafficSettings;->mNetTrafficAutohideThreshold:Lcom/android/exsettings/nx/SeekBarPreference;

    if-ne p1, v4, :cond_5

    .line 160
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 161
    .local v2, "threshold":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/NetworkTrafficSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 162
    const-string/jumbo v6, "network_traffic_autohide_threshold"

    mul-int/lit8 v7, v2, 0x1

    .line 161
    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    return v5

    .line 165
    .end local v2    # "threshold":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 110
    return-void
.end method
