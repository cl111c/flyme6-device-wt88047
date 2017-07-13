.class public Lcom/android/exsettings/nx/InputMethodsSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "InputMethodsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/nx/InputMethodsSettings$MyAlertDialogFragment;
    }
.end annotation


# instance fields
.field private mDisableFullscreenKeyboard:Landroid/preference/SwitchPreference;

.field private mKeyboardRotationTimeout:Landroid/preference/ListPreference;

.field private mKeyboardRotationToggle:Landroid/preference/SwitchPreference;

.field private mShowEnterKey:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private showDialogInner(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 140
    invoke-static {p1}, Lcom/android/exsettings/nx/InputMethodsSettings$MyAlertDialogFragment;->newInstance(I)Lcom/android/exsettings/nx/InputMethodsSettings$MyAlertDialogFragment;

    move-result-object v0

    .line 141
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 106
    const v0, -0x7ffffffe

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->addPreferencesFromResource(I)V

    .line 67
    const-string/jumbo v0, "disable_fullscreen_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 66
    iput-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mDisableFullscreenKeyboard:Landroid/preference/SwitchPreference;

    .line 68
    iget-object v3, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mDisableFullscreenKeyboard:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    const-string/jumbo v4, "disable_fullscreen_keyboard"

    .line 68
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mDisableFullscreenKeyboard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    const-string/jumbo v0, "keyboard_rotation_toggle"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationToggle:Landroid/preference/SwitchPreference;

    .line 73
    iget-object v3, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    const-string/jumbo v4, "keyboard_rotation_timeout"

    .line 73
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string/jumbo v0, "keyboard_rotation_timeout"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    .line 78
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "keyboard_rotation_timeout"

    .line 81
    const/16 v4, 0x1388

    .line 79
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->updateRotationTimeout(I)V

    .line 83
    const-string/jumbo v0, "show_enter_key"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/nx/InputMethodsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mShowEnterKey:Landroid/preference/SwitchPreference;

    .line 84
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mShowEnterKey:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 85
    const-string/jumbo v4, "formal_text_input"

    .line 84
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mShowEnterKey:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 84
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    iget-object v2, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mDisableFullscreenKeyboard:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 112
    const-string/jumbo v6, "disable_fullscreen_keyboard"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 111
    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    return v3

    :cond_0
    move v2, v4

    .line 112
    goto :goto_0

    .line 114
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationToggle:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 116
    const-string/jumbo v6, "accelerometer_rotation"

    const/4 v7, -0x2

    .line 115
    invoke-static {v2, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    .line 117
    .local v0, "isAutoRotate":Z
    :goto_1
    if-eqz v0, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-direct {p0, v4}, Lcom/android/exsettings/nx/InputMethodsSettings;->showDialogInner(I)V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 121
    const-string/jumbo v6, "keyboard_rotation_timeout"

    .line 122
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    .line 120
    :cond_3
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-virtual {p0, v5}, Lcom/android/exsettings/nx/InputMethodsSettings;->updateRotationTimeout(I)V

    .line 124
    return v3

    .line 115
    .end local v0    # "isAutoRotate":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isAutoRotate":Z
    goto :goto_1

    .line 125
    .end local v0    # "isAutoRotate":Z
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mShowEnterKey:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    const-string/jumbo v5, "formal_text_input"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v3

    .line 126
    :cond_6
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    return v3

    .line 129
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v2, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 130
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "timeout":I
    invoke-virtual {p0}, Lcom/android/exsettings/nx/InputMethodsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    const-string/jumbo v4, "keyboard_rotation_timeout"

    .line 131
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/exsettings/nx/InputMethodsSettings;->updateRotationTimeout(I)V

    .line 134
    return v3

    .line 136
    .end local v1    # "timeout":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_8
    return v4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 100
    return-void
.end method

.method public updateRotationTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v3, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    const/16 p1, 0x1388

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    .line 95
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/exsettings/nx/InputMethodsSettings;->mKeyboardRotationTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    .line 95
    const v2, 0x7f0c03f5

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/nx/InputMethodsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
