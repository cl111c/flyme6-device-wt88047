.class final Lcom/android/exsettings/WirelessSettings$1;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "toggle_nsd"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const-string/jumbo v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 445
    .local v11, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 446
    .local v8, "myUserId":I
    if-eqz v8, :cond_b

    const/4 v5, 0x1

    .line 447
    .local v5, "isSecondaryUser":Z
    :goto_0
    if-nez v5, :cond_c

    .line 448
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 449
    const v13, 0x1120076

    .line 448
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 450
    :goto_1
    if-eqz v6, :cond_0

    .line 451
    const-string/jumbo v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v12

    .line 450
    if-eqz v12, :cond_1

    .line 452
    :cond_0
    const-string/jumbo v12, "wimax_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1
    if-eqz v5, :cond_2

    .line 456
    const-string/jumbo v12, "vpn_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_2
    const-string/jumbo v12, "nfc"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 460
    check-cast v7, Landroid/nfc/NfcManager;

    .line 462
    .local v7, "manager":Landroid/nfc/NfcManager;
    if-eqz v7, :cond_3

    .line 463
    invoke-virtual {v7}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 464
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_3

    .line 465
    const-string/jumbo v12, "toggle_nfc"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string/jumbo v12, "android_beam_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 472
    :cond_4
    const-string/jumbo v12, "mobile_network_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string/jumbo v12, "manage_mobile_plan"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_5
    const-string/jumbo v12, "connectivity"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 476
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 481
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 482
    const v13, 0x7f100008

    .line 481
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 483
    .local v4, "isMobilePlanEnabled":Z
    if-eqz v4, :cond_6

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 484
    :cond_6
    const-string/jumbo v12, "manage_mobile_plan"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 490
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v12, "android.hardware.type.television"

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 491
    const-string/jumbo v12, "toggle_airplane"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_8
    const-string/jumbo v12, "proxy_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    if-nez v5, :cond_d

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 503
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 504
    const v13, 0x112007f

    .line 503
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 506
    .local v3, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v3, :cond_9

    .line 507
    :try_start_0
    const-string/jumbo v12, "com.android.cellbroadcastreceiver"

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 508
    const/4 v13, 0x2

    .line 507
    if-ne v12, v13, :cond_9

    .line 509
    const/4 v3, 0x0

    .line 515
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_9
    :goto_3
    if-nez v5, :cond_e

    if-eqz v3, :cond_e

    .line 519
    :goto_4
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 520
    const-string/jumbo v12, "wifi_calling_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_a
    return-object v10

    .line 446
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isMobilePlanEnabled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v7    # "manager":Landroid/nfc/NfcManager;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "isSecondaryUser":Z
    goto/16 :goto_0

    .line 447
    :cond_c
    const/4 v6, 0x0

    .local v6, "isWimaxEnabled":Z
    goto/16 :goto_1

    .line 499
    .end local v6    # "isWimaxEnabled":Z
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "isMobilePlanEnabled":Z
    .restart local v7    # "manager":Landroid/nfc/NfcManager;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    const-string/jumbo v12, "tether_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 512
    .restart local v3    # "isCellBroadcastAppLinkEnabled":Z
    :catch_0
    move-exception v2

    .line 513
    .local v2, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    .local v3, "isCellBroadcastAppLinkEnabled":Z
    goto :goto_3

    .line 516
    .end local v2    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v3    # "isCellBroadcastAppLinkEnabled":Z
    :cond_e
    const-string/jumbo v12, "cell_broadcast_settings"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 434
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080079

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 435
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
