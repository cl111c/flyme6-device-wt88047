.class public Lcom/android/exsettings/TetherSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;,
        Lcom/android/exsettings/TetherSettings$1;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mHotspotInactivityTimeout:Landroid/preference/ListPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/exsettings/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 239
    new-instance v0, Lcom/android/exsettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/TetherSettings$1;-><init>(Lcom/android/exsettings/TetherSettings;)V

    .line 238
    iput-object v0, p0, Lcom/android/exsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 60
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 654
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 655
    .local v0, "iface":Ljava/lang/String;
    array-length v6, p1

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, p1, v2

    .line 656
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    return-object v0

    .line 655
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 661
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0c07a5

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 202
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 204
    const-string/jumbo v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 206
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 208
    const v3, 0x1040420

    .line 207
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 210
    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    .line 209
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Lcom/android/exsettings/TetherSettings;->updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 198
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/exsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 213
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 214
    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 215
    iget-object v6, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    .line 213
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 522
    const v6, 0x107001b

    .line 521
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, "provisionApp":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 524
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    aget-object v5, v2, v4

    aget-object v6, v2, v3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const/high16 v5, 0x10000

    .line 527
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-static {p0}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p0}, Lcom/android/exsettings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 595
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 596
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0920

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 599
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 532
    iput p1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 533
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string/jumbo v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    invoke-virtual {p0, v0, v4}, Lcom/android/exsettings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 531
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 566
    iget v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 573
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 574
    iput-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 575
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 576
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c056f

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 577
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 580
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0c0922

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 585
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/exsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, "bluetoothErrored":Z
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v7, p3, v10

    .line 443
    .local v7, "s":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v6, v12, v9

    .line 444
    .local v6, "regex":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    .line 443
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 442
    .end local v6    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 448
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 449
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v1, :cond_3

    .line 450
    return-void

    .line 451
    :cond_3
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 452
    .local v5, "btState":I
    const/16 v9, 0xd

    if-ne v5, v9, :cond_4

    .line 453
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 454
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0c0570

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 440
    :goto_2
    return-void

    .line 455
    :cond_4
    const/16 v9, 0xb

    if-ne v5, v9, :cond_5

    .line 456
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 457
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0c056f

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 459
    :cond_5
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 460
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v9, 0xc

    if-ne v5, v9, :cond_9

    if-eqz v3, :cond_9

    .line 461
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v9

    .line 460
    if-eqz v9, :cond_9

    .line 462
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 463
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 464
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 465
    .local v4, "bluetoothTethered":I
    const/4 v9, 0x1

    if-le v4, v9, :cond_6

    .line 466
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 468
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 467
    const v10, 0x7f0c0924

    .line 466
    invoke-virtual {p0, v10, v9}, Lcom/android/exsettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "summary":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 470
    .end local v8    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x1

    if-ne v4, v9, :cond_7

    .line 471
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 472
    const v10, 0x7f0c0923

    .line 471
    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 473
    :cond_7
    if-eqz v2, :cond_8

    .line 474
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0c0927

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 476
    :cond_8
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0c0922

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 479
    .end local v4    # "bluetoothTethered":I
    :cond_9
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 480
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 481
    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0c0926

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const v5, 0x7f0c0378

    const/4 v4, 0x0

    .line 221
    if-nez p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    .line 224
    invoke-virtual {p0, v5}, Lcom/android/exsettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    .line 229
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    .line 229
    const v2, 0x7f0c0379

    invoke-virtual {p0, v2, v1}, Lcom/android/exsettings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    .line 233
    invoke-virtual {p0, v5}, Lcom/android/exsettings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 369
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 371
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/exsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 387
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 388
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbConnected:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v8, :cond_2

    :cond_0
    const/4 v4, 0x0

    .line 389
    .local v4, "usbAvailable":Z
    :goto_0
    const/4 v5, 0x0

    .line 390
    .local v5, "usbError":I
    const/4 v8, 0x0

    array-length v10, p1

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_4

    aget-object v3, p1, v9

    .line 391
    .local v3, "s":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v12, v11

    :goto_2
    if-ge v8, v12, :cond_3

    aget-object v2, v11, v8

    .line 392
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 393
    if-nez v5, :cond_1

    .line 394
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v5

    .line 391
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 388
    .end local v2    # "regex":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "usbAvailable":Z
    .end local v5    # "usbError":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "usbAvailable":Z
    goto :goto_0

    .line 390
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v5    # "usbError":I
    :cond_3
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_1

    .line 399
    .end local v3    # "s":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 400
    .local v7, "usbTethered":Z
    const/4 v8, 0x0

    move-object/from16 v0, p2

    array-length v10, v0

    move v9, v8

    :goto_3
    if-ge v9, v10, :cond_7

    aget-object v3, p2, v9

    .line 401
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v12, v11

    :goto_4
    if-ge v8, v12, :cond_6

    aget-object v2, v11, v8

    .line 402
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .line 401
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 400
    .end local v2    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_3

    .line 405
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    .line 406
    .local v6, "usbErrored":Z
    const/4 v8, 0x0

    move-object/from16 v0, p3

    array-length v10, v0

    move v9, v8

    :goto_5
    if-ge v9, v10, :cond_a

    aget-object v3, p3, v9

    .line 407
    .restart local v3    # "s":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v12, v11

    :goto_6
    if-ge v8, v12, :cond_9

    aget-object v2, v11, v8

    .line 408
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v6, 0x1

    .line 407
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 406
    .end local v2    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_5

    .line 412
    .end local v3    # "s":Ljava/lang/String;
    :cond_a
    if-eqz v7, :cond_b

    .line 413
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c091c

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 414
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 415
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 385
    :goto_7
    return-void

    .line 416
    :cond_b
    if-eqz v4, :cond_d

    .line 417
    if-nez v5, :cond_c

    .line 418
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c091b

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 422
    :goto_8
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 423
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 420
    :cond_c
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c0920

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    .line 424
    :cond_d
    if-eqz v6, :cond_e

    .line 425
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c0920

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 426
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 427
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 428
    :cond_e
    iget-boolean v8, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    if-eqz v8, :cond_f

    .line 429
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c091d

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 430
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 431
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 433
    :cond_f
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v9, 0x7f0c091e

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 434
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 435
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 689
    const v0, 0x7f0c0de5

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x5a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 544
    invoke-super {p0, p1, p2, p3}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 545
    if-nez p1, :cond_0

    .line 546
    if-ne p2, v2, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/exsettings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 548
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->startTethering()V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    iget v0, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 560
    :goto_1
    iput v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 557
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 665
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/exsettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 667
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 674
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 675
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/exsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 680
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c07a5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 681
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 682
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    .line 680
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 664
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string/jumbo v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    .line 127
    :cond_0
    const v8, 0x7f080062

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->addPreferencesFromResource(I)V

    .line 129
    const-string/jumbo v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 131
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v9, "no_config_tethering"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    .line 133
    :cond_1
    iput-boolean v12, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    .line 134
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 135
    return-void

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 139
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 140
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 142
    const/4 v10, 0x5

    .line 141
    invoke-virtual {v1, v8, v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 146
    :cond_3
    const-string/jumbo v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    .line 145
    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    .line 147
    const-string/jumbo v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 148
    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string/jumbo v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 149
    const-string/jumbo v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    .line 150
    const-string/jumbo v8, "hotstpot_inactivity_timeout"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    .line 153
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 155
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 156
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 157
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 159
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    const/4 v5, 0x1

    .line 160
    .local v5, "usbAvailable":Z
    :goto_0
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_8

    const/4 v7, 0x1

    .line 161
    .local v7, "wifiAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_9

    const/4 v2, 0x1

    .line 163
    .local v2, "bluetoothAvailable":Z
    :goto_2
    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_5
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 171
    :cond_6
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :goto_3
    if-nez v2, :cond_b

    .line 177
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :goto_4
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 188
    const v9, 0x107001b

    .line 187
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 189
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    return-void

    .line 159
    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "usbAvailable":Z
    goto :goto_0

    .line 160
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "wifiAvailable":Z
    goto :goto_1

    .line 161
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "bluetoothAvailable":Z
    goto :goto_2

    .line 168
    :cond_a
    new-instance v8, Lcom/android/exsettings/wifi/WifiApEnabler;

    iget-object v9, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v9}, Lcom/android/exsettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    .line 169
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->initWifiTethering()V

    goto :goto_3

    .line 179
    :cond_b
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 180
    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 181
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4

    .line 183
    :cond_c
    iget-object v8, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 250
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/exsettings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/exsettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    .line 253
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mDialog:Lcom/android/exsettings/wifi/WifiApDialog;

    return-object v1

    .line 256
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 488
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 490
    .local v0, "enable":Z
    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0, v4}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 498
    :goto_0
    return v4

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v1, v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 499
    .end local v0    # "enable":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mHotspotInactivityTimeout:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 500
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/WifiConfiguration;->wifiApInactivityTimeout:J

    .line 502
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/exsettings/TetherSettings;->updateHotspotTimeoutSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 503
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 504
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v6, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 505
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 509
    :goto_1
    return v5

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/exsettings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    .line 512
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 607
    const-string/jumbo v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 609
    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_3

    .line 610
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .line 612
    .local v5, "newState":Z
    if-eqz v5, :cond_1

    .line 613
    invoke-direct {p0, v8}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 650
    .end local v5    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 615
    .restart local v5    # "newState":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 618
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/exsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 620
    .end local v5    # "newState":Z
    :cond_3
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_9

    .line 621
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 623
    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_4

    .line 624
    invoke-direct {p0, v10}, Lcom/android/exsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exsettingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 627
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/android/exsettings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 629
    :cond_5
    const/4 v4, 0x0

    .line 631
    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 632
    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/exsettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 634
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_6

    .line 635
    const/4 v4, 0x1

    .line 638
    :cond_6
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 639
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 640
    :cond_7
    if-eqz v4, :cond_8

    .line 641
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0c0927

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 643
    :cond_8
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0c0926

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 646
    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/android/exsettings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    .line 647
    invoke-virtual {p0, v8}, Lcom/android/exsettings/TetherSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    const-string/jumbo v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 311
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStart()V

    .line 313
    iget-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 315
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 316
    if-eqz v1, :cond_0

    .line 317
    const v4, 0x7f0c0a82

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 319
    :cond_0
    return-void

    .line 322
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 324
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/TetherSettings;->mMassStorageActive:Z

    .line 325
    new-instance v4, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;

    invoke-direct {v4, p0, v6}, Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/exsettings/TetherSettings;Lcom/android/exsettings/TetherSettings$TetherChangeReceiver;)V

    iput-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 327
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 329
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 330
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 339
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 344
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 345
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    iget-object v4, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->resume()V

    .line 349
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/TetherSettings;->updateState()V

    .line 310
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onStop()V

    .line 356
    iget-boolean v0, p0, Lcom/android/exsettings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    iput-object v2, p0, Lcom/android/exsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/exsettings/TetherSettings;->mWifiApEnabler:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/wifi/WifiApEnabler;->pause()V

    .line 353
    :cond_1
    return-void
.end method
