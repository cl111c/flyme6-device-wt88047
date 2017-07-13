.class public Lcom/android/exsettings/ApplicationSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ApplicationSettings.java"


# instance fields
.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "default_install_location"

    .line 130
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "selectedLocation":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    const-string/jumbo v1, "device"

    return-object v1

    .line 134
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 135
    const-string/jumbo v1, "sdcard"

    return-object v1

    .line 136
    :cond_1
    if-nez v0, :cond_2

    .line 137
    const-string/jumbo v1, "auto"

    return-object v1

    .line 140
    :cond_2
    const-string/jumbo v1, "auto"

    return-object v1
.end method

.method private isAdvancedSettingsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    const-string/jumbo v2, "advanced_settings"

    .line 114
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 122
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "advanced_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "value":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "value":I
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    return v0
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string/jumbo v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "default_install_location"

    const/4 v2, 0x1

    .line 87
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "default_install_location"

    const/4 v2, 0x2

    .line 90
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 92
    :cond_1
    const-string/jumbo v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "default_install_location"

    .line 93
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "default_install_location"

    .line 97
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string/jumbo v1, "toggle_advanced_settings"

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    .line 59
    iget-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/exsettings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    const-string/jumbo v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "set_install_location"

    .line 69
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, "userSetInstLocation":Z
    :goto_0
    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 52
    :goto_1
    return-void

    .line 69
    .end local v0    # "userSetInstLocation":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "userSetInstLocation":Z
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/exsettings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/exsettings/ApplicationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/ApplicationSettings$1;-><init>(Lcom/android/exsettings/ApplicationSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/exsettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 107
    .local v0, "value":Z
    invoke-direct {p0, v0}, Lcom/android/exsettings/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    .line 110
    .end local v0    # "value":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method
