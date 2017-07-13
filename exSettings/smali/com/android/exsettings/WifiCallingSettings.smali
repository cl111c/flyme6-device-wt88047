.class public Lcom/android/exsettings/WifiCallingSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WifiCallingSettings.java"

# interfaces
.implements Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/WifiCallingSettings$1;,
        Lcom/android/exsettings/WifiCallingSettings$2;
    }
.end annotation


# instance fields
.field private mButtonWfcMode:Landroid/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/WifiCallingSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/WifiCallingSettings;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mValidListener:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mEditableWfcMode:Z

    .line 65
    new-instance v0, Lcom/android/exsettings/WifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/WifiCallingSettings$1;-><init>(Lcom/android/exsettings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 130
    new-instance v0, Lcom/android/exsettings/WifiCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/WifiCallingSettings$2;-><init>(Lcom/android/exsettings/WifiCallingSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static getWfcModeSummary(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wfcMode"    # I

    .prologue
    .line 281
    const v0, 0x104014f

    .line 282
    .local v0, "resId":I
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 294
    const-string/jumbo v1, "WifiCallingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 285
    :pswitch_0
    const v0, 0x1040152

    .line 286
    goto :goto_0

    .line 288
    :pswitch_1
    const v0, 0x1040151

    .line 289
    goto :goto_0

    .line 291
    :pswitch_2
    const v0, 0x1040150

    .line 292
    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isWfcModeSupported()Z
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 302
    const v1, 0x7f100011

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 116
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v5, "alertTitle"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 117
    .local v4, "title":Ljava/lang/CharSequence;
    const-string/jumbo v5, "alertMessage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 119
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 122
    const v6, 0x1080027

    .line 120
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 123
    const v6, 0x104000a

    const/4 v7, 0x0

    .line 120
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 125
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 113
    return-void
.end method

.method private updateButtonWfcMode(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcEnabled"    # Z
    .param p3, "wfcMode"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {p1, p3}, Lcom/android/exsettings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 253
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 256
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/exsettings/WifiCallingSettings;->isWfcModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 261
    :goto_0
    iget-boolean v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mEditableWfcMode:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 251
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 98
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 99
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->getSwitch()Lcom/android/exsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    .line 100
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/android/exsettings/WifiCallingSettings;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x7f0c07c6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v2, 0x7f080074

    invoke-virtual {p0, v2}, Lcom/android/exsettings/WifiCallingSettings;->addPreferencesFromResource(I)V

    .line 162
    const-string/jumbo v2, "wifi_calling_mode"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/WifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    .line 163
    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 166
    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v2, "carrier_config"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 170
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 172
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v2, "editable_wfc_mode_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mEditableWfcMode:Z

    .line 157
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 219
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, "context":Landroid/content/Context;
    iget-boolean v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mValidListener:Z

    if-eqz v2, :cond_0

    .line 222
    iput-boolean v3, p0, Lcom/android/exsettings/WifiCallingSettings;->mValidListener:Z

    .line 224
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 225
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 227
    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/exsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 230
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 267
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    .local v0, "buttonMode":I
    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v2

    .line 271
    .local v2, "currentMode":I
    if-eq v0, v2, :cond_0

    .line 272
    invoke-static {v1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(Landroid/content/Context;I)V

    .line 273
    iget-object v3, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v1, v0}, Lcom/android/exsettings/WifiCallingSettings;->getWfcModeSummary(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getMetricsCategory()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 277
    .end local v0    # "buttonMode":I
    .end local v2    # "currentMode":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/exsettings/WifiCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 186
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 188
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v5, p0}, Lcom/android/exsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/exsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 190
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mValidListener:Z

    .line 193
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/WifiCallingSettings;->isWfcModeSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 195
    const-string/jumbo v6, "wfc_ims_mode"

    .line 196
    const/4 v7, 0x2

    .line 194
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_1
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 202
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 203
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v4

    .line 204
    .local v4, "wfcMode":I
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mButtonWfcMode:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v0, v3, v4}, Lcom/android/exsettings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 207
    iget-object v5, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/exsettings/WifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "alertShow"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    invoke-direct {p0, v1}, Lcom/android/exsettings/WifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    .line 179
    :cond_2
    return-void

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "wfcMode":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "wfcEnabled":Z
    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 242
    invoke-static {v0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    .line 243
    .local v1, "wfcMode":I
    invoke-direct {p0, v0, p2, v1}, Lcom/android/exsettings/WifiCallingSettings;->updateButtonWfcMode(Landroid/content/Context;ZI)V

    .line 244
    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 237
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/exsettings/WifiCallingSettings;->getMetricsCategory()I

    move-result v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0
.end method
