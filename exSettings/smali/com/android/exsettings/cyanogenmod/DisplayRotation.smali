.class public Lcom/android/exsettings/cyanogenmod/DisplayRotation;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/cyanogenmod/DisplayRotation$1;
    }
.end annotation


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/cyanogenmod/DisplayRotation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    new-instance v0, Lcom/android/exsettings/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/exsettings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 35
    return-void
.end method

.method private getRotationBitmask()I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    or-int/lit8 v0, v0, 0x2

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    or-int/lit8 v0, v0, 0x4

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    or-int/lit8 v0, v0, 0x8

    .line 155
    :cond_3
    return v0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationSwitch()V

    .line 133
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const v0, -0x7ffffff7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v5, 0x7f080027

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 71
    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v5, "accelerometer"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 72
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 74
    const-string/jumbo v5, "display_rotation_0"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string/jumbo v5, "display_rotation_90"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 76
    const-string/jumbo v5, "display_rotation_180"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 77
    const-string/jumbo v5, "display_rotation_270"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 80
    const-string/jumbo v8, "accelerometer_rotation_angles"

    .line 81
    const/16 v9, 0xb

    .line 79
    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 83
    .local v3, "mode":I
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 85
    iget-object v8, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v8, v3, 0x8

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    const/4 v1, 0x0

    .line 92
    .local v1, "hasRotationLock":Z
    if-eqz v1, :cond_0

    .line 94
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 95
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 102
    :cond_0
    const-string/jumbo v5, "lockscreen_rotation"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 103
    .local v2, "lockScreenRotation":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 104
    const v6, 0x112004e

    .line 103
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 106
    .local v0, "canRotateLockscreen":Z
    if-eqz v2, :cond_1

    if-eqz v0, :cond_6

    .line 64
    :cond_1
    :goto_4
    return-void

    .end local v0    # "canRotateLockscreen":Z
    .end local v1    # "hasRotationLock":Z
    .end local v2    # "lockScreenRotation":Landroid/preference/SwitchPreference;
    :cond_2
    move v5, v7

    .line 83
    goto :goto_0

    :cond_3
    move v5, v7

    .line 84
    goto :goto_1

    :cond_4
    move v5, v7

    .line 85
    goto :goto_2

    :cond_5
    move v6, v7

    .line 86
    goto :goto_3

    .line 107
    .restart local v0    # "canRotateLockscreen":Z
    .restart local v1    # "hasRotationLock":Z
    .restart local v2    # "lockScreenRotation":Landroid/preference/SwitchPreference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 168
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getRotationBitmask()I

    move-result v0

    .line 169
    .local v0, "mode":I
    if-nez v0, :cond_4

    .line 170
    or-int/lit8 v0, v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    const-string/jumbo v3, "accelerometer_rotation_angles"

    .line 173
    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    return v2

    .line 166
    .end local v0    # "mode":I
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->updateState()V

    .line 121
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 122
    const/4 v3, 0x1

    .line 121
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    return-void
.end method
