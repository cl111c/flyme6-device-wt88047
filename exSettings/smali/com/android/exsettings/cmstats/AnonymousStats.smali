.class public Lcom/android/exsettings/cmstats/AnonymousStats;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AnonymousStats.java"


# instance fields
.field mStatsSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static getLastJobId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_job_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNextJobId(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getLastJobId(Landroid/content/Context;)I

    move-result v0

    .line 94
    .local v0, "lastId":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :goto_0
    invoke-static {p0, v0}, Lcom/android/exsettings/cmstats/AnonymousStats;->setLastJobId(Landroid/content/Context;I)V

    .line 100
    return v0

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string/jumbo v0, "CMStats"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static setLastJobId(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "last_job_id"

    .line 86
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method

.method public static updateLastSynced(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 105
    const v0, -0x7ffffffd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cmstats/AnonymousStats;->addPreferencesFromResource(I)V

    .line 55
    const-string/jumbo v0, "stats_collection"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/cmstats/AnonymousStats;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/exsettings/cmstats/AnonymousStats;->mStatsSwitch:Landroid/preference/SwitchPreference;

    .line 52
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/exsettings/cmstats/AnonymousStats;->mStatsSwitch:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/exsettings/cmstats/AnonymousStats;->mStatsSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 62
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "stats_collection_reported"

    .line 64
    invoke-static {v1, v2, v3, v3}, Lcyanogenmod/providers/CMSettings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/cmstats/AnonymousStats;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/cmstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;)V

    .line 69
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "checked":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method
