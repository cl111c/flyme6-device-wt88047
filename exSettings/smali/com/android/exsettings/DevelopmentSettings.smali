.class public Lcom/android/exsettings/DevelopmentSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/exsettings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;,
        Lcom/android/exsettings/DevelopmentSettings$1;,
        Lcom/android/exsettings/DevelopmentSettings$2;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field private static final MOCK_LOCATION_APP_OPS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/SwitchPreference;

.field private mAdbOverNetwork:Landroid/preference/SwitchPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mColorModePreference:Lcom/android/exsettings/ColorModePreference;

.field private mColorTemperaturePreference:Landroid/preference/SwitchPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDevelopmentShortcut:Landroid/preference/SwitchPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableMultiWindow:Landroid/preference/SwitchPreference;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/ListPreference;

.field private mKillAppLongpressBack:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLegacyDhcpClient:Landroid/preference/SwitchPreference;

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

.field private mMockLocationApp:Ljava/lang/String;

.field private mMockLocationAppPref:Landroid/preference/Preference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootAppops:Landroid/preference/Preference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConfiguration:Landroid/preference/ListPreference;

.field private mUsbReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/DevelopmentSettings;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/DevelopmentSettings;Z)V
    .locals 0
    .param p1, "isUnlocked"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->updateUsbConfigurationValues(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 209
    const-string/jumbo v0, "262144"

    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    .line 2293
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/android/exsettings/DevelopmentSettings$2;-><init>()V

    .line 2292
    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 2246
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$1;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    return-void
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 519
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 521
    return-object v0
.end method

.method private confirmEnableMultiWindowMode()V
    .locals 3

    .prologue
    .line 1809
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$4;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    .line 1817
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1818
    const v2, 0x7f0c0cdf

    .line 1817
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1819
    const v2, 0x7f0c0ce0

    .line 1817
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1820
    const v2, 0x7f0c09be

    .line 1817
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1821
    const/high16 v2, 0x1040000

    .line 1817
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1822
    const/4 v2, 0x0

    .line 1817
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1808
    return-void
.end method

.method private confirmEnableOemUnlock()V
    .locals 3

    .prologue
    .line 1788
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/DevelopmentSettings$3;-><init>(Lcom/android/exsettings/DevelopmentSettings;)V

    .line 1798
    .local v0, "onEnableOemListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1799
    const v2, 0x7f0c0a8f

    .line 1798
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1800
    const v2, 0x7f0c0a90

    .line 1798
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1801
    const v2, 0x7f0c09be

    .line 1798
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1802
    const/high16 v2, 0x1040000

    .line 1798
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1803
    const/4 v2, 0x0

    .line 1798
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1787
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1167
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    return v2

    .line 1170
    :cond_0
    const-string/jumbo v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1171
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2140
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2142
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 2145
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2146
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 2148
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 2149
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2150
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 2152
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 2153
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2154
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 2156
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 2157
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2158
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 2139
    :cond_4
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1094
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "adb_enabled"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 1095
    return v5

    .line 1097
    :cond_0
    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 1098
    return v5

    .line 1100
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1101
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v3, "verification":Landroid/content/Intent;
    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1105
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1106
    return v5

    .line 1109
    :cond_2
    return v6
.end method

.method private findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/exsettings/AnimationScalePreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/AnimationScalePreference;

    .line 533
    .local v0, "pref":Lcom/android/exsettings/AnimationScalePreference;
    invoke-virtual {v0, p0}, Lcom/android/exsettings/AnimationScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    invoke-virtual {v0, p0}, Lcom/android/exsettings/AnimationScalePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 535
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-object v0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 541
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 542
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    return-object v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2283
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2284
    :catch_0
    move-exception v0

    .line 2285
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isRootForAppsAvailable()Z
    .locals 4

    .prologue
    .line 852
    const/4 v1, 0x0

    .line 854
    .local v1, "exists":Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 859
    .end local v1    # "exists":Z
    .end local v2    # "f":Ljava/io/File;
    :goto_0
    return v1

    .line 856
    .restart local v1    # "exists":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isRootForAppsEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 863
    const-string/jumbo v4, "persist.sys.root_access"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 865
    .local v1, "value":I
    const-string/jumbo v4, "init.svc.su_daemon"

    const-string/jumbo v5, "absent"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 866
    .local v0, "daemonState":Z
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 586
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 587
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 577
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0, p1}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 579
    const/4 v0, 0x1

    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 551
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 554
    return v1

    :cond_0
    move v0, v1

    .line 551
    goto :goto_0

    .line 558
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 898
    const-string/jumbo v1, "adb_notify"

    const/4 v2, 0x1

    .line 897
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 896
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 811
    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 812
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 813
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 814
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 816
    invoke-virtual {p0, v4, v0}, Lcom/android/exsettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 812
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 820
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 821
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetRootAccessOptions()V

    .line 822
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 823
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 824
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetDevelopmentShortcutOptions()V

    .line 825
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 826
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 827
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 829
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 832
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 833
    invoke-direct {p0, v4}, Lcom/android/exsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 834
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 835
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    .line 836
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 837
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 810
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 5

    .prologue
    .line 1013
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1014
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1013
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1015
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 768
    const-string/jumbo v1, "development_shortcut"

    const/4 v2, 0x0

    .line 767
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    return-void
.end method

.method private resetRootAccessOptions()V
    .locals 4

    .prologue
    .line 884
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "oldValue":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "service.adb.root"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    const-string/jumbo v1, "service.adb.root"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 889
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    .line 888
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 890
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 891
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    .line 890
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 883
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1089
    const-string/jumbo v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    .line 1088
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1087
    return-void
