.class public Lcom/android/exsettings/PrivacySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;,
        Lcom/android/exsettings/PrivacySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nonVisibleKeys"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0, p1}, Lcom/android/exsettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/exsettings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    .line 185
    sput-object v0, Lcom/android/exsettings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/android/exsettings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/PrivacySettings$1;-><init>(Lcom/android/exsettings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/exsettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 49
    return-void
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 225
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 227
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 229
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 234
    .end local v2    # "isServiceActive":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 235
    const-string/jumbo v5, "com.google.settings"

    const/4 v6, 0x0

    .line 234
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v3, 0x1

    .line 236
    .local v3, "vendorSpecific":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 237
    :cond_0
    const-string/jumbo v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 244
    :goto_2
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 245
    const-string/jumbo v5, "no_factory_reset"

    .line 244
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const-string/jumbo v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 249
    const-string/jumbo v5, "no_network_reset"

    .line 248
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    const-string/jumbo v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    return-void

    .line 230
    .end local v3    # "vendorSpecific":Z
    .restart local v2    # "isServiceActive":Z
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrivacySettings"

    const-string/jumbo v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isServiceActive":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "vendorSpecific":Z
    goto :goto_1

    .line 240
    :cond_5
    const-string/jumbo v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0c34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 140
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 142
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 143
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 144
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 146
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 147
    .local v0, "backupEnabled":Z
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "transport":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 149
    .local v1, "configIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "configSummary":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 152
    const v9, 0x7f0c0ae8

    .line 151
    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 160
    const-string/jumbo v10, "backup_auto_restore"

    .line 159
    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_1

    :goto_2
    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 163
    if-eqz v1, :cond_2

    move v3, v0

    .line 164
    :goto_3
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    iget-object v7, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 166
    invoke-direct {p0, v2}, Lcom/android/exsettings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 139
    return-void

    .line 153
    .restart local v0    # "backupEnabled":Z
    .restart local v1    # "configIntent":Landroid/content/Intent;
    .restart local v2    # "configSummary":Ljava/lang/String;
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_0
    const v9, 0x7f0c0ae9

    goto :goto_0

    .line 154
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    move v7, v8

    .line 159
    goto :goto_2

    .line 163
    :cond_2
    const/4 v3, 0x0

    .local v3, "configureEnabled":Z
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f0c0de4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    .line 76
    iget-boolean v5, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    if-nez v5, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/android/exsettings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 83
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 82
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 85
    const-string/jumbo v5, "backup_data"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 87
    const-string/jumbo v5, "auto_restore"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 88
    iget-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/exsettings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    const-string/jumbo v5, "configure_account"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/exsettings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/exsettings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 94
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 95
    .local v4, "screenPreferenceCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 96
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 97
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 95
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/exsettings/PrivacySettings;->updateToggles()V

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-boolean v0, p0, Lcom/android/exsettings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/exsettings/PrivacySettings;->updateToggles()V

    .line 106
    :cond_0
    return-void
.end method
