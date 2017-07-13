.class public Lcom/android/exsettings/cyanogenmod/StatusBarSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/StatusBarSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mQuickPulldown:Landroid/preference/ListPreference;

.field private mStatusBarAmPm:Landroid/preference/ListPreference;

.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

.field private mStatusBarClock:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings$1;-><init>()V

    .line 201
    sput-object v0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableStatusBarBatteryDependents(I)V
    .locals 2
    .param p1, "batteryIconStyle"    # I

    .prologue
    .line 179
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 180
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 178
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePulldownSummary(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f0c02a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 195
    const v2, 0x7f0c029f

    .line 194
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "direction":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const v4, 0x7f0c029e

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    .end local v0    # "direction":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0c02a0

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v6, 0x7f08005e

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 73
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "status_bar_clock"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    .line 74
    const-string/jumbo v6, "status_bar_am_pm"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 75
    const-string/jumbo v6, "status_bar_battery_style"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 77
    const-string/jumbo v6, "status_bar_show_battery_percent"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 76
    iput-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    .line 78
    const-string/jumbo v6, "qs_quick_pulldown"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    .line 81
    const-string/jumbo v6, "status_bar_clock"

    .line 80
    invoke-static {v4, v6, v9}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "clockStyle":I
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 88
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    const v7, 0x7f0c02aa

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 98
    :goto_0
    const-string/jumbo v6, "status_bar_battery_style"

    .line 97
    invoke-static {v4, v6, v8}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "batteryStyle":I
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string/jumbo v6, "status_bar_show_battery_percent"

    .line 103
    invoke-static {v4, v6, v8}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "batteryShowPercent":I
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    invoke-direct {p0, v1}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    .line 108
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    const-string/jumbo v6, "qs_quick_pulldown"

    .line 110
    invoke-static {v4, v6, v9}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "quickPulldown":I
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->updatePulldownSummary(I)V

    .line 114
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    return-void

    .line 91
    .end local v0    # "batteryShowPercent":I
    .end local v1    # "batteryStyle":I
    .end local v3    # "quickPulldown":I
    :cond_0
    const-string/jumbo v6, "status_bar_am_pm"

    const/4 v7, 0x2

    .line 90
    invoke-static {v4, v6, v7}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 92
    .local v5, "statusBarAmPm":I
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 138
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_0

    move-object v7, p2

    .line 139
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, "clockStyle":I
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, "index":I
    const-string/jumbo v7, "status_bar_clock"

    .line 141
    invoke-static {v5, v7, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    return v9

    .line 145
    .end local v2    # "clockStyle":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_1

    move-object v7, p2

    .line 146
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 147
    .local v6, "statusBarAmPm":I
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 149
    .restart local v3    # "index":I
    const-string/jumbo v7, "status_bar_am_pm"

    .line 148
    invoke-static {v5, v7, v6}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    return v9

    .line 152
    .end local v3    # "index":I
    .end local v6    # "statusBarAmPm":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_2

    move-object v7, p2

    .line 153
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    .local v1, "batteryStyle":I
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 156
    .restart local v3    # "index":I
    const-string/jumbo v7, "status_bar_battery_style"

    .line 155
    invoke-static {v5, v7, v1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    .line 159
    return v9

    .line 160
    .end local v1    # "batteryStyle":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_3

    move-object v7, p2

    .line 161
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "batteryShowPercent":I
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 164
    .restart local v3    # "index":I
    const-string/jumbo v7, "status_bar_show_battery_percent"

    .line 163
    invoke-static {v5, v7, v0}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    .line 166
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v3

    .line 165
    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    return v9

    .line 168
    .end local v0    # "batteryShowPercent":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_4

    .line 169
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 171
    .local v4, "quickPulldown":I
    const-string/jumbo v7, "qs_quick_pulldown"

    .line 170
    invoke-static {v5, v7, v4}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    invoke-direct {p0, v4}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->updatePulldownSummary(I)V

    .line 173
    return v9

    .line 175
    .end local v4    # "quickPulldown":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const/4 v7, 0x0

    return v7
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 128
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 130
    const v3, 0x7f0a008e

    .line 129
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method
