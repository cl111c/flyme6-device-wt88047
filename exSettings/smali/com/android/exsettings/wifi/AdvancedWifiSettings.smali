.class public Lcom/android/exsettings/wifi/AdvancedWifiSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/AdvancedWifiSettings$WpsFragment;,
        Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsPinPref:Landroid/preference/Preference;

.field private mWpsPushPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    return-void
.end method

.method private initPreferences()V
    .locals 20

    .prologue
    .line 132
    const-string/jumbo v17, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    .line 133
    .local v7, "notifyOpenNetworks":Landroid/preference/SwitchPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 134
    const-string/jumbo v18, "wifi_networks_available_notification_on"

    const/16 v19, 0x0

    .line 133
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 134
    const/16 v18, 0x1

    .line 133
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 137
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v17, "android.credentials.INSTALL_AS_USER"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v17, "com.android.certinstaller"

    .line 139
    const-string/jumbo v18, "com.android.certinstaller.CertInstallerMain"

    .line 138
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v17, "install_as_uid"

    const/16 v18, 0x3f2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string/jumbo v17, "install_credentials"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 142
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 145
    .local v3, "context":Landroid/content/Context;
    const-string/jumbo v17, "wifi_assistant"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    .line 147
    invoke-static {v3}, Landroid/net/NetworkScorerAppManager;->getAllValidScorers(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v9

    .line 148
    .local v9, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_0

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_1
    :goto_1
    new-instance v14, Landroid/content/Intent;

    .line 156
    const-class v17, Lcom/android/exsettings/Settings$WifiP2pSettingsActivity;

    .line 155
    move-object/from16 v0, v17

    invoke-direct {v14, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v14, "wifiDirectIntent":Landroid/content/Intent;
    const-string/jumbo v17, "wifi_direct"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 158
    .local v15, "wifiDirectPref":Landroid/preference/Preference;
    invoke-virtual {v15, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v16

    .line 162
    .local v16, "wifiState":I
    const-string/jumbo v17, "wps_push_button"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPushPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v17, 0x3

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    const-string/jumbo v17, "wps_pin_entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/exsettings/wifi/AdvancedWifiSettings$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/exsettings/wifi/AdvancedWifiSettings;)V

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWpsPinPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v17, 0x3

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 183
    const-string/jumbo v17, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 185
    .local v4, "frequencyPref":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 186
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v12

    .line 188
    .local v12, "value":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_a

    .line 189
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V

    .line 201
    .end local v12    # "value":I
    :cond_2
    :goto_4
    const-string/jumbo v17, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 202
    .local v2, "ccodePref":Landroid/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 204
    const v18, 0x7f100017

    .line 203
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 205
    .local v5, "hideWifiRegion":Z
    if-eqz v5, :cond_c

    .line 206
    const-string/jumbo v17, "wifi_countrycode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->removePreference(Ljava/lang/String;)V

    .line 218
    .end local v5    # "hideWifiRegion":Z
    :cond_3
    :goto_5
    const-string/jumbo v17, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    .line 219
    .local v10, "sleepPolicyPref":Landroid/preference/ListPreference;
    if-eqz v10, :cond_5

    .line 220
    invoke-static {v3}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 221
    const v17, 0x7f0a001d

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 223
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 225
    const-string/jumbo v18, "wifi_sleep_policy"

    .line 226
    const/16 v19, 0x2

    .line 224
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 227
    .restart local v12    # "value":I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "stringValue":Ljava/lang/String;
    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 130
    .end local v11    # "stringValue":Ljava/lang/String;
    .end local v12    # "value":I
    :cond_5
    return-void

    .line 133
    .end local v2    # "ccodePref":Landroid/preference/ListPreference;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "pref":Landroid/preference/Preference;
    .end local v9    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    .end local v10    # "sleepPolicyPref":Landroid/preference/ListPreference;
    .end local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .end local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .end local v16    # "wifiState":I
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 149
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "pref":Landroid/preference/Preference;
    .restart local v9    # "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/AppListSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initWifiAssistantPreference(Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 170
    .restart local v14    # "wifiDirectIntent":Landroid/content/Intent;
    .restart local v15    # "wifiDirectPref":Landroid/preference/Preference;
    .restart local v16    # "wifiState":I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 181
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 192
    .restart local v4    # "frequencyPref":Landroid/preference/ListPreference;
    .restart local v12    # "value":I
    :cond_a
    const-string/jumbo v17, "AdvancedWifiSettings"

    const-string/jumbo v18, "Failed to fetch frequency band"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 195
    .end local v12    # "value":I
    :cond_b
    if-eqz v4, :cond_2

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 208
    .restart local v2    # "ccodePref":Landroid/preference/ListPreference;
    .restart local v5    # "hideWifiRegion":Z
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    .line 210
    .local v13, "value":Ljava/lang/String;
    if-eqz v13, :cond_d

    .line 211
    invoke-virtual {v2, v13}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 213
    :cond_d
    const-string/jumbo v17, "AdvancedWifiSettings"

    const-string/jumbo v18, "Failed to fetch country code"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private initWifiAssistantPreference(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "scorers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 235
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 236
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 237
    .local v1, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "scorer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    .line 238
    .local v3, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v5, v3, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v3    # "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiAssistantPreference:Lcom/android/exsettings/AppListSwitchPreference;

    .line 242
    iget-object v6, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v6}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v6

    .line 241
    invoke-virtual {v5, v2, v6}, Lcom/android/exsettings/AppListSwitchPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 9

    .prologue
    const v8, 0x7f0c0861

    const/4 v7, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 357
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string/jumbo v6, "mac_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 358
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 359
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 363
    const-string/jumbo v6, "current_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 364
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "ipAddress":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 366
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .end local v1    # "ipAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 353
    return-void

    .line 358
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .local v2, "macAddress":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    .locals 3
    .param p1, "frequencyBandPref"    # Landroid/preference/Preference;
    .param p2, "index"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "summaries":[Ljava/lang/String;
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p2, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    const v2, 0x7f0a001d

    .line 250
    .local v2, "summaryArrayResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 252
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 254
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 249
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    :cond_0
    const v2, 0x7f0a001c

    .restart local v2    # "summaryArrayResId":I
    goto :goto_0

    .line 251
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x68

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "network_score"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 112
    iput-object v0, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f080073

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 286
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 287
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v9, "frequency_band"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 291
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 292
    .local v7, "value":I
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v10}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 293
    invoke-direct {p0, p1, v7}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateFrequencyBandSummary(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v7    # "value":I
    :cond_0
    const-string/jumbo v9, "wifi_countrycode"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 329
    :try_start_1
    iget-object v10, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :cond_1
    const-string/jumbo v9, "sleep_policy"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 339
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 340
    .local v6, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_sleep_policy"

    .line 341
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 340
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    invoke-direct {p0, p1, v6}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 350
    .end local v6    # "stringValue":Ljava/lang/String;
    :cond_2
    return v13

    .line 294
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v9, 0x7f0c0778

    invoke-static {v1, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 297
    return v12

    .line 299
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string/jumbo v9, "wifi_assistant"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 301
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/net/NetworkScorerAppManager;->getScorer(Landroid/content/Context;Ljava/lang/String;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v8

    .line 302
    .local v8, "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v8, :cond_4

    .line 303
    iget-object v9, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v9, v10}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    .line 304
    return v13

    .line 307
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v4, "intent":Landroid/content/Intent;
    iget-object v9, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 312
    iget-object v9, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 313
    iget-object v10, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    .line 312
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 324
    return v12

    .line 316
    :cond_5
    const-string/jumbo v9, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v9, "packageName"

    .line 318
    iget-object v10, v8, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 317
    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 330
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "wifiAssistant":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c00dc

    invoke-static {v9, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 333
    return v12

    .line 343
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 344
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const v9, 0x7f0c071d

    invoke-static {v1, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 346
    return v12
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 272
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 276
    const-string/jumbo v4, "wifi_networks_available_notification_on"

    .line 277
    check-cast p2, Landroid/preference/SwitchPreference;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 275
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    return v2

    .line 277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 120
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/android/exsettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 117
    return-void
.end method
