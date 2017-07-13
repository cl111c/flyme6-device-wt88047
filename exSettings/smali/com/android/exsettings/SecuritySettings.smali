.class public Lcom/android/exsettings/SecuritySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field protected static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDirectlyShow:Landroid/preference/SwitchPreference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenDisabledPreference:Landroid/preference/Preference;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisibleDots:Landroid/preference/SwitchPreference;

.field private mVisibleErrorPattern:Landroid/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    sput-object v0, Lcom/android/exsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "visible_error_pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "visibledots"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "directlyshow"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "show_password"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 124
    sput-object v0, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    .line 889
    new-instance v0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    .line 888
    sput-object v0, Lcom/android/exsettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 505
    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 507
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/exsettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 508
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 509
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 511
    .local v0, "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 512
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 513
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 518
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 521
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 523
    iget-boolean v6, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 524
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 525
    const v6, 0x7f0c0f32

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    :cond_1
    if-nez v2, :cond_0

    .line 527
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 528
    const v6, 0x7f0c069f

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 504
    .end local v0    # "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 41

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 226
    .local v26, "root":Landroid/preference/PreferenceScreen;
    if-eqz v26, :cond_0

    .line 227
    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 229
    :cond_0
    const v37, 0x7f08004e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 236
    .local v23, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v38, v0

    invoke-static/range {v37 .. v38}, Lcom/android/exsettings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v25

    .line 237
    .local v25, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 240
    sget v37, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    if-nez v37, :cond_11

    const/16 v37, 0x1

    :goto_0
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    .line 243
    const-string/jumbo v38, "lockscreen_internally_enabled"

    const/16 v39, 0x1

    const/16 v40, 0x0

    .line 242
    invoke-static/range {v37 .. v40}, Lcyanogenmod/providers/CMSettings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v37

    .line 243
    const/16 v38, 0x1

    .line 242
    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    .line 245
    new-instance v37, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v37, v0

    const-string/jumbo v38, "lockscreen_enabled_internally"

    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v37, v0

    const v38, 0x7f0c02d7

    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setTitle(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v37, v0

    const v38, 0x7f0c02d8

    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setSummary(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    move-object/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_1
    const-string/jumbo v37, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v37, v0

    new-instance v38, Lcom/android/exsettings/SecuritySettings$1;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings$1;-><init>(Lcom/android/exsettings/SecuritySettings;)V

    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v37, v0

    if-eqz v37, :cond_3

    .line 264
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 266
    const v37, 0x7f080050

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 275
    :cond_3
    :goto_1
    const-string/jumbo v37, "security_category"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 274
    check-cast v27, Landroid/preference/PreferenceGroup;

    .line 276
    .local v27, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v27, :cond_4

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 282
    :cond_4
    const-string/jumbo v37, "lock_after_timeout"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/ListPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v37, v0

    if-eqz v37, :cond_5

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->setupLockAfterPreference()V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 289
    :cond_5
    const-string/jumbo v37, "directlyshow"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    .line 292
    const-string/jumbo v37, "visiblepattern"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 296
    const-string/jumbo v37, "visible_error_pattern"

    .line 295
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    .line 299
    const-string/jumbo v37, "visibledots"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    .line 303
    const-string/jumbo v37, "power_button_instantly_locks"

    .line 302
    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 304
    const-string/jumbo v37, "trust_agent"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 305
    .local v35, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v37, v0

    if-eqz v37, :cond_6

    .line 306
    if-eqz v35, :cond_6

    .line 307
    invoke-virtual/range {v35 .. v35}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/lang/CharSequence;->length()I

    move-result v37

    if-lez v37, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 310
    invoke-virtual/range {v35 .. v35}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v39

    const/16 v40, 0x0

    aput-object v39, v38, v40

    .line 309
    const v39, 0x7f0c0998

    .line 308
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    :cond_6
    const-string/jumbo v37, "general_category"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 314
    check-cast v11, Landroid/preference/PreferenceGroup;

    .line 316
    .local v11, "generalCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v37, "org.cyanogenmod.livelockscreen"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_7

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/exsettings/Utils;->isUserOwner()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 318
    const v38, 0x7f10001a

    .line 317
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 320
    .local v21, "moveToTop":Z
    if-eqz v21, :cond_13

    move-object/from16 v12, v26

    .line 321
    .local v12, "groupToAddTo":Landroid/preference/PreferenceGroup;
    :goto_2
    new-instance v19, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    .local v19, "liveLockPreference":Landroid/preference/Preference;
    new-instance v37, Landroid/content/Intent;

    const-string/jumbo v38, "cyanogenmod.intent.action.OPEN_LIVE_LOCKSCREEN_SETTINGS"

    invoke-direct/range {v37 .. v38}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 323
    const/16 v37, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings;->setLiveLockScreenPreferenceTitleAndSummary(Landroid/preference/Preference;)V

    .line 325
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 329
    .end local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    .end local v19    # "liveLockPreference":Landroid/preference/Preference;
    .end local v21    # "moveToTop":Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 330
    const v38, 0x11200bf

    .line 329
    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 331
    .local v6, "blurSupported":Z
    if-nez v6, :cond_8

    if-eqz v11, :cond_8

    .line 332
    const-string/jumbo v37, "lock_screen_blur_enabled"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 333
    .local v5, "blurEnabledPref":Landroid/preference/Preference;
    if-eqz v5, :cond_8

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    .end local v5    # "blurEnabledPref":Landroid/preference/Preference;
    :cond_8
    const v37, 0x7f080053

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    const-string/jumbo v38, "carrier_config"

    invoke-virtual/range {v37 .. v38}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 340
    check-cast v7, Landroid/telephony/CarrierConfigManager;

    .line 342
    .local v7, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v7}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 343
    .local v4, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v37, "sim_lock"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 344
    .local v16, "iccLockGroup":Landroid/preference/PreferenceGroup;
    const-string/jumbo v37, "sim_lock_settings"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 346
    .local v15, "iccLock":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v37, v0

    if-eqz v37, :cond_9

    .line 347
    const-string/jumbo v37, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    .line 346
    if-eqz v37, :cond_14

    .line 348
    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_a
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    .line 400
    const-string/jumbo v38, "lock_to_app_enabled"

    const/16 v39, 0x0

    .line 399
    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v37

    if-eqz v37, :cond_b

    .line 401
    const-string/jumbo v37, "screen_pinning_settings"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0c0ee8

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 401
    invoke-virtual/range {v37 .. v38}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 406
    :cond_b
    const-string/jumbo v37, "android.hardware.telephony"

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 407
    .local v18, "isTelephony":Z
    if-eqz v18, :cond_c

    .line 408
    const-string/jumbo v37, "sms_security_check_limit"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/ListPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 411
    .local v31, "smsSecurityCheck":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/exsettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 415
    .end local v31    # "smsSecurityCheck":I
    :cond_c
    const-string/jumbo v37, "show_password"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 416
    const-string/jumbo v37, "credentials_reset"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    const-string/jumbo v38, "user"

    invoke-virtual/range {v37 .. v38}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    .line 420
    .local v36, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 421
    const-string/jumbo v37, "no_config_credentials"

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_1d

    .line 422
    const-string/jumbo v37, "credential_storage_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 425
    .local v8, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v37

    if-eqz v37, :cond_1c

    const v32, 0x7f0c0c17

    .line 427
    .local v32, "storageSummaryRes":I
    :goto_4
    move/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 438
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    .end local v32    # "storageSummaryRes":I
    :goto_5
    const-string/jumbo v37, "device_admin_category"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 437
    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 440
    .local v10, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string/jumbo v37, "toggle_install_applications"

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    check-cast v37, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v37, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v38, v0

    sget v37, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v37

    if-eqz v37, :cond_1e

    const/16 v37, 0x0

    :goto_6
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 445
    const-string/jumbo v37, "no_install_unknown_sources"

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_d

    .line 446
    const-string/jumbo v37, "no_install_apps"

    invoke-virtual/range {v36 .. v37}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v37

    .line 445
    if-eqz v37, :cond_e

    .line 447
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 452
    :cond_e
    const-string/jumbo v37, "advanced_security"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 453
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_f

    .line 454
    const-string/jumbo v37, "manage_trust_agents"

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 455
    .local v20, "manageAgents":Landroid/preference/Preference;
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v37, v0

    sget v38, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v37

    if-eqz v37, :cond_1f

    .line 464
    .end local v20    # "manageAgents":Landroid/preference/Preference;
    :cond_f
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v37

    .line 465
    const-class v38, Lcom/android/exsettings/SecuritySettings;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x1

    const/16 v40, 0x1

    .line 464
    invoke-virtual/range {v37 .. v40}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 467
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    sget-object v37, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v14, v0, :cond_20

    .line 468
    sget-object v37, Lcom/android/exsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v37, v37, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 469
    .local v24, "pref":Landroid/preference/Preference;
    if-eqz v24, :cond_10

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 467
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 240
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v6    # "blurSupported":Z
    .end local v7    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v10    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v11    # "generalCategory":Landroid/preference/PreferenceGroup;
    .end local v14    # "i":I
    .end local v15    # "iccLock":Landroid/preference/Preference;
    .end local v16    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    .end local v18    # "isTelephony":Z
    .end local v24    # "pref":Landroid/preference/Preference;
    .end local v27    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v35    # "trustAgentPreference":Landroid/preference/Preference;
    .end local v36    # "um":Landroid/os/UserManager;
    :cond_11
    const/16 v37, 0x0

    goto/16 :goto_0

    .line 269
    :cond_12
    const v37, 0x7f080059

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 320
    .restart local v11    # "generalCategory":Landroid/preference/PreferenceGroup;
    .restart local v21    # "moveToTop":Z
    .restart local v27    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v35    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_13
    move-object v12, v11

    .restart local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    goto/16 :goto_2

    .line 350
    .end local v12    # "groupToAddTo":Landroid/preference/PreferenceGroup;
    .end local v21    # "moveToTop":Z
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v6    # "blurSupported":Z
    .restart local v7    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v15    # "iccLock":Landroid/preference/Preference;
    .restart local v16    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v33

    .line 351
    .local v33, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v34

    .line 352
    .local v34, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v22

    .line 353
    .local v22, "numPhones":I
    const/4 v13, 0x0

    .line 355
    .local v13, "hasAnySim":Z
    const/4 v14, 0x0

    .end local v13    # "hasAnySim":Z
    .restart local v14    # "i":I
    :goto_9
    move/from16 v0, v22

    if-ge v14, v0, :cond_1a

    .line 358
    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_17

    .line 359
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v30

    .line 360
    .local v30, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v30, :cond_16

    .line 355
    .end local v30    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_15
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 364
    .restart local v30    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_16
    new-instance v24, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 365
    .restart local v24    # "pref":Landroid/preference/Preference;
    invoke-virtual {v15}, Landroid/preference/Preference;->getOrder()I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 366
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    add-int/lit8 v38, v14, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    const/16 v39, 0x0

    aput-object v38, v37, v39

    const v38, 0x7f0c0356

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v37

    const-class v38, Lcom/android/exsettings/IccLockSettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v17, "intent":Landroid/content/Intent;
    const-string/jumbo v37, "slot_id"

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v38

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string/jumbo v37, "sub_display_name"

    .line 372
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v38

    .line 371
    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 373
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 375
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_b
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v37

    or-int v13, v13, v37

    .line 383
    .local v13, "hasAnySim":Z
    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v29

    .line 384
    .local v29, "simState":I
    const/16 v37, 0x1

    move/from16 v0, v29

    move/from16 v1, v37

    if-eq v0, v1, :cond_19

    .line 385
    if-eqz v29, :cond_19

    .line 386
    const/16 v37, 0x8

    move/from16 v0, v29

    move/from16 v1, v37

    if-eq v0, v1, :cond_18

    const/16 v28, 0x1

    .line 387
    .local v28, "simPresent":Z
    :goto_c
    if-nez v28, :cond_15

    .line 388
    const/16 v37, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 377
    .end local v13    # "hasAnySim":Z
    .end local v24    # "pref":Landroid/preference/Preference;
    .end local v28    # "simPresent":Z
    .end local v29    # "simState":I
    :cond_17
    move-object/from16 v24, v15

    .restart local v24    # "pref":Landroid/preference/Preference;
    goto :goto_b

    .line 386
    .restart local v13    # "hasAnySim":Z
    .restart local v29    # "simState":I
    :cond_18
    const/16 v28, 0x0

    .restart local v28    # "simPresent":Z
    goto :goto_c

    .line 384
    .end local v28    # "simPresent":Z
    :cond_19
    const/16 v28, 0x0

    .restart local v28    # "simPresent":Z
    goto :goto_c

    .line 392
    .end local v13    # "hasAnySim":Z
    .end local v24    # "pref":Landroid/preference/Preference;
    .end local v28    # "simPresent":Z
    .end local v29    # "simState":I
    :cond_1a
    if-nez v13, :cond_1b

    .line 393
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 394
    :cond_1b
    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_a

    .line 395
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 426
    .end local v14    # "i":I
    .end local v22    # "numPhones":I
    .end local v33    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v34    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v8    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v18    # "isTelephony":Z
    .restart local v36    # "um":Landroid/os/UserManager;
    :cond_1c
    const v32, 0x7f0c0c18

    .restart local v32    # "storageSummaryRes":I
    goto/16 :goto_4

    .line 430
    .end local v8    # "credentialStorageType":Landroid/preference/Preference;
    .end local v32    # "storageSummaryRes":I
    :cond_1d
    const-string/jumbo v37, "credentials_management"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 429
    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 431
    .local v9, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string/jumbo v37, "credentials_reset"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    const-string/jumbo v37, "credentials_install"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    const-string/jumbo v37, "credential_storage_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 444
    .end local v9    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v10    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_1e
    const/16 v37, 0x1

    goto/16 :goto_6

    .line 456
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v20    # "manageAgents":Landroid/preference/Preference;
    :cond_1f
    const/16 v37, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 457
    const v37, 0x7f0c069f

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_7

    .line 472
    .end local v20    # "manageAgents":Landroid/preference/Preference;
    .restart local v14    # "i":I
    :cond_20
    return-object v26
.end method

.method private disableUnusableTimeouts(J)V
    .locals 13
    .param p1, "maxTimeout"    # J

    .prologue
    const/4 v9, 0x0

    .line 663
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 664
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 665
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 668
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 669
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 670
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v10, v0

    if-ne v8, v10, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v10, v7

    if-eq v8, v10, :cond_3

    .line 675
    :cond_2
    iget-object v10, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 676
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 675
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 677
    iget-object v10, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 678
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    .line 677
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 679
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 680
    .local v6, "userPreference":I
    int-to-long v10, v6

    cmp-long v8, v10, p1

    if-gtz v8, :cond_3

    .line 681
    iget-object v8, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 688
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v10, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v10, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 662
    return-void

    :cond_4
    move v8, v9

    .line 688
    goto :goto_1
.end method

.method protected static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 535
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v7, Lcom/android/exsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 537
    const/16 v8, 0x80

    .line 536
    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 538
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v7, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v7}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 540
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    .line 543
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 562
    :cond_0
    :goto_1
    return-object v5

    .line 540
    .end local v0    # "disableTrustAgents":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disableTrustAgents":Z
    goto :goto_0

    .line 544
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 545
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 546
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_4

    .line 544
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 547
    :cond_4
    invoke-static {v3, p0}, Lcom/android/exsettings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 549
    invoke-static {p0, v3}, Lcom/android/exsettings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 550
    .local v6, "trustAgentComponentInfo":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v7, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_3

    .line 552
    invoke-static {v3}, Lcom/android/exsettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 551
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 553
    iget-object v7, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 550
    if-nez v7, :cond_3

    .line 554
    if-eqz v0, :cond_5

    .line 555
    invoke-static {v3}, Lcom/android/exsettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 554
    invoke-virtual {p2, v9, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_5

    .line 556
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 558
    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "resid":I
    sget v1, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    sget v1, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const v0, 0x7f080052

    .line 215
    :goto_0
    return v0

    .line 197
    :cond_0
    const v0, 0x7f08004f

    goto :goto_0

    .line 200
    :cond_1
    sget v1, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 202
    :sswitch_0
    const v0, 0x7f080055

    .line 203
    goto :goto_0

    .line 206
    :sswitch_1
    const v0, 0x7f080058

    .line 207
    goto :goto_0

    .line 211
    :sswitch_2
    const v0, 0x7f080054

    .line 212
    goto :goto_0

    .line 200
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 567
    const-string/jumbo v2, "install_non_market_apps"

    .line 566
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 477
    const-string/jumbo v7, "fingerprint"

    .line 476
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 478
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    const-string/jumbo v6, "SecuritySettings"

    const-string/jumbo v7, "No fingerprint hardware detected!!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 483
    .local v2, "fingerprintPreference":Landroid/preference/Preference;
    const-string/jumbo v6, "fingerprint_settings"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 484
    const v6, 0x7f0c061b

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 485
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 486
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    .line 487
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 489
    .local v1, "fingerprintCount":I
    :goto_0
    if-lez v1, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 491
    const v8, 0x7f110005

    .line 490
    invoke-virtual {v6, v8, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    const-class v6, Lcom/android/exsettings/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "clazz":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 501
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 475
    return-void

    .line 487
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fingerprintCount":I
    goto :goto_0

    .line 496
    :cond_2
    const v6, 0x7f0c0620

    .line 495
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 497
    const-class v6, Lcom/android/exsettings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_1
.end method

.method private setLiveLockScreenPreferenceTitleAndSummary(Landroid/preference/Preference;)V
    .locals 14
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v13, 0x0

    .line 853
    const v11, 0x7f0c037a

    invoke-virtual {p0, v11}, Lcom/android/exsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, "title":Ljava/lang/String;
    const v11, 0x7f0c037b

    invoke-virtual {p0, v11}, Lcom/android/exsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 855
    .local v7, "summary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 857
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "cyanogenmod.intent.action.OPEN_LIVE_LOCKSCREEN_SETTINGS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v5, v11, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 858
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 859
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 860
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 863
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    .line 862
    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 864
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 865
    .local v6, "res":Landroid/content/res/Resources;
    const-string/jumbo v11, "live_lock_screen_title"

    const-string/jumbo v12, "string"

    .line 866
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 865
    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 867
    .local v10, "titleId":I
    const-string/jumbo v11, "live_lock_screen_summary"

    const-string/jumbo v12, "string"

    .line 868
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 867
    invoke-virtual {v6, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 869
    .local v8, "summaryId":I
    if-eqz v10, :cond_1

    if-eqz v8, :cond_1

    .line 870
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 871
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 881
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v8    # "summaryId":I
    .end local v10    # "titleId":I
    :cond_1
    :goto_0
    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 882
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 852
    return-void

    .line 873
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "info$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 572
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 577
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 576
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    return-void

    .line 577
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 620
    const-string/jumbo v7, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    .line 619
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 621
    .local v2, "currentTimeout":J
    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 622
    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 623
    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 625
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_off_timeout"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 624
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v4, v6

    .line 626
    .local v4, "displayTimeout":J
    cmp-long v6, v0, v12

    if-lez v6, :cond_0

    .line 630
    sub-long v6, v0, v4

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/exsettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 617
    :cond_0
    return-void

    .line 623
    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0    # "adminTimeout":J
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 637
    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 636
    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 638
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 639
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 640
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 641
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 642
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 643
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 644
    move v0, v4

    .line 641
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 649
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 650
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 651
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 652
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 651
    const v11, 0x7f0c0608

    invoke-virtual {p0, v11, v10}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 634
    :goto_1
    return-void

    .line 654
    :cond_2
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 655
    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 654
    const v11, 0x7f0c0609

    invoke-virtual {p0, v11, v10}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 658
    :cond_3
    iget-object v9, p0, Lcom/android/exsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0c0607

    invoke-virtual {p0, v11, v10}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const/4 v3, 0x0

    .line 611
    if-lez p1, :cond_0

    .line 612
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0c0311

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 610
    return-void

    .line 613
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c0312

    invoke-virtual {p0, v1}, Lcom/android/exsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c08f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 584
    const v1, 0x1080027

    .line 582
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c09a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 586
    const v1, 0x1040013

    .line 582
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 587
    const v1, 0x1040009

    .line 582
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 580
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 842
    const v0, 0x7f0c0de9

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 782
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 783
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 786
    iput-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 788
    :cond_0
    return-void

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 781
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 593
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 594
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 595
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/exsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 596
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 592
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "turnOn":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 178
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 180
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 182
    new-instance v0, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 184
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 173
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 604
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 605
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 603
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 795
    const/4 v4, 0x1

    .line 796
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 798
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/exsettings/ChooseLockSettingsHelper;->cmUtils()Lorg/cyanogenmod/internal/util/CmLockPatternUtils;

    move-result-object v0

    .line 799
    .local v0, "cmLockPatternUtils":Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
    const-string/jumbo v7, "lock_after_timeout"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 800
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 802
    .local v6, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 803
    const-string/jumbo v8, "lock_screen_lock_after_timeout"

    .line 802
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 837
    .end local v6    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 804
    .restart local v6    # "timeout":I
    :catch_0
    move-exception v1

    .line 805
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "SecuritySettings"

    const-string/jumbo v8, "could not persist lockAfter timeout setting"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 808
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v7, "directlyshow"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 809
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v7, v8}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->setPassToSecurityView(ZI)V

    goto :goto_1

    .line 810
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "visiblepattern"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 811
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 812
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v7, "visible_error_pattern"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 813
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setShowErrorPath(ZI)V

    goto :goto_1

    .line 814
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v7, "visibledots"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 815
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleDotsEnabled(ZI)V

    goto :goto_1

    .line 816
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v7, "power_button_instantly_locks"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 817
    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget v9, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 818
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 819
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    .line 820
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    .line 819
    :goto_2
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v3, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    move v7, v8

    .line 820
    goto :goto_2

    .line 822
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 823
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 824
    iget-object v7, p0, Lcom/android/exsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 825
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->warnAppInstallation()V

    .line 827
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 829
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/exsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1

    .line 831
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v7, "sms_security_check_limit"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 832
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 833
    .local v5, "smsSecurityCheck":I
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sms_outgoing_check_max_count"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    invoke-direct {p0, v5}, Lcom/android/exsettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 748
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 749
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    const-string/jumbo v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 751
    const v3, 0x7f0c0662

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 750
    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 774
    :cond_0
    :goto_0
    return v9

    .line 752
    :cond_1
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    new-instance v7, Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/exsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 755
    .local v7, "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 757
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 756
    invoke-virtual {v7, v1, v0}, Lcom/android/exsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 758
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 761
    iput-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 763
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/exsettings/ChooseLockSettingsHelper;
    :cond_2
    const-string/jumbo v0, "lockscreen_enabled_internally"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 764
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 765
    const-string/jumbo v1, "lockscreen_internally_enabled"

    .line 766
    const/4 v2, -0x2

    .line 764
    invoke-static {v0, v1, v9, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 767
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockscreenDisabledPreference:Landroid/preference/Preference;

    .line 769
    const v1, 0x7f0c02d9

    .line 768
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 772
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 701
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 705
    invoke-direct {p0}, Lcom/android/exsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 707
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/exsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 708
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/exsettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/exsettings/ChooseLockSettingsHelper;->cmUtils()Lorg/cyanogenmod/internal/util/CmLockPatternUtils;

    move-result-object v0

    .line 709
    .local v0, "cmLockPatternUtils":Lorg/cyanogenmod/internal/util/CmLockPatternUtils;
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mDirectlyShow:Landroid/preference/SwitchPreference;

    sget v5, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v5}, Lorg/cyanogenmod/internal/util/CmLockPatternUtils;->shouldPassToSecurityView(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    sget v5, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 716
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/SwitchPreference;

    sget v5, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isShowErrorPath(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 718
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 719
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mVisibleDots:Landroid/preference/SwitchPreference;

    sget v5, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleDotsEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 721
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 722
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 723
    sget v5, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    .line 722
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 726
    :cond_4
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 727
    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 728
    const-string/jumbo v6, "show_password"

    .line 727
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 731
    :cond_5
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    .line 732
    iget-object v2, p0, Lcom/android/exsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/exsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 735
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/SecuritySettings;->updateOwnerInfo()V

    .line 700
    return-void

    :cond_7
    move v2, v4

    .line 727
    goto :goto_0

    :cond_8
    move v4, v3

    .line 732
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 694
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 695
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 692
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/exsettings/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/exsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    :cond_0
    return-void

    .line 742
    :cond_1
    const v0, 0x7f0c060e

    invoke-virtual {p0, v0}, Lcom/android/exsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
