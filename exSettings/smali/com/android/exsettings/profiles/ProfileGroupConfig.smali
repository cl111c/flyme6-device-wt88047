.class public Lcom/android/exsettings/profiles/ProfileGroupConfig;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ProfileGroupConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LIGHTSMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGERMODE:Ljava/lang/CharSequence;

.field private static final KEY_RINGTONE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDMODE:Ljava/lang/CharSequence;

.field private static final KEY_SOUNDTONE:Ljava/lang/CharSequence;

.field private static final KEY_VIBRATEMODE:Ljava/lang/CharSequence;


# instance fields
.field private mLightsMode:Landroid/preference/ListPreference;

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileGroup:Lcyanogenmod/app/ProfileGroup;

.field private mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

.field private mRingerMode:Landroid/preference/ListPreference;

.field private mSoundMode:Landroid/preference/ListPreference;

.field private mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

.field private mVibrateMode:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "sound_mode"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    .line 40
    const-string/jumbo v0, "vibrate_mode"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    .line 41
    const-string/jumbo v0, "lights_mode"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    .line 42
    const-string/jumbo v0, "ringer_mode"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    .line 43
    const-string/jumbo v0, "soundtone"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    .line 44
    const-string/jumbo v0, "ringtone"

    sput-object v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getSoundOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v0}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup;->getRingerOverride()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setRingtone(Landroid/net/Uri;)V

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const v0, -0x7fffffef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v2, "Profile"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    .line 66
    const-string/jumbo v2, "ProfileGroup"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 68
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 69
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    .line 71
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_RINGERMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    .line 72
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_SOUNDMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    .line 73
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_VIBRATEMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    .line 74
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_LIGHTSMODE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    .line 75
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_RINGTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    .line 76
    sget-object v2, Lcom/android/exsettings/profiles/ProfileGroupConfig;->KEY_SOUNDTONE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    iput-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    .line 78
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 79
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, v3}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setShowSilent(Z)V

    .line 81
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/profiles/ProfileRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->updateState()V

    .line 58
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mVibrateMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    .line 135
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v2, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 137
    invoke-direct {p0}, Lcom/android/exsettings/profiles/ProfileGroupConfig;->updateState()V

    .line 138
    const/4 v1, 0x1

    return v1

    .line 121
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 123
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingerMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 125
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mLightsMode:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 126
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/app/ProfileGroup;->setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_0

    .line 127
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mRingTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_5

    .line 128
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_0

    .line 130
    .end local v0    # "uri":Landroid/net/Uri;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mSoundTone:Lcom/android/exsettings/profiles/ProfileRingtonePreference;

    if-ne p1, v1, :cond_0

    .line 131
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    .restart local v0    # "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/exsettings/profiles/ProfileGroupConfig;->mProfileGroup:Lcyanogenmod/app/ProfileGroup;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    goto :goto_0
.end method
