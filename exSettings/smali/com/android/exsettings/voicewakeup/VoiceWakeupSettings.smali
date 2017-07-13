.class public Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "VoiceWakeupSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;
.implements Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;


# static fields
.field private static final VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

.field private static final VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field private mDefaultActivityString:Ljava/lang/String;

.field private mLaunchIntentString:Ljava/lang/String;

.field private mPickShortcutPreference:Landroid/preference/Preference;

.field private mPicker:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

.field private mRetrainPreference:Landroid/preference/Preference;

.field private mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/content/ComponentName;

    .line 58
    const-string/jumbo v1, "com.cyanogenmod.voicewakeup"

    const-string/jumbo v2, "com.cyanogenmod.voicewakeup.VoiceTrainingActivity"

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    .line 60
    const-string/jumbo v1, "com.cyanogenmod.voicewakeup"

    const-string/jumbo v2, "com.cyanogenmod.voicewakeup.VoiceWakeupEngine"

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;

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

.method private restartService()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    return-void
.end method

.method private retrain()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "retrain":Landroid/content/Intent;
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->VOICE_TRAINING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method private voiceWakeupHasCallPerms()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    .line 171
    const-string/jumbo v3, "com.cyanogenmod.voicewakeup"

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x63

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_1

    .line 177
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->voiceWakeupHasCallPerms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c02f4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 181
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    .line 186
    .local v0, "shortcutName":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 187
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .end local v0    # "shortcutName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    :cond_3
    :goto_1
    return-void

    .line 192
    :cond_4
    if-eqz p1, :cond_3

    .line 193
    if-eqz p2, :cond_3

    .line 194
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string/jumbo v0, "retrain"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    .line 100
    const-string/jumbo v0, "voice_wakeup_launch_intent"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    .line 101
    new-instance v0, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iput-object p2, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->teardownSwitchBar()V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 114
    return-void
.end method

.method public onEnablerChanged(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 222
    const-string/jumbo v2, "voice_launch_intent"

    .line 221
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    .line 224
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 226
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    if-eqz p1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->restartService()V

    .line 219
    :cond_1
    return-void

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    iget-object v3, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mLaunchIntentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->pause()V

    .line 129
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 152
    iget-object v3, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mRetrainPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->retrain()V

    .line 154
    return v5

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPickShortcutPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    .local v0, "activity":Landroid/app/Activity;
    new-array v2, v5, [Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mDefaultActivityString:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 160
    .local v2, "names":[Ljava/lang/String;
    new-array v1, v5, [Landroid/content/Intent$ShortcutIconResource;

    .line 161
    const v3, 0x7f0200e8

    invoke-static {v0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    aput-object v3, v1, v4

    .line 163
    .local v1, "icons":[Landroid/content/Intent$ShortcutIconResource;
    iget-object v3, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mPicker:Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getId()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/exsettings/cyanogenmod/ShortcutPickHelper;->pickShortcut([Ljava/lang/String;[Landroid/content/Intent$ShortcutIconResource;I)V

    .line 164
    return v5

    .line 166
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "icons":[Landroid/content/Intent$ShortcutIconResource;
    .end local v2    # "names":[Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;->resume(Landroid/content/Context;)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/internal/util/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 137
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 109
    .local v1, "activity":Lcom/android/exsettings/SettingsActivity;
    new-instance v0, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v2

    .line 110
    const-string/jumbo v3, "voice_wakeup"

    const/4 v4, 0x0

    move-object v5, p0

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;Ljava/lang/String;ZLcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar$SwitchBarChangeCallback;)V

    iput-object v0, p0, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->mVoiceWakeupEnabler:Lcom/android/exsettings/cyanogenmod/BaseSystemSettingSwitchBar;

    .line 106
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "isApplication"    # Z

    .prologue
    .line 201
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.CALL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.cyanogenmod.voicewakeup.ACTION_REQUEST_DIAL_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "requestCallPerms":Landroid/content/Intent;
    const-string/jumbo v3, "com.cyanogenmod.voicewakeup"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/16 v3, 0x6f

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "requestCallPerms":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/voicewakeup/VoiceWakeupSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_launch_intent"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
