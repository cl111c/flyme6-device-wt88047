.class public Lcom/android/exsettings/notificationlight/BatteryLightSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field private mLightEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

.field private mLowColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

.field private mPulseEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 106
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_0

    .line 109
    const-string/jumbo v5, "battery_light_low_color"

    .line 110
    const v6, 0x10e0058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 109
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, "lowColor":I
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v1, v7, v7, v7}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 114
    .end local v1    # "lowColor":I
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_1

    .line 115
    const-string/jumbo v5, "battery_light_medium_color"

    .line 116
    const v6, 0x10e0059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 115
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, "mediumColor":I
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v2, v7, v7, v7}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 120
    .end local v2    # "mediumColor":I
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    if-eqz v5, :cond_2

    .line 121
    const-string/jumbo v5, "battery_light_full_color"

    .line 122
    const v6, 0x10e005a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 121
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "fullColor":I
    iget-object v5, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v5, v0, v7, v7, v7}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 104
    .end local v0    # "fullColor":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 59
    const v0, -0x7ffffffa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v2, 0x7f080013

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 69
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v2, "general_section"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 71
    .local v0, "mGeneralPrefs":Landroid/preference/PreferenceGroup;
    const-string/jumbo v2, "battery_light_enabled"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 72
    const-string/jumbo v2, "battery_light_pulse"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    iput-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    .line 74
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    .line 84
    const-string/jumbo v2, "low_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 85
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    const-string/jumbo v2, "medium_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 88
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    const-string/jumbo v2, "full_color"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    iput-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 91
    iget-object v2, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string/jumbo v2, "colors_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->resetColors()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x1

    const v1, 0x7f0c00a6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 148
    const v1, 0x7f0200ad

    .line 147
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    const/16 v1, 0x72

    .line 147
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    const/4 v1, 0x6

    .line 147
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->resetToDefaults()V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 190
    check-cast v0, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;

    .line 191
    .local v0, "lightPref":Lcom/android/exsettings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/exsettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 99
    return-void
.end method

.method protected resetColors()V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 165
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "battery_light_low_color"

    .line 169
    const v3, 0x10e0058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 168
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    const-string/jumbo v2, "battery_light_medium_color"

    .line 171
    const v3, 0x10e0059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 170
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const-string/jumbo v2, "battery_light_full_color"

    .line 173
    const v3, 0x10e005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 172
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    invoke-direct {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 163
    return-void
.end method

.method protected resetToDefaults()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f10000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 180
    .local v0, "batteryLightEnabled":Z
    const v3, 0x7f10000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 182
    .local v1, "batteryLightPulseEnabled":Z
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mLightEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setChecked(Z)V

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->mPulseEnabledPref:Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/android/exsettings/cyanogenmod/CMSystemSettingSwitchPreference;->setChecked(Z)V

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->resetColors()V

    .line 177
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/exsettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const-string/jumbo v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string/jumbo v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    const-string/jumbo v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 140
    :cond_2
    const-string/jumbo v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string/jumbo v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
