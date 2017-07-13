.class public Lcom/android/exsettings/WirelessSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/WirelessSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/SwitchPreference;

.field private mButtonWfc:Landroid/preference/PreferenceScreen;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mManageMobilePlanMessage:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -set0(Lcom/android/exsettings/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/WirelessSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/android/exsettings/WirelessSettings$1;

    invoke-direct {v0}, Lcom/android/exsettings/WirelessSettings$1;-><init>()V

    .line 428
    sput-object v0, Lcom/android/exsettings/WirelessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v0, "WirelessSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 422
    const v0, 0x7f0c0dde

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 212
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 411
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 412
    const-string/jumbo v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 414
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 415
    iget-object v3, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    .line 414
    invoke-virtual {v1, v2, v3}, Lcom/android/exsettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 417
    .end local v0    # "isChoiceYes":Ljava/lang/Boolean;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 410
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super/range {p0 .. p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string/jumbo v21, "mManageMobilePlanMessage"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 221
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onCreate: mManageMobilePlanMessage="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v21, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 224
    const-string/jumbo v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 226
    const-string/jumbo v21, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    .line 228
    const v21, 0x7f080079

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 230
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 231
    .local v12, "myUserId":I
    if-eqz v12, :cond_10

    const/4 v8, 0x1

    .line 233
    .local v8, "isSecondaryUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 234
    .local v2, "activity":Landroid/app/Activity;
    const-string/jumbo v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    .line 235
    const-string/jumbo v21, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/SwitchPreference;

    .line 236
    .local v13, "nfc":Landroid/preference/SwitchPreference;
    const-string/jumbo v21, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 237
    .local v3, "androidBeam":Landroid/preference/PreferenceScreen;
    const-string/jumbo v21, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 239
    .local v15, "nsd":Landroid/preference/SwitchPreference;
    const-string/jumbo v21, "nfc_category_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 238
    check-cast v14, Landroid/preference/PreferenceCategory;

    .line 241
    .local v14, "nfcCategory":Landroid/preference/PreferenceCategory;
    new-instance v21, Lcom/android/exsettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/android/exsettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    .line 242
    new-instance v21, Lcom/android/exsettings/nfc/NfcEnabler;

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v13, v3}, Lcom/android/exsettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    .line 244
    const-string/jumbo v21, "wifi_calling_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 251
    const-string/jumbo v22, "airplane_mode_toggleable_radios"

    .line 250
    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 254
    .local v20, "toggleable":Ljava/lang/String;
    if-nez v8, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 255
    const v22, 0x1120076

    .line 254
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 256
    :goto_1
    if-eqz v9, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no_config_mobile_networks"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    .line 256
    if-eqz v21, :cond_12

    .line 258
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 259
    .local v19, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 260
    .local v18, "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    :goto_2
    if-eqz v20, :cond_14

    const-string/jumbo v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 274
    :goto_3
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no_config_vpn"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 275
    :cond_3
    const-string/jumbo v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 279
    :cond_4
    if-eqz v20, :cond_5

    const-string/jumbo v21, "bluetooth"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 284
    :cond_5
    if-eqz v20, :cond_15

    const-string/jumbo v21, "nfc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 290
    :goto_4
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    .line 298
    :cond_6
    if-nez v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no_config_mobile_networks"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    .line 298
    if-eqz v21, :cond_8

    .line 300
    :cond_7
    const-string/jumbo v21, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 305
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 306
    const v22, 0x7f100008

    .line 305
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 307
    .local v7, "isMobilePlanEnabled":Z
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 308
    :cond_9
    const-string/jumbo v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 309
    .local v17, "pref":Landroid/preference/Preference;
    if-eqz v17, :cond_a

    .line 310
    const-string/jumbo v21, "manage_mobile_plan"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 315
    .end local v17    # "pref":Landroid/preference/Preference;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "android.hardware.type.television"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 316
    const-string/jumbo v21, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 320
    :cond_b
    const-string/jumbo v21, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 322
    .local v11, "mGlobalProxy":Landroid/preference/Preference;
    const-string/jumbo v21, "device_policy"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 321
    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 324
    .local v10, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v21

    if-nez v21, :cond_16

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    const-string/jumbo v21, "connectivity"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 330
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v8, :cond_c

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no_config_tethering"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    .line 330
    if-eqz v21, :cond_17

    .line 332
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string/jumbo v22, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 344
    const v22, 0x112007f

    .line 343
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 346
    .local v6, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v6, :cond_d

    .line 347
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "com.android.cellbroadcastreceiver"

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 348
    const/16 v22, 0x2

    .line 347
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 349
    const/4 v6, 0x0

    .line 355
    .end local v6    # "isCellBroadcastAppLinkEnabled":Z
    :cond_d
    :goto_7
    if-nez v8, :cond_e

    if-eqz v6, :cond_e

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/WirelessSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "no_config_cell_broadcasts"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v21

    .line 355
    if-eqz v21, :cond_f

    .line 357
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 358
    .restart local v19    # "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v21, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 359
    .restart local v18    # "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_f

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_f
    return-void

    .line 231
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v7    # "isMobilePlanEnabled":Z
    .end local v8    # "isSecondaryUser":Z
    .end local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "mGlobalProxy":Landroid/preference/Preference;
    .end local v13    # "nfc":Landroid/preference/SwitchPreference;
    .end local v14    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .end local v15    # "nsd":Landroid/preference/SwitchPreference;
    .end local v20    # "toggleable":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 254
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "androidBeam":Landroid/preference/PreferenceScreen;
    .restart local v13    # "nfc":Landroid/preference/SwitchPreference;
    .restart local v14    # "nfcCategory":Landroid/preference/PreferenceCategory;
    .restart local v15    # "nsd":Landroid/preference/SwitchPreference;
    .restart local v20    # "toggleable":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .local v9, "isWimaxEnabled":Z
    goto/16 :goto_1

    .line 262
    .end local v9    # "isWimaxEnabled":Z
    :cond_12
    if-eqz v20, :cond_13

    const-string/jumbo v21, "wimax"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    if-eqz v9, :cond_2

    .line 264
    :cond_13
    const-string/jumbo v21, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 265
    .restart local v18    # "ps":Landroid/preference/Preference;
    const-string/jumbo v21, "toggle_airplane"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    .end local v18    # "ps":Landroid/preference/Preference;
    :cond_14
    const-string/jumbo v21, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string/jumbo v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 285
    :cond_15
    const-string/jumbo v21, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string/jumbo v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v21, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    const-string/jumbo v22, "toggle_airplane"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 325
    .restart local v7    # "isMobilePlanEnabled":Z
    .restart local v10    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "mGlobalProxy":Landroid/preference/Preference;
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 334
    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    :cond_17
    const-string/jumbo v21, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 335
    .local v16, "p":Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/exsettingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 338
    invoke-static/range {v21 .. v21}, Lcom/android/exsettings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_18
    const/16 v21, 0x1

    goto :goto_8

    .line 352
    .end local v16    # "p":Landroid/preference/Preference;
    .restart local v6    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v5

    .line 353
    .local v5, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .local v6, "isCellBroadcastAppLinkEnabled":Z
    goto/16 :goto_7
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 190
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/android/exsettings/WirelessSettings$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/WirelessSettings$2;-><init>(Lcom/android/exsettings/WirelessSettings;)V

    .line 193
    const v2, 0x104000a

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onManageMobilePlanClick()V
    .locals 13

    .prologue
    const v12, 0x7f0c0935

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 121
    const-string/jumbo v8, "onManageMobilePlanClick:"

    invoke-direct {p0, v8}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 122
    iput-object v9, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 125
    .local v6, "resources":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 126
    .local v3, "ni":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 128
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.ACTION_CARRIER_SETUP"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v5, "provisioningIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v5}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 141
    :cond_0
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 143
    const-string/jumbo v8, "android.intent.action.MAIN"

    .line 144
    const-string/jumbo v9, "android.intent.category.APP_BROWSER"

    .line 143
    invoke-static {v8, v9}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 145
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    const/high16 v8, 0x10400000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/exsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onManageMobilePlanClick: message="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v11}, Lcom/android/exsettings/WirelessSettings;->showDialog(I)V

    .line 120
    :cond_1
    return-void

    .line 132
    .restart local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v11, :cond_3

    .line 133
    const-string/jumbo v8, "WirelessSettings"

    const-string/jumbo v9, "Multiple matching carrier apps found, launching the first."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v5}, Lcom/android/exsettings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void

    .line 150
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "WirelessSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "operatorName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 159
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 162
    const v8, 0x7f0c0934

    .line 161
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_5
    new-array v8, v11, [Ljava/lang/Object;

    .line 165
    aput-object v4, v8, v10

    .line 164
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    :cond_6
    new-array v8, v11, [Ljava/lang/Object;

    .line 169
    aput-object v4, v8, v10

    .line 168
    invoke-virtual {v6, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    .end local v0    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "operatorName":Ljava/lang/String;
    .end local v5    # "provisioningIntent":Landroid/content/Intent;
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v8

    if-nez v8, :cond_8

    .line 174
    const v8, 0x7f0c0936

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 177
    :cond_8
    const v8, 0x7f0c0937

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 400
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/AirplaneModeEnabler;->pause()V

    .line 401
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/nfc/NfcEnabler;->pause()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/NsdEnabler;->pause()V

    .line 397
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/WirelessSettings;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    .line 106
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    invoke-virtual {p0, v0, v3}, Lcom/android/exsettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 111
    return v3

    .line 112
    :cond_0
    const-string/jumbo v0, "manage_mobile_plan"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->onManageMobilePlanClick()V

    .line 116
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 365
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 367
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/exsettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/exsettings/AirplaneModeEnabler;->resume()V

    .line 368
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mNfcEnabler:Lcom/android/exsettings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/exsettings/nfc/NfcEnabler;->resume()V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mNsdEnabler:Lcom/android/exsettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/exsettings/NsdEnabler;->resume()V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 377
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/android/exsettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 380
    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mButtonWfc:Landroid/preference/PreferenceScreen;

    .line 381
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 380
    invoke-static {v0, v2}, Lcom/android/exsettings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 364
    :goto_0
    return-void

    .line 383
    :cond_2
    const-string/jumbo v1, "wifi_calling_settings"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    iget-object v0, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const-string/jumbo v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/exsettings/WirelessSettings;->mManageMobilePlanMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method
