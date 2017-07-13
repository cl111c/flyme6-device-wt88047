.class public Lcom/android/exsettings/location/LocationSettings;
.super Lcom/android/exsettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private injector:Lcom/android/exsettings/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/location/LocationSettings;)Lcom/android/exsettings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettingsBase;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    .line 84
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 284
    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 285
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    invoke-static {p1}, Lcom/android/exsettings/location/IzatSettingsInjector;->getSettingInjector(Landroid/content/Context;)Lcom/android/exsettings/location/SettingsInjector;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    .line 288
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    if-eqz p3, :cond_0

    .line 289
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 288
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/exsettings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 291
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/exsettings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/exsettings/location/LocationSettings$3;-><init>(Lcom/android/exsettings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 306
    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 282
    :goto_1
    return-void

    .line 289
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 309
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/exsettings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/location/LocationSettings$1;-><init>(Lcom/android/exsettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 185
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 176
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    .line 266
    return-void
.end method

.method private static checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 432
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.hardware.telephony"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 433
    .local v2, "supportsTelephony":Z
    const-string/jumbo v4, "android.hardware.wifi"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 434
    .local v3, "supportsWifi":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 441
    const/4 v4, 0x1

    return v4

    .line 436
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "lto_download_data_wifi_only"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 439
    const/4 v4, 0x0

    return v4
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 191
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 192
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 195
    :cond_0
    const v6, 0x7f080036

    invoke-virtual {p0, v6}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 198
    invoke-direct {p0, v5}, Lcom/android/exsettings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 199
    const-string/jumbo v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 200
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 201
    new-instance v7, Lcom/android/exsettings/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/exsettings/location/LocationSettings$2;-><init>(Lcom/android/exsettings/location/LocationSettings;Lcom/android/exsettings/SettingsActivity;)V

    .line 200
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 213
    const-string/jumbo v6, "lto_download_data_wifi_only"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 212
    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    .line 214
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 215
    invoke-static {v0}, Lcom/android/exsettings/location/LocationSettings;->isLtoSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/android/exsettings/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    :cond_1
    :goto_0
    const-string/jumbo v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 223
    iput-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 225
    new-instance v3, Lcom/android/exsettings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/exsettings/location/RecentLocationApps;-><init>(Lcom/android/exsettings/SettingsActivity;)V

    .line 226
    .local v3, "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/exsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 227
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/exsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 238
    :goto_1
    const/4 v2, 0x0

    .line 242
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_2

    .line 243
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_share_location"

    iget-object v8, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    .line 242
    if-eqz v6, :cond_2

    .line 244
    const/4 v2, 0x1

    .line 246
    :cond_2
    invoke-direct {p0, v0, v5, v2}, Lcom/android/exsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->refreshLocationMode()V

    .line 249
    return-object v5

    .line 216
    .end local v2    # "lockdownOnLocationAccess":Z
    .end local v3    # "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    .end local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_3
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    iput-object v8, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    goto :goto_0

    .line 231
    .restart local v3    # "recentApps":Lcom/android/exsettings/location/RecentLocationApps;
    .restart local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f040091

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 233
    const v6, 0x7f0c0942

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 235
    iget-object v6, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static isLocationModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 446
    const-string/jumbo v3, "location_mode"

    .line 445
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 448
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isLtoSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 473
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    invoke-static {p0}, Lcom/android/exsettings/location/LocationSettings;->isLtoSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/android/exsettings/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 458
    invoke-static {p0}, Lcom/android/exsettings/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    .line 462
    const-string/jumbo v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 463
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/exsettings/cyanogenmod/LtoService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 465
    const/high16 v6, 0x48000000    # 131072.0f

    .line 464
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 466
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1d4c0

    add-long v2, v6, v8

    .line 467
    .local v2, "nextLtoDownload":J
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 455
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nextLtoDownload":J
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/exsettings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 256
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 258
    const-string/jumbo v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 252
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 262
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private static updateLtoServiceStatus(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exsettings/cyanogenmod/LtoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 421
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 337
    const v0, 0x7f0c0de8

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/exsettings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 135
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 137
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 138
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 139
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 131
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 315
    const/4 v0, 0x1

    const v1, 0x7f0c094a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 317
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 314
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onDestroyView()V

    .line 146
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 144
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    packed-switch p1, :pswitch_data_0

    .line 362
    :goto_0
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 365
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz p2, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/exsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 367
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_8

    :cond_0
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 369
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_9

    :cond_2
    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 370
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_4

    .line 374
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 378
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_4

    .line 379
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    .line 384
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v4, "no_share_location"

    iget-object v5, p0, Lcom/android/exsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 386
    const v1, 0x7f0c093b

    .line 385
    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 398
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->injector:Lcom/android/exsettings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/exsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 341
    return-void

    .line 344
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c0940

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c093f

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c093e

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 353
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c093d

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 362
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 365
    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 367
    goto :goto_3

    :cond_9
    move v1, v3

    .line 369
    goto :goto_4

    .line 388
    :cond_a
    if-eqz v0, :cond_b

    .line 389
    const v1, 0x7f0c0ee8

    invoke-direct {p0, v3, v1}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 391
    :cond_b
    const v1, 0x7f0c0ee9

    invoke-direct {p0, v2, v1}, Lcom/android/exsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 323
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 331
    invoke-super {p0, p1}, Lcom/android/exsettings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 326
    :pswitch_0
    const-class v1, Lcom/android/exsettings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 327
    const v3, 0x7f0c094b

    .line 328
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 325
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 329
    const/4 v1, 0x1

    return v1

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    .line 173
    :cond_1
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onPause()V

    .line 160
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/exsettings/location/LocationSettings;->updateLtoServiceStatus(Landroid/content/Context;Z)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/exsettings/location/LocationSettingsBase;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/android/exsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 153
    iget-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/exsettings/location/LocationSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/location/LocationSettings;->mValidListener:Z

    .line 150
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 406
    if-eqz p2, :cond_0

    .line 407
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/location/LocationSettings;->setLocationMode(I)V

    .line 405
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