.end method

.method private setEnableMultiWindow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1126
    const-string/jumbo v0, "persist.sys.debug.multi_window"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1125
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 593
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 595
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAllOptions()V

    .line 590
    return-void
.end method

.method private static showEnableMultiWindowPreference()Z
    .locals 2

    .prologue
    .line 1122
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 1118
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 2067
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2068
    const v1, 0x7f0c0a8d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2067
    invoke-virtual {v0, p2, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1113
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1114
    const-string/jumbo v3, "verifier_setting_visible"

    .line 1113
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startInactiveAppsFragment()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2061
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 2062
    const-class v1, Lcom/android/exsettings/fuelgauge/InactiveApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2063
    const v3, 0x7f0c0f7b

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 2061
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 2060
    return-void
.end method

.method private updateAdbOverNetwork()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 783
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 784
    const-string/jumbo v7, "adb_port"

    .line 783
    invoke-static {v6, v7, v8}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 785
    .local v3, "port":I
    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 787
    .local v1, "enabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v6, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 789
    const/4 v4, 0x0

    .line 791
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 793
    const-string/jumbo v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 792
    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 795
    .local v5, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 801
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    .line 803
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    .line 802
    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 804
    .local v2, "hostAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 782
    .end local v2    # "hostAddress":Ljava/lang/String;
    :goto_2
    return-void

    .line 785
    .end local v1    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 796
    .restart local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DevelopmentSettings"

    const-string/jumbo v7, "wifiManager, getConnectionInfo()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 806
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    const v7, 0x7f0c0135

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateAdvancedRebootOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 762
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 763
    const-string/jumbo v4, "advanced_reboot"

    .line 762
    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 761
    return-void

    :cond_0
    move v0, v1

    .line 762
    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 684
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 685
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 686
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 687
    const-string/jumbo v2, "adb_enabled"

    .line 686
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 689
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 690
    const-string/jumbo v2, "adb_notify"

    .line 689
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 691
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 693
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 694
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 695
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    .line 694
    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 698
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 699
    const-string/jumbo v2, "bugreport_in_power_menu"

    .line 698
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 700
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 701
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 702
    const-string/jumbo v2, "bluetooth_hci_log"

    .line 701
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 703
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 704
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exsettings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 706
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 707
    const-string/jumbo v5, "debug_view_attributes"

    .line 706
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 708
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 709
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 710
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 711
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMockLocation()V

    .line 712
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 713
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 714
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 715
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 716
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 717
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 718
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMsaaOptions()V

    .line 719
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 720
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 721
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 722
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 723
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 724
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 725
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 726
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 727
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 729
    const-string/jumbo v3, "persist.sys.debug.multi_window"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 728
    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 731
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 732
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 733
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 734
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 735
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 736
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 737
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 738
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 739
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 740
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 741
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 742
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 743
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLegacyDhcpClientOptions()V

    .line 744
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMobileDataAlwaysOnOptions()V

    .line 745
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 746
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 747
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 748
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 749
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDevelopmentShortcutOptions()V

    .line 750
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 751
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateColorTemperature()V

    .line 682
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 686
    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 689
    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 695
    goto/16 :goto_2

    :cond_7
    move v2, v4

    .line 698
    goto/16 :goto_3

    :cond_8
    move v2, v4

    .line 701
    goto/16 :goto_4

    :cond_9
    move v3, v4

    .line 706
    goto/16 :goto_5
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/exsettings/AnimationScalePreference;)V

    .line 1683
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/exsettings/AnimationScalePreference;)V

    .line 1684
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/exsettings/AnimationScalePreference;)V

    .line 1681
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/android/exsettings/AnimationScalePreference;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/android/exsettings/AnimationScalePreference;

    .prologue
    .line 1672
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 1673
    .local v1, "scale":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1674
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1676
    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/exsettings/AnimationScalePreference;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    .end local v1    # "scale":F
    :goto_0
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updateAppProcessLimitOptions()V
    .locals 8

    .prologue
    .line 1748
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v2

    .line 1749
    .local v2, "limit":I
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1750
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 1751
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1752
    .local v3, "val":I
    if-lt v3, v2, :cond_1

    .line 1753
    if-eqz v1, :cond_0

    .line 1754
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1756
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1757
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1758
    return-void

    .line 1750
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v3    # "val":I
    :cond_2
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1762
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    .end local v1    # "i":I
    .end local v2    # "limit":I
    .end local v4    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1132
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.shell"

    .line 1133
    const-string/jumbo v4, "com.android.shell.BugreportStorageProvider"

    .line 1132
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .local v1, "bugreportStorageProviderComponentName":Landroid/content/ComponentName;
    const-string/jumbo v3, "user"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1137
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "adb_enabled"

    .line 1136
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1138
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1139
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1140
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1130
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .line 1136
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "adbEnabled":Z
    goto :goto_0

    .line 1145
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1146
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1147
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1148
    const-string/jumbo v3, "bugreport_in_power_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 1154
    .end local v0    # "adbEnabled":Z
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method private updateColorTemperature()V
    .locals 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    .line 1459
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1458
    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1457
    return-void
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1639
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 1640
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1641
    const-string/jumbo v3, "show_processes"

    .line 1640
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1639
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1638
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1367
    const-string/jumbo v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1368
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1369
    const-string/jumbo v1, ""

    .line 1372
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1373
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1374
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1375
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1376
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1377
    return-void

    .line 1373
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1380
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1381
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1366
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 1393
    const-string/jumbo v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1392
    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1391
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "debug_app"

    .line 1020
    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1022
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 1023
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "wait_for_debugger"

    .line 1022
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1024
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1027
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1028
    const/16 v8, 0x200

    .line 1027
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1029
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1030
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1034
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v6

    const v6, 0x7f0c0cb0

    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1036
    iput-boolean v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1019
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 1022
    goto :goto_0

    .line 1030
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1031
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .end local v3    # "label":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1032
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 1038
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0caf

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDevelopmentShortcutOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 778
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 779
    const-string/jumbo v3, "development_shortcut"

    .line 778
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 777
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1211
    :try_start_0
    const-string/jumbo v11, "SurfaceFlinger"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1212
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_0

    .line 1213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1214
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1215
    .local v5, "reply":Landroid/os/Parcel;
    const-string/jumbo v11, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1216
    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-interface {v4, v11, v0, v5, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1218
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1220
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1221
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1222
    .local v8, "showUpdates":I
    iget-object v12, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    move v11, v9

    :goto_0
    invoke-virtual {p0, v12, v11}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1224
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1225
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1226
    .local v1, "disableOverlays":I
    iget-object v11, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v11, v9}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1227
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v4    # "flinger":Landroid/os/IBinder;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v7    # "showCpu":I
    .restart local v8    # "showUpdates":I
    :cond_1
    move v11, v10

    .line 1222
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v6    # "showBackground":I
    :cond_2
    move v9, v10

    .line 1226
    goto :goto_1

    .line 1230
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    .end local v8    # "showUpdates":I
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1481
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 1482
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1483
    const-string/jumbo v3, "debug.force_rtl"

    .line 1482
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1481
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1480
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1268
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 919
    const-string/jumbo v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 920
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 921
    const-string/jumbo v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 923
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 924
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 925
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 926
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 927
    move v3, v2

    .line 931
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 932
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 933
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 918
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 925
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1666
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 1667
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    .line 1666
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1665
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 944
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 945
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kill_app_longpress_back"

    .line 944
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 943
    return-void
