.class public Lcom/android/exsettings/notification/SoundSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;,
        Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;,
        Lcom/android/exsettings/notification/SoundSettings$H;,
        Lcom/android/exsettings/notification/SoundSettings$Receiver;,
        Lcom/android/exsettings/notification/SoundSettings$1;,
        Lcom/android/exsettings/notification/SoundSettings$2;,
        Lcom/android/exsettings/notification/SoundSettings$3;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

.field private mIncreasingRing:Landroid/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/DefaultRingtonePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/android/exsettings/notification/SoundSettings$Receiver;

.field private mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

.field private mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$H;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/IncreasingRingVolumePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/notification/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/notification/SoundSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/notification/SoundSettings;)Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/exsettings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateNotificationPreferenceState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/notification/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-class v0, Lcom/android/exsettings/notification/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->TAG:Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "media_volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    const-string/jumbo v1, "alarm_volume"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "ring_volume"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "notification_volume"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 98
    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 657
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/notification/SoundSettings$3;-><init>()V

    .line 656
    sput-object v0, Lcom/android/exsettings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/BaseSearchIndexProvider;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    .line 110
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$1;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    .line 109
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    .line 119
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/SoundSettings$H;-><init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$H;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mHandler:Lcom/android/exsettings/notification/SoundSettings$H;

    .line 120
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    .line 121
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/notification/SoundSettings$Receiver;-><init>(Lcom/android/exsettings/notification/SoundSettings;Lcom/android/exsettings/notification/SoundSettings$Receiver;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Lcom/android/exsettings/notification/SoundSettings$Receiver;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingerMode:I

    .line 390
    new-instance v0, Lcom/android/exsettings/notification/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/SoundSettings$2;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 304
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 306
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 307
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 309
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 312
    return-object v4

    .line 316
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/exsettings/notification/SoundSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private initIncreasingRing(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 462
    const-string/jumbo v0, "increasing_ring"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 461
    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 464
    const-string/jumbo v0, "increasing_ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 463
    check-cast v0, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    .line 466
    iget-boolean v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 469
    iput-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    iput-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->setCallback(Lcom/android/exsettings/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 11
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 357
    const-string/jumbo v6, "ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DefaultRingtonePreference;

    .line 358
    .local v1, "phoneRingtonePreference":Lcom/android/exsettings/DefaultRingtonePreference;
    iget-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/exsettings/Utils;->isUserOwner()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 363
    iget-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 364
    const-string/jumbo v7, "phone"

    .line 363
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 365
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 366
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    const-string/jumbo v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 368
    .local v3, "soundCategory":Landroid/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 370
    new-instance v2, Lcom/android/exsettings/DefaultRingtonePreference;

    iget-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v8}, Lcom/android/exsettings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 371
    .local v2, "ringtonePreference":Lcom/android/exsettings/DefaultRingtonePreference;
    new-array v6, v10, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x7f0c0363

    invoke-virtual {p0, v7, v6}, Lcom/android/exsettings/notification/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/android/exsettings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v2, v0}, Lcom/android/exsettings/DefaultRingtonePreference;->setSubId(I)V

    .line 374
    invoke-virtual {v2, v9}, Lcom/android/exsettings/DefaultRingtonePreference;->setOrder(I)V

    .line 375
    invoke-virtual {v2, v10}, Lcom/android/exsettings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 376
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    iget-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "i":I
    .end local v2    # "ringtonePreference":Lcom/android/exsettings/DefaultRingtonePreference;
    .end local v3    # "soundCategory":Landroid/preference/PreferenceCategory;
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v5    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iput-object v8, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 383
    :cond_2
    :goto_1
    const-string/jumbo v6, "notification_ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 355
    return-void

    .line 380
    .restart local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 485
    const-string/jumbo v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 486
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 487
    sget-object v0, Lcom/android/exsettings/notification/SoundSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 490
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/exsettings/Utils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 496
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 497
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/exsettings/notification/SoundSettings$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/notification/SoundSettings$4;-><init>(Lcom/android/exsettings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 484
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    iput-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 493
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 244
    .local v0, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    if-nez v0, :cond_0

    return-object v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/exsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 246
    invoke-virtual {v0, p2}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 247
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v0, p3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 249
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 533
    .local v0, "n":I
    if-nez v0, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 535
    const v3, 0x7f0c0e9a

    .line 534
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 537
    .restart local v0    # "n":I
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 538
    const v4, 0x7f11000d

    .line 537
    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 292
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 293
    :cond_0
    iput-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 294
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 295
    if-eqz v0, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 297
    invoke-direct {p0, v0}, Lcom/android/exsettings/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 296
    const v4, 0x1040603

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateRingPreference()V

    .line 290
    return-void

    .line 297
    :cond_2
    const/4 v1, 0x0

    .local v1, "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateNotificationPreferenceState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 253
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-nez v1, :cond_0

    .line 254
    const-string/jumbo v1, "notification_volume"

    .line 255
    const/4 v2, 0x5

    .line 256
    const v3, 0x10802fe

    .line 254
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 259
    :cond_0
    iget-boolean v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    const-string/jumbo v2, "volume_link_notification"

    .line 260
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v0, 0x1

    .line 262
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 252
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    .line 260
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateRingPreference()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 271
    const v0, 0x10802fe

    .line 270
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 268
    :cond_0
    return-void

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    :cond_2
    const v0, 0x10802ff

    goto :goto_0

    .line 274
    :cond_3
    const v0, 0x7f02004b

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 285
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 286
    :cond_0
    iput v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingerMode:I

    .line 287
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateRingPreference()V

    .line 283
    return-void
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 415
    if-nez p0, :cond_0

    .line 416
    sget-object v0, Lcom/android/exsettings/notification/SoundSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-object v3

    .line 420
    :cond_0
    if-ne p1, v0, :cond_1

    if-gtz p2, :cond_3

    .line 421
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 425
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const v0, 0x1040418

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 428
    const v0, 0x1040416

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 455
    :cond_2
    :goto_1
    return-object v9

    .line 423
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v9    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 430
    .restart local v9    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x0

    .line 432
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 434
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 450
    :cond_6
    if-eqz v6, :cond_2

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 436
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_7
    :try_start_1
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 437
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_2

    .line 447
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 450
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_2

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 445
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 450
    .local v8, "sqle":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_2

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 449
    .end local v8    # "sqle":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 450
    if-eqz v6, :cond_8

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_8
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 511
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 510
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 508
    return-void
.end method

.method private wasRingerModeVibrate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingerMode:I

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 279
    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 154
    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 155
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 156
    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/exsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    .line 158
    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    invoke-virtual {p0}, Lcom/android/exsettings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 160
    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    :cond_0
    :goto_0
    const v4, 0x7f08005c

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/SoundSettings;->addPreferencesFromResource(I)V

    .line 166
    const-string/jumbo v4, "volumes"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 167
    .local v3, "volumes":Landroid/preference/PreferenceCategory;
    const-string/jumbo v4, "sounds"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 168
    .local v1, "sounds":Landroid/preference/PreferenceCategory;
    const-string/jumbo v4, "vibrate"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 169
    .local v2, "vibrate":Landroid/preference/PreferenceCategory;
    const-string/jumbo v4, "media_volume"

    const/4 v5, 0x3

    .line 170
    const v6, 0x10802f8

    .line 169
    invoke-direct {p0, v4, v5, v6}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 171
    const-string/jumbo v4, "alarm_volume"

    const/4 v5, 0x4

    .line 172
    const v6, 0x10802f6

    .line 171
    invoke-direct {p0, v4, v5, v6}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 173
    iget-boolean v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    .line 175
    const-string/jumbo v4, "ring_volume"

    const/4 v5, 0x2

    .line 176
    const v6, 0x10802fe

    .line 175
    invoke-direct {p0, v4, v5, v6}, Lcom/android/exsettings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    move-result-object v4

    .line 174
    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mRingPreference:Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 178
    const-string/jumbo v4, "volume_link_notification"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 177
    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 184
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 185
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    const-string/jumbo v4, "vibration_intensity"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 190
    invoke-direct {p0, v1}, Lcom/android/exsettings/notification/SoundSettings;->initIncreasingRing(Landroid/preference/PreferenceCategory;)V

    .line 191
    invoke-direct {p0, v2}, Lcom/android/exsettings/notification/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 193
    const-string/jumbo v4, "manage_notification_access"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/notification/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 194
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->refreshNotificationListeners()V

    .line 195
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateRingerMode()V

    .line 196
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 151
    return-void

    .line 161
    .end local v0    # "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    .end local v1    # "sounds":Landroid/preference/PreferenceCategory;
    .end local v2    # "vibrate":Landroid/preference/PreferenceCategory;
    .end local v3    # "volumes":Landroid/preference/PreferenceCategory;
    :cond_2
    iput-object v6, p0, Lcom/android/exsettings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_0

    .line 180
    .restart local v1    # "sounds":Landroid/preference/PreferenceCategory;
    .restart local v2    # "vibrate":Landroid/preference/PreferenceCategory;
    .restart local v3    # "volumes":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string/jumbo v4, "ring_volume"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    const-string/jumbo v4, "volume_link_notification"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumeCallback:Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v0}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Lcom/android/exsettings/notification/SoundSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/notification/SoundSettings$Receiver;->register(Z)V

    .line 225
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 237
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 201
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->refreshNotificationListeners()V

    .line 203
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 204
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateNotificationPreferenceState()V

    .line 205
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mSettingsObserver:Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;

    invoke-virtual {v5, v7}, Lcom/android/exsettings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 206
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mReceiver:Lcom/android/exsettings/notification/SoundSettings$Receiver;

    invoke-virtual {v5, v7}, Lcom/android/exsettings/notification/SoundSettings$Receiver;->register(Z)V

    .line 207
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateRingPreference()V

    .line 208
    invoke-direct {p0}, Lcom/android/exsettings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 209
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "volumePref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/notification/VolumeSeekBarPreference;

    .line 210
    .local v3, "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    invoke-virtual {v3}, Lcom/android/exsettings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 212
    .end local v3    # "volumePref":Lcom/android/exsettings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    if-eqz v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mIncreasingRingVolume:Lcom/android/exsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v5}, Lcom/android/exsettings/notification/IncreasingRingVolumePreference;->onActivityResume()V

    .line 215
    :cond_1
    iget-object v5, p0, Lcom/android/exsettings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v8, "no_adjust_volume"

    invoke-virtual {v5, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 216
    .local v0, "isRestricted":Z
    sget-object v9, Lcom/android/exsettings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v10, v9

    move v8, v6

    :goto_1
    if-ge v8, v10, :cond_4

    aget-object v1, v9, v8

    .line 217
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/exsettings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 218
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 219
    if-eqz v0, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    :cond_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_1

    :cond_3
    move v5, v7

    .line 219
    goto :goto_2

    .line 200
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_4
    return-void
.end method
