.class public Lcom/android/exsettings/deviceinfo/SimStatus;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/SimStatus$1;
    }
.end annotation


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/deviceinfo/SimStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 103
    new-instance v0, Lcom/android/exsettings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/SimStatus$1;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 210
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object p2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 221
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 260
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c052e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 277
    :goto_0
    const-string/jumbo v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 264
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c052c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c052d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c052b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_3
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c052a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 12

    .prologue
    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, "networktype":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 230
    .local v7, "subId":I
    iget-object v8, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 231
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 230
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 232
    .local v0, "actualDataNetworkType":I
    iget-object v8, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 233
    iget-object v9, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 232
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 234
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_2

    .line 235
    iget-object v8, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    .end local v5    # "networktype":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 242
    .local v6, "show4GForLTE":Z
    :try_start_0
    const-string/jumbo v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/exsettings/deviceinfo/SimStatus;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 243
    .local v2, "con":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "config_show4GForLTE"

    .line 244
    const-string/jumbo v10, "bool"

    const-string/jumbo v11, "com.android.systemui"

    .line 243
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "id":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 250
    .end local v2    # "con":Landroid/content/Context;
    .end local v4    # "id":I
    .end local v6    # "show4GForLTE":Z
    :goto_1
    if-eqz v5, :cond_1

    const-string/jumbo v8, "LTE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 251
    const-string/jumbo v5, "4G"

    .line 253
    :cond_1
    const-string/jumbo v8, "network_type"

    invoke-direct {p0, v8, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 236
    .restart local v5    # "networktype":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 237
    iget-object v8, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "networktype":Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v5    # "networktype":Ljava/lang/String;
    .restart local v6    # "show4GForLTE":Z
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "SimStatus"

    const-string/jumbo v9, "NameNotFoundException for show4GFotLTE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updatePhoneInfos()V
    .locals 4

    .prologue
    .line 369
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 370
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 372
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    .line 372
    if-eqz v2, :cond_1

    .line 374
    if-nez v1, :cond_0

    .line 375
    const-string/jumbo v2, "SimStatus"

    const-string/jumbo v3, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_0
    iput-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 380
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string/jumbo v2, "subscription"

    .line 383
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 382
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 385
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 384
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 386
    new-instance v2, Lcom/android/exsettings/deviceinfo/SimStatus$2;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus$2;-><init>(Lcom/android/exsettings/deviceinfo/SimStatus;I)V

    iput-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 368
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 347
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 349
    const-string/jumbo v2, "br"

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 350
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 349
    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 355
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 357
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "number"

    invoke-direct {p0, v2, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v2, :cond_2

    .line 364
    const-string/jumbo v2, "latest_area_info"

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 346
    :cond_2
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v7, 0x1

    .line 281
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 282
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 284
    .local v1, "dataState":I
    packed-switch v2, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Lcom/android/exsettings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "voiceDisplay":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lcom/android/exsettings/Utils;->getServiceStateString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string/jumbo v4, "service_state"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 301
    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    .line 300
    const v6, 0x7f0c03c2

    invoke-virtual {p0, v6, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    const-string/jumbo v4, "roaming_state"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0525

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_1
    const-string/jumbo v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 287
    .end local v0    # "dataDisplay":Ljava/lang/String;
    .end local v3    # "voiceDisplay":Ljava/lang/String;
    :pswitch_1
    if-ne v7, v1, :cond_0

    .line 288
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 306
    .restart local v0    # "dataDisplay":Ljava/lang/String;
    .restart local v3    # "voiceDisplay":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "roaming_state"

    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0526

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x2b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 128
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 131
    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0c050a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 133
    const-string/jumbo v3, "signal_strength"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 135
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 136
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "slot_id"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "slotId":I
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 139
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 141
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "slot_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0355

    invoke-virtual {p0, v4, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/exsettings/deviceinfo/SimStatus;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->finish()V

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 188
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 159
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updatePreference()V

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 163
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 164
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->updateDataState()V

    .line 165
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 166
    const/16 v3, 0x141

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 169
    iget-boolean v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 170
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/exsettings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string/jumbo v1, "subscription"

    .line 175
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 177
    const-string/jumbo v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    .line 176
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exsettings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 157
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    .line 318
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v5, :cond_4

    .line 319
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 320
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 321
    .local v0, "dataState":I
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    .local v1, "r":Landroid/content/res/Resources;
    if-ne v9, v4, :cond_1

    .line 324
    if-ne v9, v0, :cond_1

    .line 326
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    return-void

    .line 325
    :cond_1
    const/4 v5, 0x3

    if-eq v5, v4, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 331
    .local v3, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 333
    .local v2, "signalAsu":I
    if-ne v6, v3, :cond_2

    .line 334
    const/4 v3, 0x0

    .line 337
    :cond_2
    if-ne v6, v2, :cond_3

    .line 338
    const/4 v2, 0x0

    .line 341
    :cond_3
    iget-object v5, p0, Lcom/android/exsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 342
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 341
    const v7, 0x7f0c0e38

    invoke-virtual {v1, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    .end local v0    # "dataState":I
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "signalAsu":I
    .end local v3    # "signalDbm":I
    .end local v4    # "state":I
    :cond_4
    return-void
.end method
