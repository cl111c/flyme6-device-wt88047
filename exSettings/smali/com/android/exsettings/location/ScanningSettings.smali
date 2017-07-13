.class public Lcom/android/exsettings/location/ScanningSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ScanningSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 48
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 51
    :cond_0
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/android/exsettings/location/ScanningSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/location/ScanningSettings;->initPreferences()V

    .line 54
    return-object v0
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    const-string/jumbo v2, "wifi_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 60
    .local v1, "wifiScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 61
    const-string/jumbo v5, "wifi_scan_always_enabled"

    .line 60
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 63
    const-string/jumbo v2, "bluetooth_always_scanning"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/location/ScanningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 64
    .local v0, "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 65
    const-string/jumbo v5, "ble_scan_always_enabled"

    .line 64
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    return-void

    .end local v0    # "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_0
    move v2, v4

    .line 60
    goto :goto_0

    .restart local v0    # "bleScanAlwaysAvailable":Landroid/preference/SwitchPreference;
    :cond_1
    move v3, v4

    .line 64
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x83

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v3, "wifi_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 73
    const-string/jumbo v4, "wifi_scan_always_enabled"

    .line 74
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 72
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :goto_0
    return v2

    .line 75
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    const-string/jumbo v3, "bluetooth_always_scanning"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/exsettings/location/ScanningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 77
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 78
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 76
    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 80
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 43
    invoke-direct {p0}, Lcom/android/exsettings/location/ScanningSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 41
    return-void
.end method