.end method

.method private updateLegacyDhcpClientOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1534
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 1535
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1536
    const-string/jumbo v3, "legacy_dhcp_client"

    .line 1534
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1533
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0a0044

    .line 1558
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1559
    const-string/jumbo v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1561
    const-string/jumbo v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    if-nez v0, :cond_0

    .line 1563
    const-string/jumbo v0, "256K"

    .line 1566
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1567
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1568
    .local v4, "titles":[Ljava/lang/String;
    const-string/jumbo v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1569
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1570
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1572
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1574
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1575
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1576
    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1575
    if-eqz v6, :cond_5

    .line 1577
    :cond_2
    move v2, v1

    .line 1581
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1582
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1583
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1557
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1574
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMobileDataAlwaysOnOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1546
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 1547
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1548
    const-string/jumbo v3, "mobile_data_always_on"

    .line 1546
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1545
    return-void
.end method

.method private updateMockLocation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1044
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 1046
    .local v2, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v8, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v2, v8}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 1047
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_1

    .line 1048
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 1049
    .local v5, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_0

    .line 1050
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1056
    .end local v5    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1057
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1059
    .local v4, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1060
    iget-object v9, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v10, 0x200

    .line 1059
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1061
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1062
    .local v1, "appLabel":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1063
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1069
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appLabel":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    const v10, 0x7f0c0a95

    invoke-virtual {p0, v10, v9}, Lcom/android/exsettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1070
    iput-boolean v12, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1043
    .end local v4    # "label":Ljava/lang/String;
    :goto_1
    return-void

    .line 1072
    :cond_3
    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    const v9, 0x7f0c0a94

    invoke-virtual {p0, v9}, Lcom/android/exsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1065
    .restart local v4    # "label":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1277
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1723
    const-string/jumbo v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1724
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1725
    const-string/jumbo v1, ""

    .line 1728
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1729
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1730
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1731
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1732
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1733
    return-void

    .line 1729
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1736
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1737
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1722
    return-void
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1699
    const-string/jumbo v4, "overlay_display_devices"

    .line 1698
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1701
    const-string/jumbo v1, ""

    .line 1704
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1705
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1706
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1707
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1708
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1709
    return-void

    .line 1705
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1713
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1697
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 3

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c0c37

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 948
    :goto_0
    return-void

    .line 953
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0c0c36

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1192
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 1193
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1194
    const-string/jumbo v3, "pointer_location"

    .line 1193
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1192
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1191
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 841
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 844
    const v3, 0x7f0a0070

    .line 843
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 843
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 840
    :cond_0
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1783
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 1784
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "anr_show_background"

    .line 1783
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1782
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 1357
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    .line 1356
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1355
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 1346
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1345
    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1344
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1313
    const-string/jumbo v3, "debug.hwui.show_non_rect_clip"

    .line 1312
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1315
    const-string/jumbo v1, "hide"

    .line 1318
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1319
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1320
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1322
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1323
    return-void

    .line 1319
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1327
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1311
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1203
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 1204
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1205
    const-string/jumbo v3, "show_touches"

    .line 1204
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1203
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1202
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 1403
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1405
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1404
    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1406
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1408
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1407
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1411
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1412
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1414
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1415
    const v6, 0x7f0c0add

    invoke-virtual {p0, v6}, Lcom/android/exsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1414
    const v6, 0x7f0c0ae1

    invoke-virtual {p0, v6, v5}, Lcom/android/exsettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1402
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .line 1404
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1417
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string/jumbo v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1420
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 1421
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1420
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStayAwakeOptions()V
    .locals 6

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 903
    const-string/jumbo v4, "stay_on_while_plugged_in"

    const/4 v5, 0x0

    .line 902
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 904
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "summaries":[Ljava/lang/String;
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 911
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 913
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 915
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 901
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1183
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1182
    return-void

    .line 1183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1287
    const-string/jumbo v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1289
    const-string/jumbo v1, ""

    .line 1292
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1293
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1294
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1296
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1297
    return-void

    .line 1293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1301
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1286
    return-void
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1470
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1471
    const-string/jumbo v3, "usb_audio_automatic_routing_disabled"

    .line 1470
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1469
    return-void
.end method

.method private updateUsbConfigurationValues(Z)V
    .locals 7
    .param p1, "isUnlocked"    # Z

    .prologue
    .line 1607
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-eqz v5, :cond_1

    .line 1608
    const-string/jumbo v5, "usb"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 1610
    .local v2, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1611
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1612
    .local v3, "titles":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1614
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    if-eqz p1, :cond_0

    .line 1615
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1616
    move v1, v0

    .line 1620
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1621
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1622
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1606
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .end local v3    # "titles":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 1614
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "manager":Landroid/hardware/usb/UsbManager;
    .restart local v3    # "titles":[Ljava/lang/String;
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1077
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1078
    const-string/jumbo v4, "verifier_verify_adb_installs"

    .line 1077
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1079
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1076
    return-void

    :cond_0
    move v0, v1

    .line 1077
    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1517
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1515
    return-void

    .line 1516
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1526
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1524
    return-void

    .line 1525
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1495
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 1496
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1497
    const-string/jumbo v3, "wifi_display_certification_on"

    .line 1495
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1494
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1508
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1506
    return-void

    .line 1507
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1430
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1432
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "accessibility_display_daltonizer_enabled"

    .line 1431
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 1433
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1435
    const-string/jumbo v4, "accessibility_display_daltonizer"

    .line 1436
    const/4 v5, -0x1

    .line 1434
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1437
    .local v3, "mode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1438
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1440
    const/4 v4, 0x1

    return v4

    .line 1431
    .end local v1    # "enabled":Z
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    .line 1443
    :cond_1
    return v6
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 757
    const-string/jumbo v2, "advanced_reboot"

    .line 758
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 756
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/android/exsettings/AnimationScalePreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1690
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1691
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/android/exsettings/AnimationScalePreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    .end local v1    # "scale":F
    :goto_1
    return-void

    .line 1690
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 1693
    .end local v1    # "scale":F
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1769
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1770
    .local v1, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1771
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    .end local v1    # "limit":I
    :goto_1
    return-void

    .line 1769
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "limit":I
    goto :goto_0

    .line 1772
    .end local v1    # "limit":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 961
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 962
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 963
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 964
    const-string/jumbo v3, "bluetooth_hci_log"

    .line 965
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 963
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 960
    return-void

    .line 965
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeColorTemperature()V
    .locals 3

    .prologue
    .line 1463
    const-string/jumbo v1, "persist.sys.debug.color_temp"

    .line 1464
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    .line 1463
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1466
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0fbf

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1462
    return-void

    .line 1464
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1645
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1646
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1647
    const-string/jumbo v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1646
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1648
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1649
    const-string/jumbo v3, "com.android.systemui"

    const-string/jumbo v4, "com.android.systemui.LoadAverageService"

    .line 1648
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1650
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1651
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1644
    :goto_1
    return-void

    .line 1647
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1653
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1385
    const-string/jumbo v1, "debug.hwui.overdraw"

    .line 1386
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1385
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1388
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1384
    return-void

    .line 1386
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1397
    const-string/jumbo v1, "debug.layout"

    .line 1398
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1397
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1396
    return-void

    .line 1398
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 5

    .prologue
    .line 970
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 971
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    .line 970
    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-void

    .line 972
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 773
    const-string/jumbo v2, "development_shortcut"

    .line 774
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 772
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 771
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 7

    .prologue
    .line 1253
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1254
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1256
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1257
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1258
    .local v1, "disableOverlays":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_1
    return-void

    .line 1257
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v3    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disableOverlays":I
    goto :goto_0

    .line 1264
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1488
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1489
    const-string/jumbo v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1488
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1490
    const-string/jumbo v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/android/exsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1486
    return-void

    .line 1489
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1490
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1273
    const-string/jumbo v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1272
    return-void

    .line 1273
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 3

    .prologue
    .line 1659
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1660
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 1659
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :goto_0
    return-void

    .line 1661
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 939
    const-string/jumbo v2, "kill_app_longpress_back"

    .line 940
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 938
    :goto_0
    invoke-static {v1, v2, v0}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 937
    return-void

    .line 940
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLegacyDhcpClientOptions()V
    .locals 3

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1541
    const-string/jumbo v2, "legacy_dhcp_client"

    .line 1542
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1540
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1539
    return-void

    .line 1542
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1588
    const-string/jumbo v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1590
    sput-object v0, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1592
    :cond_0
    if-eqz p1, :cond_1

    .line 1593
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1594
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1597
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1598
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1599
    const-string/jumbo v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1587
    return-void

    .line 1593
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/exsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .restart local v3    # "size":Ljava/lang/String;
    goto :goto_0

    .line 1600
    :catch_0
    move-exception v1

    .line 1601
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DevelopmentSettings"

    const-string/jumbo v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMobileDataAlwaysOnOptions()V
    .locals 3

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, "mobile_data_always_on"

    .line 1554
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1552
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1551
    return-void

    .line 1554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMockLocation()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 977
    const-string/jumbo v7, "appops"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 980
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    sget-object v7, Lcom/android/exsettings/DevelopmentSettings;->MOCK_LOCATION_APP_OPS:[I

    invoke-virtual {v1, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v6

    .line 981
    .local v6, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v6, :cond_1

    .line 983
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 984
    .local v4, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_0

    .line 985
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 987
    .local v3, "oldMockLocationApp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 988
    const/16 v8, 0x200

    .line 987
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 989
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3a

    .line 990
    const/4 v9, 0x2

    .line 989
    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 991
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 999
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "oldMockLocationApp":Ljava/lang/String;
    .end local v4    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1001
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1002
    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    const/16 v9, 0x200

    .line 1001
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1003
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1004
    iget-object v8, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1003
    const/16 v9, 0x3a

    .line 1004
    const/4 v10, 0x0

    .line 1003
    invoke-virtual {v1, v9, v7, v8, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 976
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    return-void

    .line 1005
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1282
    const-string/jumbo v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1281
    return-void

    .line 1282
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1741
    const-string/jumbo v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1743
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1740
    return-void

    .line 1741
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1717
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1718
    const-string/jumbo v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .line 1717
    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1719
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1716
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1188
    const-string/jumbo v2, "pointer_location"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1187
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1186
    return-void

    .line 1188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 870
    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "oldValue":Ljava/lang/String;
    const-string/jumbo v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 869
    return-void

    .line 873
    :cond_1
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "service.adb.root"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 872
    if-eqz v1, :cond_0

    .line 874
    const-string/jumbo v1, "service.adb.root"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 876
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x0

    .line 875
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 877
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 878
    const-string/jumbo v2, "adb_enabled"

    const/4 v3, 0x1

    .line 877
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1778
    const-string/jumbo v2, "anr_show_background"

    .line 1779
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1777
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1776
    return-void

    .line 1779
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1361
    const-string/jumbo v1, "debug.hwui.show_layers_updates"

    .line 1362
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1361
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1360
    return-void

    .line 1362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1350
    const-string/jumbo v1, "debug.hwui.show_dirty_regions"

    .line 1351
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 1350
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1349
    return-void

    .line 1351
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1338
    const-string/jumbo v1, "debug.hwui.show_non_rect_clip"

    .line 1339
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1338
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1341
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1337
    return-void

    .line 1339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1199
    const-string/jumbo v2, "show_touches"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1198
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    return-void

    .line 1199
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 7

    .prologue
    .line 1236
    :try_start_0
    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1237
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1239
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1240
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1241
    .local v3, "showUpdates":I
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :cond_0
    :goto_1
    return-void

    .line 1240
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "showUpdates":I
    goto :goto_0

    .line 1247
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v3    # "showUpdates":I
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1448
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1449
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1450
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1446
    :goto_0
    return-void

    .line 1452
    :cond_0
    const-string/jumbo v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1453
    const-string/jumbo v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStayAwakeOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1331
    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1332
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1333
    const-string/jumbo v2, "stay_on_while_plugged_in"

    .line 1332
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1334
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 1330
    return-void
.end method

.method private writeStrictModeVisualOptions()V
    .locals 3

    .prologue
    .line 1176
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const-string/jumbo v1, "1"

    .line 1176
    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 1174
    :goto_1
    return-void

    .line 1177
    :cond_0
    const-string/jumbo v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1305
    const-string/jumbo v1, "debug.hwui.profile"

    .line 1306
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 1305
    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1308
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1304
    return-void

    .line 1306
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1476
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 1477
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1475
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1474
    return-void

    .line 1477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUsbConfigurationOption(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 1628
    .local v1, "manager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "function":Ljava/lang/String;
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1630
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1631
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 1626
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 1634
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1084
    const-string/jumbo v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1083
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1082
    return-void

    .line 1084
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1521
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1520
    return-void

    .line 1521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1529
    return-void

    .line 1530
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1502
    const-string/jumbo v2, "wifi_display_certification_on"

    .line 1503
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1501
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1500
    return-void

    .line 1503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1511
    return-void

    .line 1512
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0x27

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 563
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 567
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 568
    iget-boolean v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 570
    return-void

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 562
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1863
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1864
    if-ne p2, v1, :cond_0

    .line 1865
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1866
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1867
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1869
    :cond_1
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 1870
    if-ne p2, v1, :cond_0

    .line 1871
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationApp:Ljava/lang/String;

    .line 1872
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMockLocation()V

    .line 1873
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateMockLocation()V

    goto :goto_0

    .line 1875
    :cond_2
    if-nez p1, :cond_4

    .line 1876
    if-ne p2, v1, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1878
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1880
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/exsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1884
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 2163
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_1

    .line 2164
    if-ne p2, v4, :cond_0

    .line 2165
    iput-boolean v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 2166
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2167
    const-string/jumbo v4, "adb_enabled"

    .line 2166
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2168
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 2169
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 2170
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 2173
    if-ne p2, v4, :cond_0

    .line 2174
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2175
    const-string/jumbo v4, "adb_port"

    const/16 v5, 0x15b3

    .line 2174
    invoke-static {v3, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2177
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 2178
    if-ne p2, v4, :cond_0

    .line 2180
    :try_start_0
    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2181
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 2182
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2183
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 2184
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DevelopmentSettings"

    const-string/jumbo v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2187
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_4

    .line 2188
    if-ne p2, v4, :cond_0

    .line 2189
    iput-boolean v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 2190
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2191
    const-string/jumbo v4, "development_settings_enabled"

    .line 2190
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2192
    iput-boolean v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 2193
    iget-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 2198
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2199
    const-string/jumbo v4, "show"

    .line 2198
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2202
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 2203
    if-ne p2, v4, :cond_5

    .line 2204
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 2207
    :cond_5
    const-string/jumbo v3, "0"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 325
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 329
    const-string/jumbo v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 328
    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 330
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 331
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 333
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 335
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 335
    if-nez v3, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 338
    const-string/jumbo v4, "device_provisioned"

    .line 337
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 341
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    .line 342
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 343
    return-void

    .line 346
    :cond_1
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 349
    const-string/jumbo v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 348
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 350
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 352
    const-string/jumbo v3, "adb_notify"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 353
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string/jumbo v3, "adb_over_network"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    .line 356
    const-string/jumbo v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 357
    const-string/jumbo v3, "ro.adb.secure"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    if-eqz v0, :cond_2

    .line 359
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const-string/jumbo v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 364
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/android/exsettings/DevelopmentSettings;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 365
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    iput-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 369
    :cond_3
    const-string/jumbo v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 370
    const-string/jumbo v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 371
    const-string/jumbo v3, "keep_screen_on_modes"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    .line 372
    const-string/jumbo v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 373
    const-string/jumbo v3, "oem_unlock_enable"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 374
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v3

    if-nez v3, :cond_4

    .line 375
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 376
    iput-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 379
    :cond_4
    const-string/jumbo v3, "debug_view_attributes"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 380
    const-string/jumbo v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 381
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string/jumbo v3, "advanced_reboot"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    .line 384
    const-string/jumbo v3, "development_shortcut"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    .line 387
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 388
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 389
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 390
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 391
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 392
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 393
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 396
    :cond_5
    const-string/jumbo v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 397
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string/jumbo v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 400
    const-string/jumbo v3, "mock_location_app"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    .line 401
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    const-string/jumbo v3, "verify_apps_over_usb"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 404
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_6

    .line 406
    if-eqz v0, :cond_c

    .line 407
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    :cond_6
    :goto_0
    const-string/jumbo v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 413
    const-string/jumbo v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 414
    const-string/jumbo v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 415
    const-string/jumbo v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 416
    const-string/jumbo v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 417
    const-string/jumbo v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 418
    const-string/jumbo v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 419
    const-string/jumbo v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 420
    const-string/jumbo v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 421
    const-string/jumbo v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 422
    const-string/jumbo v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 423
    const-string/jumbo v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 424
    const-string/jumbo v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 425
    const-string/jumbo v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 426
    const-string/jumbo v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 427
    const-string/jumbo v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 428
    const-string/jumbo v3, "wifi_verbose_logging"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 429
    const-string/jumbo v3, "wifi_aggressive_handover"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 430
    const-string/jumbo v3, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 431
    const-string/jumbo v3, "legacy_dhcp_client"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    .line 432
    const-string/jumbo v3, "mobile_data_always_on"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    .line 433
    const-string/jumbo v3, "select_logd_size"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 434
    const-string/jumbo v3, "select_usb_configuration"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    .line 436
    const-string/jumbo v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/exsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    .line 437
    const-string/jumbo v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/exsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    .line 438
    const-string/jumbo v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/android/exsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    .line 439
    const-string/jumbo v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 440
    const-string/jumbo v3, "enable_multi_window"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 441
    invoke-static {}, Lcom/android/exsettings/DevelopmentSettings;->showEnableMultiWindowPreference()Z

    move-result v3

    if-nez v3, :cond_7

    .line 443
    const-string/jumbo v3, "debug_drawing_category"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 444
    .local v1, "drawingGroup":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_d

    .line 445
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 450
    iput-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    .line 452
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string/jumbo v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 453
    const-string/jumbo v3, "simulate_color_space"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 454
    const-string/jumbo v3, "usb_audio"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 457
    const-string/jumbo v3, "immediately_destroy_activities"

    .line 456
    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 458
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    const-string/jumbo v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 464
    const-string/jumbo v3, "show_all_anrs"

    .line 463
    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 465
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string/jumbo v3, "kill_app_longpress_back"

    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 470
    const-string/jumbo v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 471
    .local v2, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v2, :cond_8

    .line 472
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 476
    :cond_8
    const-string/jumbo v3, "root_access"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 477
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    const-string/jumbo v3, "root_appops"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    .line 480
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 482
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v3

    if-nez v3, :cond_9

    .line 483
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->isRootForAppsAvailable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 484
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0070

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 485
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0071

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 490
    :goto_2
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_9
    const-string/jumbo v3, "development_tools"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 495
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 496
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-static {v3, v4, v5, v7}, Lcom/android/exsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 497
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_a
    const-string/jumbo v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/ColorModePreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    .line 501
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v3}, Lcom/android/exsettings/ColorModePreference;->updateCurrentAndSupported()V

    .line 502
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v3}, Lcom/android/exsettings/ColorModePreference;->getTransformsCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_b

    .line 503
    const-string/jumbo v3, "color_mode"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 504
    iput-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    .line 507
    :cond_b
    const-string/jumbo v3, "color_temperature"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    .line 508
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 509
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_3
    return-void

    .line 409
    .end local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_c
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 447
    .restart local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    :cond_d
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 487
    .end local v1    # "drawingGroup":Landroid/preference/PreferenceGroup;
    .restart local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_e
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0072

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 488
    iget-object v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    const v4, 0x7f0a0073

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_2

    .line 512
    :cond_f
    const-string/jumbo v3, "color_temperature"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->removePreference(Ljava/lang/String;)V

    .line 513
    iput-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 660
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 2236
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 2234
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 667
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 669
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 670
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 673
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 674
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 666
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2214
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 2215
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 2218
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 2212
    :cond_1
    :goto_0
    return-void

    .line 2219
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 2220
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 2221
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2222
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_5

    .line 2223
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 2224
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 2226
    :cond_4
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 2227
    :cond_5
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 2228
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 2229
    iput-object v1, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 650
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 651
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v0}, Lcom/android/exsettings/ColorModePreference;->stopListening()V

    .line 649
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2073
    const-string/jumbo v0, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    const-string/jumbo v0, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 2076
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 2077
    return v3

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 2079
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 2080
    return v3

    .line 2081
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mUsbConfiguration:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 2082
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeUsbConfigurationOption(Ljava/lang/Object;)V

    .line 2083
    return v3

    .line 2084
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-ne p1, v0, :cond_3

    .line 2085
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    invoke-direct {p0, v4, v0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2086
    return v3

    .line 2087
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-ne p1, v0, :cond_4

    .line 2088
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    invoke-direct {p0, v3, v0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2089
    return v3

    .line 2090
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-ne p1, v0, :cond_5

    .line 2091
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/android/exsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 2092
    return v3

    .line 2093
    :cond_5
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 2094
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 2095
    return v3

    .line 2096
    :cond_6
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_7

    .line 2097
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    .line 2098
    return v3

    .line 2099
    :cond_7
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_8

    .line 2100
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    .line 2101
    return v3

    .line 2102
    :cond_8
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9

    .line 2103
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    .line 2104
    return v3

    .line 2105
    :cond_9
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_a

    .line 2106
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    .line 2107
    return v3

    .line 2108
    :cond_a
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_b

    .line 2109
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 2110
    return v3

    .line 2111
    :cond_b
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    .line 2112
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 2113
    return v3

    .line 2114
    :cond_c
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_10

    .line 2115
    const-string/jumbo v0, "0"

    const-string/jumbo v1, "persist.sys.root_access"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2116
    const-string/jumbo v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2129
    :cond_d
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    .line 2131
    :goto_0
    return v3

    .line 2117
    :cond_e
    iput-object p2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 2118
    iput-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 2119
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    .line 2120
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 2122
    :cond_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2123
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2124
    const v1, 0x7f0c0070

    .line 2122
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2125
    const v1, 0x1040013

    .line 2122
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2126
    const v1, 0x1040009

    .line 2122
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 2127
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 2132
    :cond_10
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_11

    .line 2133
    invoke-direct {p0, p2}, Lcom/android/exsettings/DevelopmentSettings;->writeStayAwakeOptions(Ljava/lang/Object;)V

    .line 2134
    return v3

    .line 2136
    :cond_11
    return v4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1890
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-eq p1, v2, :cond_0

    .line 1891
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-ne p1, v2, :cond_2

    .line 1893
    :cond_0
    check-cast p1, Lcom/android/exsettings/AnimationScalePreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/exsettings/AnimationScalePreference;->click()V

    .line 1902
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1892
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/android/exsettings/AnimationScalePreference;

    if-eq p1, v2, :cond_0

    .line 1894
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mRootAppops:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 1895
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1896
    .local v1, "mActivity":Landroid/app/Activity;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "appops_tab"

    const v3, 0x7f0c013f

    invoke-virtual {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1898
    const-class v2, Lcom/android/exsettings/Settings$AppOpsSummaryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1899
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1900
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x1040013

    const v6, 0x1040009

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1907
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1908
    return v3

    .line 1911
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_4

    .line 1912
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1913
    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1914
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 1915
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1917
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0aa9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1917
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1919
    const v4, 0x7f0c0aa8

    .line 1917
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1923
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2057
    :cond_2
    :goto_0
    return v3

    .line 1925
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1926
    const-string/jumbo v4, "adb_enabled"

    .line 1925
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1927
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1928
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1929
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1931
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_6

    .line 1932
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1933
    const-string/jumbo v5, "adb_notify"

    .line 1934
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1932
    :goto_1
    invoke-static {v4, v5, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v3

    .line 1934
    goto :goto_1

    .line 1935
    :cond_6
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_9

    .line 1936
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1937
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_7

    .line 1938
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1940
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0136

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1940
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1942
    const v4, 0x7f0c0134

    .line 1940
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1946
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1948
    :cond_8
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1949
    const-string/jumbo v4, "adb_port"

    const/4 v5, -0x1

    .line 1948
    invoke-static {v2, v4, v5}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1950
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 1952
    :cond_9
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v4, :cond_b

    .line 1953
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1954
    :cond_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1955
    const v4, 0x7f0c0aaa

    .line 1954
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1956
    const v4, 0x104000a

    .line 1954
    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1957
    const/high16 v4, 0x1040000

    .line 1954
    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1959
    :cond_b
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_d

    .line 1960
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1961
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "com.android.terminal"

    .line 1962
    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1961
    :goto_2
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 1963
    goto :goto_2

    .line 1964
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_f

    .line 1965
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1966
    const-string/jumbo v5, "bugreport_in_power_menu"

    .line 1967
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1965
    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v2, v3

    .line 1967
    goto :goto_3

    .line 1968
    :cond_f
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_10

    .line 1969
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1970
    :cond_10
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_12

    .line 1971
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1972
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1973
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1975
    :cond_11
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/exsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1978
    :cond_12
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mMockLocationAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_13

    .line 1979
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/exsettings/AppPicker;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1980
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings.extra.REQUESTIING_PERMISSION"

    .line 1981
    const-string/jumbo v4, "android.permission.ACCESS_MOCK_LOCATION"

    .line 1980
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1982
    const/16 v2, 0x3e9

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1983
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_13
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v4, :cond_15

    .line 1984
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1985
    const-string/jumbo v5, "debug_view_attributes"

    .line 1986
    iget-object v6, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1984
    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    move v2, v3

    .line 1986
    goto :goto_4

    .line 1987
    :cond_15
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_16

    .line 1988
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/exsettings/AppPicker;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1989
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings.extra.DEBUGGABLE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/exsettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1991
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_16
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_17

    .line 1992
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1993
    :cond_17
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_18

    .line 1994
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1995
    :cond_18
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_19

    .line 1996
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1997
    :cond_19
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1a

    .line 1998
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1999
    :cond_1a
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1b

    .line 2000
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 2001
    :cond_1b
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1c

    .line 2002
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 2003
    :cond_1c
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1d

    .line 2004
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 2005
    :cond_1d
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1f

    .line 2006
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableMultiWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2007
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->confirmEnableMultiWindowMode()V

    goto/16 :goto_0

    .line 2009
    :cond_1e
    invoke-direct {p0, v3}, Lcom/android/exsettings/DevelopmentSettings;->setEnableMultiWindow(Z)V

    goto/16 :goto_0

    .line 2011
    :cond_1f
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_20

    .line 2012
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 2013
    :cond_20
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_21

    .line 2014
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 2015
    :cond_21
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_22

    .line 2016
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 2017
    :cond_22
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_23

    .line 2018
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 2019
    :cond_23
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_24

    .line 2020
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 2021
    :cond_24
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_25

    .line 2022
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 2023
    :cond_25
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_26

    .line 2024
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 2025
    :cond_26
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_27

    .line 2026
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 2027
    :cond_27
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_28

    .line 2028
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 2029
    :cond_28
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_29

    .line 2030
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 2031
    :cond_29
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2a

    .line 2032
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 2033
    :cond_2a
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2b

    .line 2034
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 2035
    :cond_2b
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2c

    .line 2036
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 2037
    :cond_2c
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLegacyDhcpClient:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2d

    .line 2038
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeLegacyDhcpClientOptions()V

    goto/16 :goto_0

    .line 2039
    :cond_2d
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mMobileDataAlwaysOn:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2e

    .line 2040
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeMobileDataAlwaysOnOptions()V

    goto/16 :goto_0

    .line 2041
    :cond_2e
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorTemperaturePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2f

    .line 2042
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeColorTemperature()V

    goto/16 :goto_0

    .line 2043
    :cond_2f
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_30

    .line 2044
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 2045
    :cond_30
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_31

    .line 2046
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0

    .line 2047
    :cond_31
    const-string/jumbo v2, "inactive_apps"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2048
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->startInactiveAppsFragment()V

    goto/16 :goto_0

    .line 2049
    :cond_32
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_33

    .line 2050
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeDevelopmentShortcutOptions()V

    goto/16 :goto_0

    .line 2051
    :cond_33
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_34

    .line 2052
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 2054
    :cond_34
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 602
    iget-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 604
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 605
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 606
    if-eqz v1, :cond_0

    .line 607
    const v2, 0x7f0c0a80

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 609
    :cond_0
    return-void

    .line 612
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 617
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "development_settings_enabled"

    .line 623
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 625
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 626
    iget-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 628
    iget-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eqz v2, :cond_6

    .line 639
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 640
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    .line 642
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    if-eqz v2, :cond_4

    .line 643
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/exsettings/ColorModePreference;->startListening()V

    .line 644
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mColorModePreference:Lcom/android/exsettings/ColorModePreference;

    invoke-virtual {v2}, Lcom/android/exsettings/ColorModePreference;->updateCurrentAndSupported()V

    .line 599
    :cond_4
    return-void

    .line 619
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    iget-object v4, p0, Lcom/android/exsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/exsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 634
    const-string/jumbo v4, "development_settings_enabled"

    .line 633
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    iput-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 636
    iget-object v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/android/exsettings/widget/SwitchBar;->setChecked(Z)V

    .line 637
    iget-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1829
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1830
    return-void

    .line 1832
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_2

    .line 1833
    if-eqz p2, :cond_3

    .line 1834
    iput-boolean v2, p0, Lcom/android/exsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1835
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1836
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1838
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1840
    const v2, 0x7f0c0aac

    .line 1839
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1838
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1841
    const v1, 0x7f0c0aab

    .line 1838
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1842
    const v1, 0x1040013

    .line 1838
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1843
    const v1, 0x1040009

    .line 1838
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1845
    iget-object v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1828
    :cond_2
    :goto_0
    return-void

    .line 1847
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1848
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1849
    const-string/jumbo v1, "development_settings_enabled"

    .line 1848
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1850
    iput-boolean p2, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1851
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/exsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1854
    invoke-virtual {p0}, Lcom/android/exsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1855
    const-string/jumbo v1, "show"

    .line 1854
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 2240
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 2242
    new-instance v0, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2239
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 678
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 679
    iget-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/exsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 677
    return-void
.end method
