.class public Lcom/android/exsettings/cyanogenmod/PowerMenuActions;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PowerMenuActions.java"


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field private mAllActions:[Ljava/lang/String;

.field private mAssistPref:Landroid/preference/CheckBoxPreference;

.field private mAvailableActions:[Ljava/lang/String;

.field private mBugReportPref:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mLocalUserConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockdownPref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsPref:Landroid/preference/CheckBoxPreference;

.field private mSilentPref:Landroid/preference/CheckBoxPreference;

.field private mUsersPref:Landroid/preference/CheckBoxPreference;

.field private mVoiceAssistPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method private getUserConfig()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 271
    const-string/jumbo v5, "power_menu_actions"

    const/4 v6, -0x2

    .line 270
    invoke-static {v4, v5, v6}, Lcyanogenmod/providers/CMSettings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "savedActions":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 274
    iget-object v4, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 275
    const v5, 0x1070041

    .line 274
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "defaultActions":[Ljava/lang/String;
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 277
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "defaultActions":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 281
    .restart local v0    # "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isActionAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private saveUserConfig()V
    .locals 8

    .prologue
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v2, "s":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, "setactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 292
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 300
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_2

    .line 302
    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 307
    const-string/jumbo v5, "power_menu_actions"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x2

    .line 306
    invoke-static {v4, v5, v6, v7}, Lcyanogenmod/providers/CMSettings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 308
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updatePowerMenuDialog()V

    .line 286
    return-void
.end method

.method private settingsArrayContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updatePowerMenuDialog()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "u":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.UPDATE_POWER_MENU"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 311
    return-void
.end method

.method private updatePreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 255
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 254
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 257
    .local v0, "bugreport":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 259
    if-eqz v0, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    :goto_1
    return-void

    .line 254
    .end local v0    # "bugreport":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bugreport":Z
    goto :goto_0

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c021d

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateUserConfig(ZLjava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-direct {p0, p2}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->saveUserConfig()V

    .line 240
    return-void

    .line 246
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLocalUserConfig:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const v0, -0x7ffffff3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    const v2, 0x7f0a008a

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAvailableActions:[Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/android/internal/util/cm/PowerMenuConstants;->getAllActions()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    .line 79
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAllActions:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_b

    aget-object v0, v3, v2

    .line 81
    .local v0, "action":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->isActionAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 86
    :cond_1
    const-string/jumbo v1, "reboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string/jumbo v1, "reboot"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 88
    :cond_2
    const-string/jumbo v1, "screenshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string/jumbo v1, "screenshot"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 90
    :cond_3
    const-string/jumbo v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const-string/jumbo v1, "airplane"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 92
    :cond_4
    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    const-string/jumbo v1, "users"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 94
    :cond_5
    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    const-string/jumbo v1, "settings"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 96
    :cond_6
    const-string/jumbo v1, "lockdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    const-string/jumbo v1, "lockdown"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 98
    :cond_7
    const-string/jumbo v1, "bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    const-string/jumbo v1, "bugreport"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 100
    :cond_8
    const-string/jumbo v1, "silent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 101
    const-string/jumbo v1, "silent"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 102
    :cond_9
    const-string/jumbo v1, "voiceassist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 103
    const-string/jumbo v1, "voiceassist"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 104
    :cond_a
    const-string/jumbo v1, "assist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "assist"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 109
    .end local v0    # "action":Ljava/lang/String;
    :cond_b
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getUserConfig()V

    .line 69
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 185
    .local v0, "value":Z
    const-string/jumbo v1, "reboot"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    .line 226
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 187
    .end local v0    # "value":Z
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 189
    .restart local v0    # "value":Z
    const-string/jumbo v1, "screenshot"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0    # "value":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 193
    .restart local v0    # "value":Z
    const-string/jumbo v1, "airplane"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v0    # "value":Z
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 197
    .restart local v0    # "value":Z
    const-string/jumbo v1, "users"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "value":Z
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 201
    .restart local v0    # "value":Z
    const-string/jumbo v1, "settings"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "value":Z
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 204
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 205
    .restart local v0    # "value":Z
    const-string/jumbo v1, "lockdown"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0    # "value":Z
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 209
    .restart local v0    # "value":Z
    const-string/jumbo v1, "bugreport"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0    # "value":Z
    :cond_6
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 212
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 213
    .restart local v0    # "value":Z
    const-string/jumbo v1, "silent"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v0    # "value":Z
    :cond_7
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mVoiceAssistPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 216
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mVoiceAssistPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 217
    .restart local v0    # "value":Z
    const-string/jumbo v1, "voiceassist"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v0    # "value":Z
    :cond_8
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAssistPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 220
    iget-object v1, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAssistPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 221
    .restart local v0    # "value":Z
    const-string/jumbo v1, "assist"

    invoke-direct {p0, v0, v1}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updateUserConfig(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 224
    .end local v0    # "value":Z
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 176
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 121
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mRebootPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "reboot"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "screenshot"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "airplane"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 134
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 138
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mContext:Landroid/content/Context;

    .line 139
    const-string/jumbo v3, "user"

    .line 138
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    const/4 v0, 0x1

    .line 141
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "users"

    invoke-direct {p0, v2}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    .end local v0    # "enabled":Z
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSettingsPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "settings"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 151
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mLockdownPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "lockdown"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 155
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mBugReportPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "bugreport"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    :cond_6
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 159
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mSilentPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "silent"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    :cond_7
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mVoiceAssistPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    .line 163
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mVoiceAssistPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "voiceassist"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    :cond_8
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAssistPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    .line 167
    iget-object v2, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mAssistPref:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "assist"

    invoke-direct {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->settingsArrayContains(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    :cond_9
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->updatePreferences()V

    .line 118
    return-void

    .line 135
    :cond_a
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    iput-object v4, p0, Lcom/android/exsettings/cyanogenmod/PowerMenuActions;->mUsersPref:Landroid/preference/CheckBoxPreference;

    goto :goto_2

    .line 140
    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto/16 :goto_0

    .line 141
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
