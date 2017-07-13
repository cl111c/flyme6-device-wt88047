.class public Lcom/android/exsettings/applications/ManageAssist;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/exsettings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/applications/ManageAssist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 152
    iget-object v7, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/exsettings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 153
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/exsettings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 155
    .local v0, "appLabel":Ljava/lang/CharSequence;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0f49

    invoke-virtual {p0, v8, v7}, Lcom/android/exsettings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "title":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0c0f4a

    invoke-virtual {p0, v8, v7}, Lcom/android/exsettings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/exsettings/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/exsettings/applications/ManageAssist$2;-><init>(Lcom/android/exsettings/applications/ManageAssist;Ljava/lang/String;)V

    .line 165
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 169
    const v8, 0x7f0c0f4b

    .line 166
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 170
    const v8, 0x7f0c0f4c

    const/4 v9, 0x0

    .line 166
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 172
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 151
    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 146
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 147
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 148
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/exsettings/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/applications/ManageAssist$1;-><init>(Lcom/android/exsettings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageAssist;->updateUi()V

    .line 175
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 119
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/voice/VoiceInputListPreference;->refreshVoiceInputs()V

    .line 121
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/exsettings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    .line 122
    .local v0, "currentAssist":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 123
    .local v1, "hasAssistant":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 131
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :goto_2
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 139
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    :cond_0
    return-void

    .line 122
    .end local v1    # "hasAssistant":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasAssistant":Z
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    iget-object v2, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    invoke-virtual {v2, v0}, Lcom/android/exsettings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xc9

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 56
    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    .line 60
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    const-string/jumbo v4, "assist_structure_enabled"

    .line 60
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    .line 65
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 66
    const-string/jumbo v4, "assist_screenshot_enabled"

    .line 65
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/exsettings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/exsettings/voice/VoiceInputListPreference;

    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageAssist;->updateUi()V

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 65
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v4, p0, Lcom/android/exsettings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    .line 81
    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    invoke-direct {p0}, Lcom/android/exsettings/applications/ManageAssist;->postUpdateUi()V

    .line 84
    return v3

    .line 86
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/android/exsettings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_screenshot_enabled"

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    .line 87
    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    return v3

    .line 91
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_7

    move-object v1, p2

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 94
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 93
    if-eqz v3, :cond_5

    .line 95
    :cond_4
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/exsettings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    .line 96
    return v2

    .line 99
    :cond_5
    iget-object v3, p0, Lcom/android/exsettings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/exsettings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/exsettings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 103
    :goto_0
    return v2

    .line 101
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/exsettings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v1    # "newAssitPackage":Ljava/lang/String;
    :cond_7
    return v2
.end method
