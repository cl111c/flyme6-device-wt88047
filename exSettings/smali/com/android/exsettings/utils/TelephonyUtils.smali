.class public Lcom/android/exsettings/utils/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/exsettings/utils/TelephonyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkModeString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkMode"    # I
    .param p2, "subId"    # I

    .prologue
    .line 36
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    .line 37
    invoke-static {p0}, Lcom/android/exsettings/utils/TelephonyUtils;->show4GForLTE(Landroid/content/Context;)Z

    move-result v3

    .line 38
    invoke-static {p0, p2}, Lcom/android/exsettings/utils/TelephonyUtils;->isSupportTdscdma(Landroid/content/Context;I)Z

    move-result v4

    .line 39
    invoke-static {p0, p2}, Lcom/android/exsettings/utils/TelephonyUtils;->isLteOnCdma(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/exsettings/utils/TelephonyUtils;->isGlobalCDMA(Landroid/content/Context;IZ)Z

    move-result v5

    .line 40
    invoke-static {p0}, Lcom/android/exsettings/utils/TelephonyUtils;->isWorldMode(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move v1, p1

    .line 34
    invoke-static/range {v0 .. v6}, Lcom/android/exsettings/utils/TelephonyUtils;->getNetworkModeString(Landroid/content/Context;IIZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkModeString(Landroid/content/Context;IIZZZZ)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkMode"    # I
    .param p2, "phoneType"    # I
    .param p3, "show4GForLTE"    # Z
    .param p4, "isSupportTdsCdma"    # Z
    .param p5, "isGlobalCdma"    # Z
    .param p6, "isWorldMode"    # Z

    .prologue
    const/4 v6, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "r":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 117
    sget-object v3, Lcom/android/exsettings/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown phone mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2    # "r":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_9

    .line 122
    invoke-static {p0}, Lcom/android/exsettings/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, "phoneResources":Landroid/content/res/Resources;
    if-eqz v1, :cond_9

    .line 124
    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.android.phone"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "id":I
    if-lez v0, :cond_8

    .line 126
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 51
    .end local v0    # "id":I
    .end local v1    # "phoneResources":Landroid/content/res/Resources;
    .restart local v2    # "r":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "network_3G"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 54
    .local v2, "r":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "network_wcdma_only"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 57
    .local v2, "r":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v2, "network_gsm_umts"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 60
    .local v2, "r":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v2, "network_wcdma_pref"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 63
    .local v2, "r":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v2, "network_gsm_only"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 66
    .local v2, "r":Ljava/lang/String;
    :pswitch_5
    if-eqz p3, :cond_0

    .line 67
    const-string/jumbo v2, "network_4G"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .local v2, "r":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "network_lte_gsm_wcdma"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 70
    .local v2, "r":Ljava/lang/String;
    :pswitch_6
    if-eqz p3, :cond_1

    .line 71
    const-string/jumbo v2, "network_4G"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .local v2, "r":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "network_lte_cdma"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 74
    .local v2, "r":Ljava/lang/String;
    :pswitch_7
    if-eqz p3, :cond_2

    .line 75
    const-string/jumbo v2, "network_4G_only"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .local v2, "r":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "network_lte_only"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 78
    .local v2, "r":Ljava/lang/String;
    :pswitch_8
    if-eqz p3, :cond_3

    .line 79
    const-string/jumbo v2, "network_4G"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .local v2, "r":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "network_lte_cdma_and_evdo"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 82
    .local v2, "r":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v2, "network_3G"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 85
    .local v2, "r":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v2, "network_cdma"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 88
    .local v2, "r":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v2, "network_evdo_no_cdma"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 91
    .local v2, "r":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v2, "network_3g_global"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 94
    .local v2, "r":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v2, "network_cdma_no_evdo"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 97
    .local v2, "r":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v2, "network_tdscdma"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 105
    .local v2, "r":Ljava/lang/String;
    :pswitch_f
    if-eqz p4, :cond_4

    .line 106
    const-string/jumbo v2, "network_lte"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 108
    .local v2, "r":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    if-nez p5, :cond_5

    if-eqz p6, :cond_6

    .line 109
    :cond_5
    const-string/jumbo v2, "network_global"

    .local v2, "r":Ljava/lang/String;
    goto :goto_0

    .line 111
    .local v2, "r":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    .line 112
    const-string/jumbo v2, "network_4G"

    .local v2, "r":Ljava/lang/String;
    goto/16 :goto_0

    .local v2, "r":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "network_lte"

    .local v2, "r":Ljava/lang/String;
    goto/16 :goto_0

    .line 128
    .end local v2    # "r":Ljava/lang/String;
    .restart local v0    # "id":I
    .restart local v1    # "phoneResources":Landroid/content/res/Resources;
    :cond_8
    sget-object v3, Lcom/android/exsettings/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "couldn\'t find resource id with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "id":I
    .end local v1    # "phoneResources":Landroid/content/res/Resources;
    :cond_9
    return-object v6

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_5
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method private static getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    :try_start_0
    const-string/jumbo v2, "com.android.phone"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 224
    .local v1, "packageContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 225
    .end local v1    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 228
    sget-object v2, Lcom/android/exsettings/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "couldn\'t locate resources for com.android.phone!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x0

    return-object v2
.end method

.method private static isGlobalCDMA(Landroid/content/Context;IZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "isLteOnCdma"    # Z

    .prologue
    .line 178
    const-string/jumbo v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 179
    .local v1, "carrierConfigMan":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 180
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz p2, :cond_0

    .line 181
    const-string/jumbo v2, "show_cdma_choices_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 180
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLteOnCdma(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportTdscdma(Landroid/content/Context;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 136
    invoke-static {p0}, Lcom/android/exsettings/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    .line 137
    .local v4, "phoneResources":Landroid/content/res/Resources;
    if-eqz v4, :cond_4

    .line 138
    const-string/jumbo v6, "config_support_tdscdma"

    .line 139
    const-string/jumbo v8, "bool"

    const-string/jumbo v9, "com.android.phone"

    .line 138
    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "id":I
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    return v10

    .line 144
    :cond_0
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v6, "config_support_tdscdma_roaming_on_networks"

    .line 148
    const-string/jumbo v8, "string-array"

    const-string/jumbo v9, "com.android.phone"

    .line 147
    invoke-virtual {v4, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "tdcdmaArrId":I
    if-lez v5, :cond_4

    .line 151
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "numericArray":[Ljava/lang/String;
    array-length v6, v2

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    .line 153
    :cond_1
    return v7

    .line 155
    :cond_2
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v1, v2, v6

    .line 156
    .local v1, "numeric":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 157
    return v10

    .line 155
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "id":I
    .end local v1    # "numeric":Ljava/lang/String;
    .end local v2    # "numericArray":[Ljava/lang/String;
    .end local v3    # "operatorNumeric":Ljava/lang/String;
    .end local v5    # "tdcdmaArrId":I
    :cond_4
    return v7
.end method

.method private static isWorldMode(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 190
    const/4 v5, 0x0

    .line 192
    .local v5, "worldModeOn":Z
    const-string/jumbo v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 191
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 194
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/android/exsettings/utils/TelephonyUtils;->getPhoneResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 195
    .local v3, "phoneResources":Landroid/content/res/Resources;
    if-eqz v3, :cond_1

    .line 196
    const-string/jumbo v6, "config_world_mode"

    .line 197
    const-string/jumbo v7, "string"

    const-string/jumbo v8, "com.android.phone"

    .line 196
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "id":I
    if-lez v2, :cond_4

    .line 200
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 203
    const-string/jumbo v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 207
    array-length v6, v0

    if-ne v6, v9, :cond_0

    aget-object v6, v0, v10

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 208
    :cond_0
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    aget-object v6, v0, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    .end local v0    # "configArray":[Ljava/lang/String;
    .end local v1    # "configString":Ljava/lang/String;
    .end local v2    # "id":I
    :cond_1
    :goto_0
    return v5

    .line 209
    .restart local v0    # "configArray":[Ljava/lang/String;
    .restart local v1    # "configString":Ljava/lang/String;
    .restart local v2    # "id":I
    :cond_2
    if-eqz v4, :cond_1

    aget-object v6, v0, v9

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 206
    if-eqz v6, :cond_1

    .line 210
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "configArray":[Ljava/lang/String;
    .end local v1    # "configString":Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/exsettings/utils/TelephonyUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "couldn\'t find resource of config_world_mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static show4GForLTE(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 167
    :try_start_0
    const-string/jumbo v3, "com.android.systemui"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, "con":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "config_show4GForLTE"

    .line 169
    const-string/jumbo v5, "bool"

    const-string/jumbo v6, "com.android.systemui"

    .line 168
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 171
    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "id":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v7
.end method
