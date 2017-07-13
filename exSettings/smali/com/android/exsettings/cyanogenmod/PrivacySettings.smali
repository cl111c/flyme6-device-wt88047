.class public Lcom/android/exsettings/cyanogenmod/PrivacySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"


# instance fields
.field private mBlacklist:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBlacklistSummary()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c02fc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 74
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c02fb

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const v0, -0x7ffffff0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 44
    const-string/jumbo v3, "blacklist"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    .line 47
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 49
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/exsettings/Utils;->isUserOwner()Z

    move-result v0

    .line 50
    .local v0, "isOwner":Z
    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 52
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v3, "cmstats"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 56
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string/jumbo v3, "android.hardware.telephony"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 40
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 59
    .restart local v2    # "root":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/android/exsettings/cyanogenmod/PrivacySettings;->updateBlacklistSummary()V

    .line 69
    return-void
.end method
