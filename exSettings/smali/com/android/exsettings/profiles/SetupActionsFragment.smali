.class public Lcom/android/exsettings/profiles/SetupActionsFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DOZE_MAPPING:[I

.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I

.field private static final NOTIFICATION_LIGHT_MAPPING:[I


# instance fields
.field mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPosition:I

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Lcyanogenmod/app/Profile;

.field mProfileManager:Lcyanogenmod/app/ProfileManager;

.field private mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .locals 1

    sget-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method static synthetic -get2()[I
    .locals 1

    sget-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/exsettings/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/profiles/SetupActionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    .line 145
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    .line 150
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    .line 155
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 172
    return-void
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    .prologue
    .line 426
    new-instance v1, Lcom/android/exsettings/profiles/SetupActionsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$2;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    .line 439
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 426
    invoke-virtual {v1, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    return-void
.end method

.method public static fillProfileWithCurrentSettings(Landroid/content/Context;Lcyanogenmod/app/Profile;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 444
    invoke-static {}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 446
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 447
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    .line 446
    :goto_0
    const/4 v10, 0x7

    .line 448
    const/4 v11, 0x1

    .line 446
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 445
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 453
    :cond_0
    const-string/jumbo v8, "location"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 452
    check-cast v4, Landroid/location/LocationManager;

    .line 455
    .local v4, "locationManager":Landroid/location/LocationManager;
    const-string/jumbo v8, "gps"

    .line 454
    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 457
    .local v3, "gpsEnabled":Z
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 458
    if-eqz v3, :cond_4

    const/4 v8, 0x1

    .line 457
    :goto_1
    const/4 v10, 0x4

    .line 458
    const/4 v11, 0x1

    .line 457
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 456
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 461
    const-string/jumbo v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 463
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 464
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 463
    :goto_2
    const/4 v10, 0x1

    .line 464
    const/4 v11, 0x1

    .line 463
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 462
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 468
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 469
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    .line 468
    :goto_3
    const/4 v10, 0x5

    .line 469
    const/4 v11, 0x1

    .line 468
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 467
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 472
    invoke-static {p0}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 474
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 473
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 476
    .local v2, "cm":Landroid/net/ConnectivityManager;
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 477
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    .line 476
    :goto_4
    const/4 v10, 0x0

    .line 477
    const/4 v11, 0x1

    .line 476
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 475
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 482
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 483
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    .line 482
    :goto_5
    const/4 v10, 0x2

    .line 483
    const/4 v11, 0x1

    .line 482
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 481
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 489
    invoke-static {p0}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 490
    const-string/jumbo v8, "nfc"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    .line 492
    .local v5, "nfcManager":Landroid/nfc/NfcManager;
    new-instance v9, Lcyanogenmod/profiles/ConnectionSettings;

    .line 493
    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    .line 492
    :goto_6
    const/16 v10, 0x8

    .line 493
    const/4 v11, 0x1

    .line 492
    invoke-direct {v9, v10, v8, v11}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(IIZ)V

    .line 491
    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 498
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_2
    const-string/jumbo v8, "audio"

    .line 497
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 499
    .local v1, "am":Landroid/media/AudioManager;
    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    .line 500
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 499
    const/4 v10, 0x4

    .line 500
    const/4 v11, 0x1

    .line 499
    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 503
    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    .line 504
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 503
    const/4 v10, 0x3

    .line 504
    const/4 v11, 0x1

    .line 503
    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 507
    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    .line 508
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 507
    const/4 v10, 0x2

    .line 508
    const/4 v11, 0x1

    .line 507
    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 511
    new-instance v8, Lcyanogenmod/profiles/StreamSettings;

    .line 512
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    .line 511
    const/4 v10, 0x5

    .line 512
    const/4 v11, 0x1

    .line 511
    invoke-direct {v8, v10, v9, v11}, Lcyanogenmod/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 516
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 519
    :pswitch_0
    const-string/jumbo v6, "normal"

    .line 528
    .local v6, "ringValue":Ljava/lang/String;
    :goto_7
    new-instance v8, Lcyanogenmod/profiles/RingModeSettings;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v8}, Lcyanogenmod/app/Profile;->setRingMode(Lcyanogenmod/profiles/RingModeSettings;)V

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 532
    const-string/jumbo v9, "airplane_mode_on"

    const/4 v10, 0x0

    .line 531
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v0, 0x1

    .line 533
    .local v0, "airplaneMode":Z
    :goto_8
    new-instance v9, Lcyanogenmod/profiles/AirplaneModeSettings;

    if-eqz v0, :cond_b

    const/4 v8, 0x1

    :goto_9
    const/4 v10, 0x1

    invoke-direct {v9, v8, v10}, Lcyanogenmod/profiles/AirplaneModeSettings;-><init>(IZ)V

    invoke-virtual {p1, v9}, Lcyanogenmod/app/Profile;->setAirplaneMode(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    .line 442
    return-void

    .line 447
    .end local v0    # "airplaneMode":Z
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "gpsEnabled":Z
    .end local v4    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "ringValue":Ljava/lang/String;
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 458
    .restart local v3    # "gpsEnabled":Z
    .restart local v4    # "locationManager":Landroid/location/LocationManager;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 464
    .restart local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 469
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 477
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 483
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 493
    .restart local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 522
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    .restart local v1    # "am":Landroid/media/AudioManager;
    :pswitch_1
    const-string/jumbo v6, "mute"

    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 525
    .end local v6    # "ringValue":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v6, "vibrate"

    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 531
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "airplaneMode":Z
    goto :goto_8

    .line 533
    :cond_b
    const/4 v8, 0x0

    goto :goto_9

    .line 516
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    .line 362
    .local v0, "settings":Lcyanogenmod/profiles/ConnectionSettings;
    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    .end local v0    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-direct {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 364
    .restart local v0    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 366
    :cond_0
    new-instance v1, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    return-object v1
.end method

.method private generatePreferredNetworkOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getConnectionSettingWithSubId(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v0

    .line 352
    .local v0, "settings":Lcyanogenmod/profiles/ConnectionSettings;
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lcyanogenmod/profiles/ConnectionSettings;

    .end local v0    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;-><init>(I)V

    .line 354
    .restart local v0    # "settings":Lcyanogenmod/profiles/ConnectionSettings;
    invoke-virtual {v0, p1}, Lcyanogenmod/profiles/ConnectionSettings;->setSubId(I)V

    .line 355
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 357
    :cond_0
    new-instance v1, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    invoke-virtual {v0}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    return-object v1
.end method

.method private generateTriggerItem(I)Lcom/android/exsettings/profiles/actions/item/TriggerItem;
    .locals 2
    .param p1, "whichTrigger"    # I

    .prologue
    .line 379
    new-instance v0, Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v0, v1, p1}, Lcom/android/exsettings/profiles/actions/item/TriggerItem;-><init>(Lcyanogenmod/app/Profile;I)V

    return-object v0
.end method

.method private generateVolumeStreamItem(I)Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getSettingsForStream(I)Lcyanogenmod/profiles/StreamSettings;

    move-result-object v0

    .line 371
    .local v0, "settings":Lcyanogenmod/profiles/StreamSettings;
    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcyanogenmod/profiles/StreamSettings;

    .end local v0    # "settings":Lcyanogenmod/profiles/StreamSettings;
    invoke-direct {v0, p1}, Lcyanogenmod/profiles/StreamSettings;-><init>(I)V

    .line 373
    .restart local v0    # "settings":Lcyanogenmod/profiles/StreamSettings;
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 375
    :cond_0
    new-instance v1, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;-><init>(ILcyanogenmod/profiles/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7
    .param p1, "openTo"    # I

    .prologue
    .line 1152
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1153
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "Profile"

    iget-object v3, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1154
    const-string/jumbo v1, "new_profile_mode"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1155
    const-string/jumbo v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SubSettings;

    .line 1158
    .local v0, "pa":Lcom/android/exsettings/SubSettings;
    const-class v1, Lcom/android/exsettings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1159
    const v3, 0x7f0c00b3

    const/4 v4, 0x0

    const/16 v6, 0x3e9

    move-object v5, p0

    .line 1158
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1151
    return-void
.end method

.method private rebuildItemList()V
    .locals 15

    .prologue
    .line 201
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 203
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c00a0

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-boolean v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v8, :cond_1

    .line 208
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c00f3

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 214
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c05e0

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 221
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    .line 222
    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcyanogenmod/app/Profile;->getSettingsForConnection(I)Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v10

    .line 221
    const/4 v11, 0x7

    invoke-direct {v9, v11, v10}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILcyanogenmod/profiles/ConnectionSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 228
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 233
    .local v7, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_3

    .line 234
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "sub$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 235
    .local v5, "sub":Landroid/telephony/SubscriptionInfo;
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generatePreferredNetworkOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v5    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "sub$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 239
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 240
    const/4 v9, -0x1

    .line 239
    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generatePreferredNetworkOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v7    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/exsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 248
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_5
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c00ae

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lcom/android/exsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c00c8

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/RingModeItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getRingMode()Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/RingModeItem;-><init>(Lcyanogenmod/profiles/RingModeSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/AirplaneModeItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getAirplaneMode()Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/AirplaneModeItem;-><init>(Lcyanogenmod/profiles/AirplaneModeSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const-string/jumbo v8, "device_policy"

    .line 262
    invoke-virtual {p0, v8}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 264
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v8

    if-nez v8, :cond_9

    .line 265
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/LockModeItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/LockModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :goto_1
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getBrightness()Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;-><init>(Lcyanogenmod/profiles/BrightnessSettings;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 273
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/exsettings/Utils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 274
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/DozeModeItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/DozeModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 278
    const v9, 0x1120047

    .line 277
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 279
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/NotificationLightModeItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/NotificationLightModeItem;-><init>(Lcyanogenmod/app/Profile;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_7
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/Header;

    const v10, 0x7f0c009a

    invoke-virtual {p0, v10}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/exsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v2, 0x0

    .line 286
    .local v2, "groupsAdded":I
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v8}, Lcyanogenmod/app/Profile;->getProfileGroups()[Lcyanogenmod/app/ProfileGroup;

    move-result-object v4

    .line 287
    .local v4, "profileGroups":[Lcyanogenmod/app/ProfileGroup;
    if-eqz v4, :cond_c

    array-length v8, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_c

    .line 288
    const/4 v8, 0x0

    array-length v9, v4

    :goto_2
    if-ge v8, v9, :cond_b

    aget-object v3, v4, v8

    .line 291
    .local v3, "profileGroup":Lcyanogenmod/app/ProfileGroup;
    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 292
    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v10}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v10

    invoke-virtual {v10}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    .line 293
    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v11

    .line 292
    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 288
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 267
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "groupsAdded":I
    .end local v3    # "profileGroup":Lcyanogenmod/app/ProfileGroup;
    .end local v4    # "profileGroups":[Lcyanogenmod/app/ProfileGroup;
    :cond_9
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/DisabledItem;

    const v10, 0x7f0c00c9

    .line 268
    const v11, 0x7f0c00ca

    .line 267
    invoke-direct {v9, v10, v11}, Lcom/android/exsettings/profiles/actions/item/DisabledItem;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 294
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "groupsAdded":I
    .restart local v3    # "profileGroup":Lcyanogenmod/app/ProfileGroup;
    .restart local v4    # "profileGroups":[Lcyanogenmod/app/ProfileGroup;
    :cond_a
    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v11, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    iget-object v12, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 295
    iget-object v13, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 296
    invoke-virtual {v3}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v14

    .line 295
    invoke-virtual {v13, v14}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v13

    .line 294
    invoke-direct {v11, v12, v3, v13}, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;-><init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 300
    .end local v3    # "profileGroup":Lcyanogenmod/app/ProfileGroup;
    :cond_b
    if-lez v2, :cond_c

    .line 302
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v11, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v11}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v11

    .line 303
    iget-object v12, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 304
    iget-object v13, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v13}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v13

    invoke-virtual {v13}, Lcyanogenmod/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v13

    .line 303
    invoke-virtual {v12, v13}, Lcyanogenmod/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v12

    .line 302
    invoke-direct {v9, v10, v11, v12}, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;-><init>(Lcyanogenmod/app/Profile;Lcyanogenmod/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_c
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v8}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_e

    .line 309
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v9, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    invoke-direct {v9}, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_d
    :goto_4
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v8}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 200
    return-void

    .line 310
    :cond_e
    if-nez v2, :cond_d

    .line 312
    iget-object v8, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v9, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v10, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private requestActiveAppGroupsDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1031
    iget-object v6, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v6}, Lcyanogenmod/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    .line 1033
    .local v5, "notificationGroups":[Landroid/app/NotificationGroup;
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 1034
    .local v3, "items":[Ljava/lang/CharSequence;
    array-length v6, v5

    new-array v1, v6, [Z

    .line 1036
    .local v1, "checked":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 1037
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1038
    iget-object v6, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput-boolean v6, v1, v2

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 1041
    :cond_1
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$20;

    invoke-direct {v4, p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment$20;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V

    .line 1054
    .local v4, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1056
    const v7, 0x7f0c00c2

    .line 1054
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1057
    const v7, 0x104000a

    .line 1054
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1058
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1030
    return-void
.end method

.method private requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "setting"    # Lcyanogenmod/profiles/AirplaneModeSettings;

    .prologue
    .line 706
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 708
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 711
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-virtual {p1}, Lcyanogenmod/profiles/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 713
    const/4 v2, 0x2

    .line 719
    :cond_0
    :goto_0
    const v3, 0x7f0c00cd

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 721
    new-instance v3, Lcom/android/exsettings/profiles/SetupActionsFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/android/exsettings/profiles/SetupActionsFragment$8;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/AirplaneModeSettings;)V

    .line 720
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 744
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 715
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "setting"    # Lcyanogenmod/profiles/ConnectionSettings;

    .prologue
    const/4 v5, 0x0

    .line 841
    if-nez p1, :cond_0

    .line 842
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "connection setting cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 844
    :cond_0
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getConnectionId()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 845
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "dialog must be requested from Telephony"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 847
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 852
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 853
    invoke-virtual {p1}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 854
    const/4 v2, 0x2

    .line 860
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(Landroid/content/Context;Lcyanogenmod/profiles/ConnectionSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 862
    new-instance v3, Lcom/android/exsettings/profiles/SetupActionsFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/android/exsettings/profiles/SetupActionsFragment$10;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 861
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 886
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 856
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestDozeModeDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 648
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "dozeEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 653
    .local v1, "defaultIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 654
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getDozeMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 655
    move v1, v3

    .line 660
    :cond_0
    const v4, 0x7f0c081a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 662
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$6;

    invoke-direct {v4, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$6;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 661
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 653
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 414
    const v1, 0x7f0c0504

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    new-instance v1, Lcom/android/exsettings/profiles/SetupActionsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$1;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    const v2, 0x7f0c0503

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private requestLockscreenModeDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 619
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 621
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, "lockEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 624
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 625
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getScreenLockMode()Lcyanogenmod/profiles/LockSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/LockSettings;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 626
    move v1, v2

    .line 631
    :cond_0
    const v4, 0x7f0c00c9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 633
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$5;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 632
    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 624
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestNotificationLightModeDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 677
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "notificationLightEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 682
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 683
    sget-object v4, Lcom/android/exsettings/profiles/SetupActionsFragment;->NOTIFICATION_LIGHT_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getNotificationLightMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 684
    move v1, v2

    .line 689
    :cond_0
    const v4, 0x7f0c0121

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 691
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$7;

    invoke-direct {v4, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$7;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    .line 690
    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 682
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestProfileName()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 978
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 979
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400e6

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 981
    .local v1, "dialogView":Landroid/view/View;
    const v4, 0x7f130036

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 982
    .local v2, "entry":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 985
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 986
    const v5, 0x7f0c00a2

    .line 985
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 988
    new-instance v5, Lcom/android/exsettings/profiles/SetupActionsFragment$17;

    invoke-direct {v5, p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment$17;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    const v6, 0x104000a

    .line 985
    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 997
    const/high16 v5, 0x1040000

    .line 985
    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1000
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$18;

    invoke-direct {v4, p0, v0}, Lcom/android/exsettings/profiles/SetupActionsFragment$18;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1019
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$19;

    invoke-direct {v4, p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment$19;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1027
    return-object v0
.end method

.method private requestRemoveProfileDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    .line 591
    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    invoke-virtual {v2}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v1

    .line 592
    .local v1, "current":Lcyanogenmod/app/Profile;
    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v2}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0099

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 595
    new-instance v2, Lcom/android/exsettings/profiles/SetupActionsFragment$3;

    invoke-direct {v2, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$3;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    const v3, 0x7f0c05d6

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 604
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v3}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0096

    invoke-virtual {p0, v3, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 606
    new-instance v2, Lcom/android/exsettings/profiles/SetupActionsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$4;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    const v3, 0x7f0c0503

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    const v2, 0x7f0c0504

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private requestRingModeDialog(Lcyanogenmod/profiles/RingModeSettings;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "setting"    # Lcyanogenmod/profiles/RingModeSettings;

    .prologue
    .line 790
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 795
    .local v1, "defaultIndex":I
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 796
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    const/4 v1, 0x0

    .line 807
    :cond_0
    :goto_0
    const v4, 0x7f0c0082

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 809
    new-instance v4, Lcom/android/exsettings/profiles/SetupActionsFragment$9;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/exsettings/profiles/SetupActionsFragment$9;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/RingModeSettings;[Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 798
    :cond_1
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    const/4 v1, 0x1

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p1}, Lcyanogenmod/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    const/4 v1, 0x2

    goto :goto_0

    .line 804
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private startProfileGroupActivity(Lcom/android/exsettings/profiles/actions/item/AppGroupItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    .prologue
    const/4 v3, 0x0

    .line 1144
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1145
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "ProfileGroup"

    invoke-virtual {p1}, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v0, "Profile"

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1148
    const-class v0, Lcom/android/exsettings/profiles/ProfileGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1143
    return-void
.end method

.method private updateProfile()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 396
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1164
    const v0, -0x7fffffed

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 403
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    iget-boolean v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c00f6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 401
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 760
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_1

    .line 761
    iget-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    iget-object v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcyanogenmod/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 762
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_0

    .line 765
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 768
    const-string/jumbo v4, "network_mode_picker::chosen_value"

    .line 767
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 769
    .local v1, "selectedMode":I
    const-string/jumbo v4, "network_mode_picker::sub_id"

    .line 770
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    .line 769
    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 771
    .local v3, "subId":I
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    .line 772
    .local v0, "connItem":Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v2

    .line 775
    .local v2, "setting":Lcyanogenmod/profiles/ConnectionSettings;
    packed-switch v1, :pswitch_data_0

    .line 780
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 781
    invoke-virtual {v2, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    .line 783
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v4, v2}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 784
    iget-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v4}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 785
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->updateProfile()V

    goto :goto_0

    .line 777
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_1

    .line 775
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 178
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ProfileManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;

    .line 185
    new-instance v0, Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    .line 186
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 188
    invoke-virtual {p0, v4}, Lcom/android/exsettings/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    .line 189
    iget-boolean v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 191
    invoke-virtual {p0, v4}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    if-eqz p1, :cond_1

    .line 193
    const-string/jumbo v0, "last_selected_position"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 194
    iget v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    if-eq v0, v3, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    iget v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/Item;

    iput-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 542
    packed-switch p1, :pswitch_data_0

    .line 579
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 544
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 547
    :pswitch_1
    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/android/exsettings/profiles/actions/item/AirplaneModeItem;

    invoke-virtual {v2}, Lcom/android/exsettings/profiles/actions/item/AirplaneModeItem;->getSettings()Lcyanogenmod/profiles/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Lcyanogenmod/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 550
    :pswitch_2
    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;

    invoke-virtual {v2}, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;->getSettings()Lcyanogenmod/profiles/BrightnessSettings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 553
    :pswitch_3
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 556
    :pswitch_4
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 559
    :pswitch_5
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestNotificationLightModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 562
    :pswitch_6
    iget-object v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/android/exsettings/profiles/actions/item/RingModeItem;

    invoke-virtual {v2}, Lcom/android/exsettings/profiles/actions/item/RingModeItem;->getSettings()Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestRingModeDialog(Lcyanogenmod/profiles/RingModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 565
    :pswitch_7
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    .line 566
    .local v0, "connItem":Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 569
    .end local v0    # "connItem":Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    :pswitch_8
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v1, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    .line 570
    .local v1, "volumeItem":Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;
    invoke-virtual {v1}, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->getSettings()Lcyanogenmod/profiles/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 573
    .end local v1    # "volumeItem":Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;
    :pswitch_9
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 576
    :pswitch_a
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestRemoveProfileDialog()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 321
    iget-boolean v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    .line 322
    const v0, 0x7f0c00e9

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    const v1, 0x7f02003b

    .line 322
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 324
    const/16 v1, 0x64

    .line 322
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 326
    const/4 v1, 0x5

    .line 322
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 329
    const/4 v0, 0x2

    const v1, 0x7f0c0098

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 330
    const/16 v1, 0x66

    .line 329
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 319
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1064
    const v1, 0x7f04007e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1066
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    .line 1067
    iget-object v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1068
    iget-boolean v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    .line 1069
    const v1, 0x7f130124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/profiles/SetupActionsFragment$21;

    invoke-direct {v2, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$21;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    const v1, 0x7f130125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/exsettings/profiles/SetupActionsFragment$22;

    invoke-direct {v2, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$22;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1089
    :goto_0
    return-object v0

    .line 1087
    :cond_0
    const v1, 0x7f130123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v6, 0x9

    .line 1094
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exsettings/profiles/actions/item/Item;

    .line 1095
    .local v4, "itemAtPosition":Lcom/android/exsettings/profiles/actions/item/Item;
    iput-object v4, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    .line 1096
    iget-object v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/android/exsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/exsettings/profiles/actions/ItemListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 1098
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/AirplaneModeItem;

    if-eqz v5, :cond_1

    .line 1099
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/BrightnessItem;

    if-eqz v5, :cond_2

    .line 1101
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1102
    :cond_2
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/LockModeItem;

    if-eqz v5, :cond_3

    .line 1103
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1104
    :cond_3
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/DozeModeItem;

    if-eqz v5, :cond_4

    .line 1105
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1106
    :cond_4
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/NotificationLightModeItem;

    if-eqz v5, :cond_5

    .line 1107
    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1108
    :cond_5
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/RingModeItem;

    if-eqz v5, :cond_6

    .line 1109
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1110
    :cond_6
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v5, :cond_9

    .line 1112
    iget-object v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/android/exsettings/profiles/actions/item/Item;

    check-cast v0, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;

    .line 1113
    .local v0, "connItem":Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v5

    if-ne v5, v6, :cond_8

    .line 1114
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "cyanogenmod.platform.intent.action.NETWORK_MODE_PICKER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "network_mode_picker::neutral_text"

    .line 1116
    const v6, 0x7f0c00ea

    invoke-virtual {p0, v6}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string/jumbo v5, "network_mode_picker::show_none"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    const-string/jumbo v5, "network_mode_picker::sub_id"

    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcyanogenmod/profiles/ConnectionSettings;->getSubId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1119
    const-string/jumbo v6, "network_mode_picker::selected_mode"

    .line 1120
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/ConnectionSettings;->isOverride()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1121
    invoke-virtual {v0}, Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lcyanogenmod/profiles/ConnectionSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcyanogenmod/profiles/ConnectionSettings;->getValue()I

    move-result v5

    .line 1119
    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    const/16 v5, 0x3ea

    invoke-virtual {p0, v1, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1121
    :cond_7
    const/4 v5, -0x1

    goto :goto_1

    .line 1124
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 1126
    .end local v0    # "connItem":Lcom/android/exsettings/profiles/actions/item/ConnectionOverrideItem;
    :cond_9
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;

    if-eqz v5, :cond_a

    .line 1127
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 1128
    :cond_a
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/ProfileNameItem;

    if-eqz v5, :cond_b

    .line 1129
    invoke-virtual {p0, v6}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto/16 :goto_0

    .line 1130
    :cond_b
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    if-eqz v5, :cond_c

    move-object v3, v4

    .line 1131
    check-cast v3, Lcom/android/exsettings/profiles/actions/item/TriggerItem;

    .line 1132
    .local v3, "item":Lcom/android/exsettings/profiles/actions/item/TriggerItem;
    invoke-virtual {v3}, Lcom/android/exsettings/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto/16 :goto_0

    .line 1133
    .end local v3    # "item":Lcom/android/exsettings/profiles/actions/item/TriggerItem;
    :cond_c
    instance-of v5, v4, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 1134
    check-cast v2, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;

    .line 1135
    .local v2, "item":Lcom/android/exsettings/profiles/actions/item/AppGroupItem;
    invoke-virtual {v2}, Lcom/android/exsettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_d

    .line 1136
    invoke-direct {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V

    goto/16 :goto_0

    .line 1138
    :cond_d
    invoke-direct {p0, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment;->startProfileGroupActivity(Lcom/android/exsettings/profiles/actions/item/AppGroupItem;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 340
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 341
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 342
    return v1

    .line 344
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/exsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 345
    return v1

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 584
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 585
    iget v0, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 586
    const-string/jumbo v0, "last_selected_position"

    iget v1, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 386
    iget-boolean v2, p0, Lcom/android/exsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 387
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 388
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 389
    const v3, 0x7f0b0034

    .line 388
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 390
    .local v1, "descPadding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 391
    const v2, 0x7f0c00fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 383
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "descPadding":I
    :cond_0
    return-void
.end method

.method public requestBrightnessDialog(Lcyanogenmod/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "brightnessSettings"    # Lcyanogenmod/profiles/BrightnessSettings;

    .prologue
    .line 938
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 939
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c00ce

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 942
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04005b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 943
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f13004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 944
    .local v3, "seekBar":Landroid/widget/SeekBar;
    const v5, 0x7f1300c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 945
    .local v2, "override":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 946
    new-instance v5, Lcom/android/exsettings/profiles/SetupActionsFragment$14;

    invoke-direct {v5, p0, v3}, Lcom/android/exsettings/profiles/SetupActionsFragment$14;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 952
    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 953
    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 954
    invoke-virtual {p1}, Lcyanogenmod/profiles/BrightnessSettings;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 955
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 956
    new-instance v5, Lcom/android/exsettings/profiles/SetupActionsFragment$15;

    invoke-direct {v5, p0, v3, p1, v2}, Lcom/android/exsettings/profiles/SetupActionsFragment$15;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/BrightnessSettings;Landroid/widget/CheckBox;)V

    const v6, 0x104000a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 968
    new-instance v5, Lcom/android/exsettings/profiles/SetupActionsFragment$16;

    invoke-direct {v5, p0}, Lcom/android/exsettings/profiles/SetupActionsFragment$16;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Lcyanogenmod/profiles/StreamSettings;

    .prologue
    const/4 v9, 0x0

    .line 891
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 892
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/android/exsettings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 894
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 895
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 896
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04005c

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 897
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f13004c

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 898
    .local v4, "seekBar":Landroid/widget/SeekBar;
    const v7, 0x7f1300c5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 899
    .local v3, "override":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 900
    new-instance v7, Lcom/android/exsettings/profiles/SetupActionsFragment$11;

    invoke-direct {v7, p0, v4}, Lcom/android/exsettings/profiles/SetupActionsFragment$11;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 906
    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/exsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, p1, v9, v9}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 908
    .local v6, "volumizer":Landroid/preference/SeekBarVolumizer;
    invoke-virtual {v6}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 909
    invoke-virtual {v6, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 910
    invoke-virtual {p2}, Lcyanogenmod/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 912
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 913
    new-instance v7, Lcom/android/exsettings/profiles/SetupActionsFragment$12;

    invoke-direct {v7, p0, v4, p2, v3}, Lcom/android/exsettings/profiles/SetupActionsFragment$12;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/StreamSettings;Landroid/widget/CheckBox;)V

    const v8, 0x104000a

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 924
    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    new-instance v7, Lcom/android/exsettings/profiles/SetupActionsFragment$13;

    invoke-direct {v7, p0, v6}, Lcom/android/exsettings/profiles/SetupActionsFragment$13;-><init>(Lcom/android/exsettings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V

    invoke-virtual {p0, v7}, Lcom/android/exsettings/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 934
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
