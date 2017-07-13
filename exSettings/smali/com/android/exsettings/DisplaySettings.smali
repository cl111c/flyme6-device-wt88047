.class public Lcom/android/exsettings/DisplaySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DisplaySettings$1;,
        Lcom/android/exsettings/DisplaySettings$2;,
        Lcom/android/exsettings/DisplaySettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

.field private mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mHighTouchSensitivity:Landroid/preference/SwitchPreference;

.field private mLcdDensityPreference:Landroid/preference/ListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mLiveDisplayPreference:Landroid/preference/PreferenceScreen;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mProximityCheckOnWakePreference:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/DisplaySettings;)Lcom/android/exsettings/FontDialogPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/exsettings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/DisplaySettings;I)V
    .locals 0
    .param p1, "currentDensity"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/DisplaySettings;Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DisplaySettings;->writeLcdDensityPreference(Landroid/content/Context;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 806
    new-instance v0, Lcom/android/exsettings/DisplaySettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/DisplaySettings$3;-><init>()V

    .line 805
    sput-object v0, Lcom/android/exsettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 127
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 144
    new-instance v0, Lcom/android/exsettings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/DisplaySettings$1;-><init>(Lcom/android/exsettings/DisplaySettings;Landroid/os/Handler;)V

    .line 143
    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 153
    new-instance v0, Lcom/android/exsettings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DisplaySettings$2;-><init>(Lcom/android/exsettings/DisplaySettings;)V

    .line 152
    iput-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 91
    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 471
    const-string/jumbo v12, "device_policy"

    .line 470
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 472
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 473
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 474
    return-void

    .line 472
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    .restart local v4    # "maxTimeout":J
    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 477
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 478
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 481
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 482
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 483
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 488
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 490
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    .line 489
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    .line 491
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 493
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 494
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 506
    .end local v7    # "userPreference":I
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 468
    return-void

    .line 495
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 496
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 499
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 506
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private getCurrentDensity()I
    .locals 3

    .prologue
    .line 349
    const-string/jumbo v2, "window"

    .line 348
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 351
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 355
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return v2
.end method

.method private getDefaultDensity()I
    .locals 3

    .prologue
    .line 338
    const-string/jumbo v2, "window"

    .line 337
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 340
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return v2
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 651
    const v1, 0x1120047

    .line 650
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    const-string/jumbo v0, "notification_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 655
    const v1, 0x1120049

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    :cond_1
    const-string/jumbo v0, "battery_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 659
    :cond_2
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 649
    :cond_3
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 373
    const v0, 0x1120029

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 431
    const v2, 0x10e00a8

    .line 430
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 431
    const/4 v3, -0x1

    .line 430
    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 432
    .local v0, "configSet":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 433
    const-string/jumbo v2, "gesture.disable_camera_launch"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    :cond_0
    :goto_1
    return v1

    .line 430
    .end local v0    # "configSet":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "configSet":Z
    goto :goto_0

    .line 433
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 364
    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 365
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 369
    const v0, 0x11200b1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x10

    .line 865
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 866
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v1

    .line 867
    .local v1, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    invoke-virtual {v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    const-string/jumbo v3, "high_touch_sensitivity"

    .line 869
    invoke-virtual {v1, v4}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v4

    .line 868
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 870
    .local v0, "enabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 871
    const-string/jumbo v5, "high_touch_sensitivity_enable"

    .line 872
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 870
    :goto_0
    invoke-static {v4, v5, v3}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 872
    .restart local v0    # "enabled":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showLcdConfirmationDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "lcdDensity"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c026b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 770
    const v1, 0x7f0c033f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 772
    new-instance v1, Lcom/android/exsettings/DisplaySettings$6;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettings/DisplaySettings$6;-><init>(Lcom/android/exsettings/DisplaySettings;Ljava/lang/String;)V

    .line 771
    const v2, 0x7f0c0b2a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 767
    return-void
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 376
    :cond_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 382
    iget-object v6, p0, Lcom/android/exsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 384
    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 389
    const-string/jumbo v7, "accelerometer_rotation"

    .line 388
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 391
    .local v3, "rotationEnabled":Z
    :goto_0
    if-nez v3, :cond_2

    .line 392
    iget-object v6, p0, Lcom/android/exsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0c0236

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 393
    return-void

    .line 388
    .end local v3    # "rotationEnabled":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "rotationEnabled":Z
    goto :goto_0

    .line 396
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v5, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 398
    const-string/jumbo v7, "accelerometer_rotation_angles"

    .line 399
    const/16 v8, 0xb

    .line 397
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 402
    .local v2, "mode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v4, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, ""

    .line 405
    .local v0, "delim":Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 406
    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 409
    const-string/jumbo v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 412
    const-string/jumbo v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 415
    const-string/jumbo v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 418
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 420
    const-string/jumbo v0, ", "

    .line 417
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_7
    const-string/jumbo v0, " & "

    goto :goto_2

    .line 425
    :cond_8
    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c0237

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v6, p0, Lcom/android/exsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method

.method private updateLcdDensityPreferenceDescription(I)V
    .locals 5
    .param p1, "currentDensity"    # I

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->getDefaultDensity()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 464
    const v0, 0x7f0c026e

    .line 465
    .local v0, "summaryResId":I
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 462
    return-void

    .line 464
    .end local v0    # "summaryResId":I
    :cond_0
    const v0, 0x7f0c026d

    .restart local v0    # "summaryResId":I
    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 602
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 599
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 564
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    invoke-virtual {p0, v2}, Lcom/android/exsettings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 565
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 568
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 570
    const-string/jumbo v5, "screen_brightness_mode"

    .line 569
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 575
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 577
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 581
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 587
    .end local v1    # "value":I
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 589
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 593
    .end local v1    # "value":I
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 594
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 595
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_9

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 563
    .end local v1    # "value":I
    :cond_4
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_5
    move v2, v4

    .line 571
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_6
    move v2, v4

    .line 577
    goto :goto_1

    :cond_7
    move v2, v4

    .line 583
    goto :goto_2

    :cond_8
    move v2, v4

    .line 589
    goto :goto_3

    :cond_9
    move v3, v4

    .line 595
    goto :goto_4
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    const/4 v11, 0x0

    .line 437
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 439
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 441
    const-string/jumbo v4, ""

    .line 459
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    return-void

    .line 443
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 444
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 445
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 446
    :cond_1
    const-string/jumbo v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 448
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 449
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 450
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 451
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 452
    move v0, v2

    .line 449
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 455
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 456
    aget-object v10, v1, v0

    aput-object v10, v9, v11

    .line 455
    const v10, 0x7f0c080b

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeLcdDensityPreference(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .prologue
    .line 608
    const-string/jumbo v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 607
    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 610
    .local v5, "am":Landroid/app/IActivityManager;
    const-string/jumbo v1, "window"

    .line 609
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 611
    .local v3, "wm":Landroid/view/IWindowManager;
    new-instance v0, Lcom/android/exsettings/DisplaySettings$5;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/exsettings/DisplaySettings$5;-><init>(Lcom/android/exsettings/DisplaySettings;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V

    .line 644
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 606
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 802
    const v0, 0x7f0c0dd1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-super/range {p0 .. p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 170
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 171
    .local v20, "resolver":Landroid/content/ContentResolver;
    const v24, 0x7f080026

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 173
    invoke-static {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 176
    const-string/jumbo v24, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 175
    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 178
    .local v13, "displayPrefs":Landroid/preference/PreferenceCategory;
    const-string/jumbo v24, "interface"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 177
    check-cast v16, Landroid/preference/PreferenceCategory;

    .line 179
    .local v16, "interfacePrefs":Landroid/preference/PreferenceCategory;
    const-string/jumbo v24, "display_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 180
    const-string/jumbo v24, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 185
    :cond_0
    const-string/jumbo v24, "live_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mLiveDisplayPreference:Landroid/preference/PreferenceScreen;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcyanogenmod/hardware/LiveDisplayManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/LiveDisplayManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcyanogenmod/hardware/LiveDisplayManager;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcyanogenmod/hardware/LiveDisplayConfig;->isAvailable()Z

    move-result v24

    if-nez v24, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLiveDisplayPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_1
    const-string/jumbo v24, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 193
    const v25, 0x1120077

    .line 192
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-nez v24, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_2
    const-string/jumbo v24, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 198
    const-string/jumbo v24, "screen_off_timeout"

    .line 199
    const-wide/16 v26, 0x7530

    .line 198
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 200
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/exsettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 203
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/exsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 206
    const-string/jumbo v24, "lcd_density"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_3
    :goto_0
    const-string/jumbo v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/exsettings/FontDialogPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 249
    const-string/jumbo v24, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/exsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    :cond_4
    :goto_1
    const-string/jumbo v24, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    invoke-static {v4}, Lcom/android/exsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    :cond_5
    :goto_2
    const-string/jumbo v24, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    invoke-static {v4}, Lcom/android/exsettings/Utils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    :cond_6
    :goto_3
    const-string/jumbo v24, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/exsettings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    :cond_7
    :goto_4
    const-string/jumbo v24, "night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 290
    const-string/jumbo v24, "uimode"

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/UiModeManager;

    .line 291
    .local v21, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual/range {v21 .. v21}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v7

    .line 292
    .local v7, "currentNightMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    .end local v7    # "currentNightMode":I
    .end local v21    # "uiManager":Landroid/app/UiModeManager;
    :cond_8
    const-string/jumbo v24, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/exsettings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    :cond_9
    :goto_5
    const-string/jumbo v24, "high_touch_sensitivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    move-object/from16 v24, v0

    .line 307
    const/16 v25, 0x10

    .line 306
    invoke-virtual/range {v24 .. v25}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v24

    if-nez v24, :cond_18

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 309
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 315
    :goto_6
    const-string/jumbo v24, "proximity_on_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mProximityCheckOnWakePreference:Landroid/preference/SwitchPreference;

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 317
    const v25, 0x3f050001

    .line 316
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 318
    .local v18, "proximityCheckOnWake":Z
    if-nez v18, :cond_19

    .line 319
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mProximityCheckOnWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mProximityCheckOnWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "proximity_on_wake"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    :goto_7
    const-string/jumbo v24, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    .line 331
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    .line 333
    const-string/jumbo v24, "lights"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/exsettings/DisplaySettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 167
    return-void

    .line 211
    .end local v18    # "proximityCheckOnWake":Z
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getDefaultDensity()I

    move-result v10

    .line 212
    .local v10, "defaultDensity":I
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getCurrentDensity()I

    move-result v5

    .line 213
    .local v5, "currentDensity":I
    const/16 v24, 0xa

    move/from16 v0, v24

    if-lt v5, v0, :cond_c

    const/16 v24, 0x3e8

    move/from16 v0, v24

    if-lt v5, v0, :cond_d

    .line 215
    :cond_c
    move v5, v10

    .line 218
    :cond_d
    const/16 v24, 0x1e0

    move/from16 v0, v24

    if-lt v10, v0, :cond_f

    const/16 v14, 0x28

    .line 219
    .local v14, "factor":I
    :goto_8
    mul-int/lit8 v24, v14, 0x4

    sub-int v17, v10, v24

    .line 220
    .local v17, "minimumDensity":I
    const/4 v6, -0x1

    .line 221
    .local v6, "currentIndex":I
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v11, v0, [Ljava/lang/String;

    .line 222
    .local v11, "densityEntries":[Ljava/lang/String;
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/String;

    .line 223
    .local v12, "densityValues":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "idx":I
    :goto_9
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ge v15, v0, :cond_11

    .line 224
    mul-int v24, v14, v15

    add-int v22, v17, v24

    .line 225
    .local v22, "val":I
    move/from16 v0, v22

    if-ne v0, v10, :cond_10

    .line 226
    const v23, 0x7f0c026e

    .line 229
    .local v23, "valueFormatResId":I
    :goto_a
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v11, v15

    .line 230
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v12, v15

    .line 231
    move/from16 v0, v22

    if-ne v5, v0, :cond_e

    .line 232
    move v6, v15

    .line 223
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 218
    .end local v6    # "currentIndex":I
    .end local v11    # "densityEntries":[Ljava/lang/String;
    .end local v12    # "densityValues":[Ljava/lang/String;
    .end local v14    # "factor":I
    .end local v15    # "idx":I
    .end local v17    # "minimumDensity":I
    .end local v22    # "val":I
    .end local v23    # "valueFormatResId":I
    :cond_f
    const/16 v14, 0x14

    .restart local v14    # "factor":I
    goto :goto_8

    .line 227
    .restart local v6    # "currentIndex":I
    .restart local v11    # "densityEntries":[Ljava/lang/String;
    .restart local v12    # "densityValues":[Ljava/lang/String;
    .restart local v15    # "idx":I
    .restart local v17    # "minimumDensity":I
    .restart local v22    # "val":I
    :cond_10
    const v23, 0x7f0c026d

    .restart local v23    # "valueFormatResId":I
    goto :goto_a

    .line 235
    .end local v22    # "val":I
    .end local v23    # "valueFormatResId":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 237
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v6, v0, :cond_12

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 240
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/exsettings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V

    goto/16 :goto_0

    .line 253
    .end local v5    # "currentDensity":I
    .end local v6    # "currentIndex":I
    .end local v10    # "defaultDensity":I
    .end local v11    # "densityEntries":[Ljava/lang/String;
    .end local v12    # "densityValues":[Ljava/lang/String;
    .end local v14    # "factor":I
    .end local v15    # "idx":I
    .end local v17    # "minimumDensity":I
    :cond_13
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 263
    :cond_14
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_2

    .line 273
    :cond_15
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 282
    :cond_16
    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 300
    :cond_17
    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 311
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    move-object/from16 v25, v0

    const/16 v26, 0x10

    invoke-virtual/range {v25 .. v26}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v25

    .line 311
    invoke-virtual/range {v24 .. v25}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    .line 324
    .restart local v18    # "proximityCheckOnWake":Z
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 325
    const v25, 0x3f050002

    .line 324
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 326
    .local v19, "proximityCheckOnWakeDefault":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/DisplaySettings;->mProximityCheckOnWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 327
    const-string/jumbo v27, "proximity_on_wake"

    .line 328
    if-eqz v19, :cond_1a

    const/16 v24, 0x1

    .line 326
    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 328
    const/16 v26, 0x1

    .line 326
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1b

    const/16 v24, 0x1

    :goto_c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 328
    :cond_1a
    const/16 v24, 0x0

    goto :goto_b

    .line 326
    :cond_1b
    const/16 v24, 0x0

    goto :goto_c
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 551
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/android/exsettings/DisplaySettings$4;

    invoke-direct {v1, p0}, Lcom/android/exsettings/DisplaySettings$4;-><init>(Lcom/android/exsettings/DisplaySettings;)V

    .line 553
    const v2, 0x7f0c0db7

    .line 552
    invoke-static {v0, v2, v1}, Lcom/android/exsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 542
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 542
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 711
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v10, "screen_timeout"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 714
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 715
    .local v8, "value":I
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "screen_off_timeout"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    int-to-long v10, v8

    invoke-direct {p0, v10, v11}, Lcom/android/exsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v8    # "value":I
    :cond_0
    :goto_0
    const-string/jumbo v10, "lcd_density"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v5, p2

    .line 722
    check-cast v5, Ljava/lang/String;

    .line 723
    .local v5, "newValue":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "oldValue":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 725
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/exsettings/DisplaySettings;->showLcdConfirmationDialog(Ljava/lang/String;)V

    .line 727
    :cond_1
    const/4 v10, 0x0

    return v10

    .line 717
    .end local v5    # "newValue":Ljava/lang/String;
    .end local v6    # "oldValue":Ljava/lang/String;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 718
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "DisplaySettings"

    const-string/jumbo v11, "could not persist screen timeout setting"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 729
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v10, "font_size"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 730
    invoke-virtual {p0, p2}, Lcom/android/exsettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 732
    :cond_3
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_4

    move-object v10, p2

    .line 733
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 734
    .local v2, "auto":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "screen_brightness_mode"

    .line 735
    if-eqz v2, :cond_a

    const/4 v10, 0x1

    .line 734
    :goto_1
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 737
    .end local v2    # "auto":Z
    :cond_4
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_5

    move-object v10, p2

    .line 738
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 739
    .local v9, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "wake_gesture_enabled"

    if-eqz v9, :cond_b

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    .end local v9    # "value":Z
    :cond_5
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_6

    move-object v10, p2

    .line 742
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 743
    .restart local v9    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "doze_enabled"

    if-eqz v9, :cond_c

    const/4 v10, 0x1

    :goto_3
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    .end local v9    # "value":Z
    :cond_6
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_7

    move-object v10, p2

    .line 746
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 747
    .restart local v9    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "double_tap_to_wake"

    if-eqz v9, :cond_d

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    .end local v9    # "value":Z
    :cond_7
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_8

    move-object v10, p2

    .line 750
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 751
    .restart local v9    # "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "camera_gesture_disabled"

    .line 752
    if-eqz v9, :cond_e

    const/4 v10, 0x0

    .line 751
    :goto_5
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 754
    .end local v9    # "value":Z
    :cond_8
    iget-object v10, p0, Lcom/android/exsettings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_9

    .line 756
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 758
    .restart local v8    # "value":I
    const-string/jumbo v10, "uimode"

    .line 757
    invoke-virtual {p0, v10}, Lcom/android/exsettings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/UiModeManager;

    .line 759
    .local v7, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v7, v8}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    .end local v7    # "uiManager":Landroid/app/UiModeManager;
    .end local v8    # "value":I
    :cond_9
    :goto_6
    const/4 v10, 0x1

    return v10

    .line 735
    .restart local v2    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    const/4 v10, 0x0

    goto :goto_1

    .line 739
    .end local v2    # "auto":Z
    .restart local v9    # "value":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 743
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 747
    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    .line 752
    :cond_e
    const/4 v10, 0x1

    goto :goto_5

    .line 760
    .end local v9    # "value":Z
    .end local p2    # "objValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 761
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v10, "DisplaySettings"

    const-string/jumbo v11, "could not persist night mode setting"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 789
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    if-ne p1, v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p0, v1}, Lcom/android/exsettings/DisplaySettings;->showDialog(I)V

    .line 792
    return v1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DisplaySettings;->mFontSizePref:Lcom/android/exsettings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/FontDialogPreference;->click()V

    .line 797
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 690
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 692
    const-string/jumbo v4, "wake_when_plugged_or_unplugged"

    .line 693
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .line 691
    :cond_0
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    return v2

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 697
    iget-object v4, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 696
    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 706
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_3
    move v1, v2

    .line 697
    goto :goto_0

    .line 698
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_2

    .line 699
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 700
    .local v0, "mHighTouchSensitivityEnable":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 701
    const-string/jumbo v4, "high_touch_sensitivity_enable"

    .line 702
    if-eqz v0, :cond_5

    move v1, v2

    .line 700
    :cond_5
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    return v2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 511
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 512
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 514
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 515
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 514
    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 521
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 522
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 520
    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 526
    const v5, 0x112002b

    .line 525
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 528
    .local v1, "wakeUpWhenPluggedOrUnpluggedConfig":Z
    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/exsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 530
    const-string/jumbo v7, "wake_when_plugged_or_unplugged"

    .line 531
    if-eqz v1, :cond_1

    move v2, v3

    .line 529
    :goto_0
    invoke-static {v6, v7, v2}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateState()V

    .line 535
    invoke-direct {p0}, Lcom/android/exsettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    .line 510
    return-void

    :cond_1
    move v2, v4

    .line 531
    goto :goto_0

    :cond_2
    move v3, v4

    .line 529
    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 675
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/android/exsettings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "fontDesc":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0c081d

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 666
    return-void

    .line 669
    .end local v1    # "fontDesc":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DisplaySettings"

    const-string/jumbo v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 682
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplaySettings"

    const-string/jumbo v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
