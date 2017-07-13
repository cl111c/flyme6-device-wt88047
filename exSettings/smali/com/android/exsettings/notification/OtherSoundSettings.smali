.class public Lcom/android/exsettings/notification/OtherSoundSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "OtherSoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;,
        Lcom/android/exsettings/notification/OtherSoundSettings$1;,
        Lcom/android/exsettings/notification/OtherSoundSettings$2;,
        Lcom/android/exsettings/notification/OtherSoundSettings$3;,
        Lcom/android/exsettings/notification/OtherSoundSettings$4;,
        Lcom/android/exsettings/notification/OtherSoundSettings$5;,
        Lcom/android/exsettings/notification/OtherSoundSettings$6;,
        Lcom/android/exsettings/notification/OtherSoundSettings$7;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field private static final PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerSoundsRingtone:Landroid/preference/Preference;

.field private mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;


# direct methods
.method static synthetic -get0()[Lcom/android/exsettings/notification/SettingPref;
    .locals 1

    sget-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 92
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$1;

    .line 93
    const-string/jumbo v2, "dial_pad_tones"

    const-string/jumbo v3, "dtmf_tone"

    .line 92
    new-array v5, v7, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    .line 100
    new-instance v0, Lcom/android/exsettings/notification/SettingPref;

    .line 101
    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    .line 100
    new-array v5, v7, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 103
    new-instance v3, Lcom/android/exsettings/notification/SettingPref;

    .line 104
    const-string/jumbo v5, "charging_sounds"

    const-string/jumbo v6, "charging_sounds_enabled"

    .line 103
    new-array v8, v7, [I

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 106
    new-instance v8, Lcom/android/exsettings/notification/OtherSoundSettings$2;

    .line 107
    const-string/jumbo v10, "docking_sounds"

    const-string/jumbo v11, "dock_sounds_enabled"

    .line 106
    new-array v13, v7, [I

    move v9, v4

    move v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/exsettings/notification/OtherSoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v8, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 114
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$3;

    .line 115
    const-string/jumbo v2, "volume_adjust_sounds"

    const-string/jumbo v3, "volume_adjust_sounds_enabled"

    .line 114
    new-array v5, v7, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 123
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$4;

    .line 124
    const-string/jumbo v2, "touch_sounds"

    const-string/jumbo v3, "sound_effects_enabled"

    .line 123
    new-array v5, v7, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/notification/OtherSoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    .line 137
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$5;

    .line 138
    const-string/jumbo v5, "dock_audio_media"

    const-string/jumbo v6, "dock_audio_media_enabled"

    .line 137
    filled-new-array {v7, v4}, [I

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

    .line 158
    new-instance v3, Lcom/android/exsettings/notification/OtherSoundSettings$6;

    .line 159
    const-string/jumbo v5, "emergency_tone"

    const-string/jumbo v6, "emergency_tone"

    .line 158
    filled-new-array {v4, v1, v7}, [I

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/android/exsettings/notification/OtherSoundSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

    .line 182
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/exsettings/notification/SettingPref;

    .line 183
    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v7

    .line 184
    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v4

    .line 185
    sget-object v2, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    aput-object v2, v0, v1

    .line 186
    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCKING_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 187
    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_VOLUME_ADJUST_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 188
    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/exsettings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 189
    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/exsettings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 190
    sget-object v1, Lcom/android/exsettings/notification/OtherSoundSettings;->PREF_EMERGENCY_TONE:Lcom/android/exsettings/notification/SettingPref;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 182
    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    .line 319
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$7;

    invoke-direct {v0}, Lcom/android/exsettings/notification/OtherSoundSettings$7;-><init>()V

    .line 318
    sput-object v0, Lcom/android/exsettings/notification/OtherSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 193
    new-instance v0, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;-><init>(Lcom/android/exsettings/notification/OtherSoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    .line 56
    return-void
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchNotificationSoundPicker(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "currentPowerRingtonePath"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.ringtone.TITLE"

    .line 343
    const v3, 0x7f0c0296

    invoke-virtual {p0, v3}, Lcom/android/exsettings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v2, "android.intent.extra.ringtone.TYPE"

    .line 345
    const/4 v3, 0x2

    .line 344
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string/jumbo v2, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 347
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 346
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    if-eqz p2, :cond_0

    .line 349
    const-string/jumbo v2, "silent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/exsettings/notification/OtherSoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    return-void

    .line 350
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 351
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 352
    const-string/jumbo v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setPowerNotificationRingtone(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    const-string/jumbo v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 364
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 366
    .local v0, "ringtone":Landroid/media/Ringtone;
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "toneName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    .local v2, "toneUriPath":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 376
    const-string/jumbo v5, "power_notifications_ringtone"

    .line 375
    invoke-static {v4, v5, v2}, Lcyanogenmod/providers/CMSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    return-void

    .line 370
    .end local v1    # "toneName":Ljava/lang/String;
    .end local v2    # "toneUriPath":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0c0297

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    .restart local v1    # "toneName":Ljava/lang/String;
    const-string/jumbo v2, "silent"

    .restart local v2    # "toneUriPath":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f0c0dd4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x49

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 381
    packed-switch p1, :pswitch_data_0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 384
    invoke-direct {p0, p3}, Lcom/android/exsettings/notification/OtherSoundSettings;->setPowerNotificationRingtone(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const v4, 0x7f08003f

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->addPreferencesFromResource(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;

    .line 216
    const-string/jumbo v4, "power_notifications_vibrate"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    .line 217
    iget-object v6, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 218
    const-string/jumbo v7, "power_notifications_vibrate"

    .line 217
    invoke-static {v4, v7, v5}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 219
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 220
    .local v3, "vibrator":Landroid/os/Vibrator;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 224
    :goto_1
    const-string/jumbo v4, "power_notifications_ringtone"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    .line 225
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 226
    const-string/jumbo v6, "power_notifications_ringtone"

    .line 225
    invoke-static {v4, v6}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "currentPowerRingtonePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 230
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 232
    const-string/jumbo v6, "power_notifications_ringtone"

    .line 231
    invoke-static {v4, v6, v0}, Lcyanogenmod/providers/CMSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    :cond_0
    const-string/jumbo v4, "silent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 236
    iget-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    .line 237
    const v6, 0x7f0c0297

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/OtherSoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    :cond_1
    :goto_2
    sget-object v4, Lcom/android/exsettings/notification/OtherSoundSettings;->PREFS:[Lcom/android/exsettings/notification/SettingPref;

    array-length v6, v4

    :goto_3
    if-ge v5, v6, :cond_5

    aget-object v1, v4, v5

    .line 247
    .local v1, "pref":Lcom/android/exsettings/notification/SettingPref;
    invoke-virtual {v1, p0}, Lcom/android/exsettings/notification/SettingPref;->init(Lcom/android/exsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v0    # "currentPowerRingtonePath":Ljava/lang/String;
    .end local v1    # "pref":Lcom/android/exsettings/notification/SettingPref;
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 217
    goto :goto_0

    .line 221
    .restart local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    const-string/jumbo v4, "power_notifications_vibrate"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/OtherSoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 240
    .restart local v0    # "currentPowerRingtonePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 241
    .local v2, "ringtone":Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 208
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 260
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 258
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 267
    const-string/jumbo v3, "power_notifications_vibrate"

    .line 268
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsVibrate:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 266
    :goto_0
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :goto_1
    return v1

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 272
    invoke-virtual {p0}, Lcom/android/exsettings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    const-string/jumbo v2, "power_notifications_ringtone"

    .line 272
    invoke-static {v0, v2}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/notification/OtherSoundSettings;->launchNotificationSoundPicker(ILjava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 254
    iget-object v0, p0, Lcom/android/exsettings/notification/OtherSoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/OtherSoundSettings$SettingsObserver;->register(Z)V

    .line 252
    return-void
.end method
