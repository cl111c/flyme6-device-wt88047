.class public Lcom/android/exsettings/deviceinfo/Status;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/deviceinfo/Status$MyHandler;,
        Lcom/android/exsettings/deviceinfo/Status$1;,
        Lcom/android/exsettings/deviceinfo/Status$2;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIpAddress:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/deviceinfo/Status;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 81
    sput-object v0, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 137
    new-instance v0, Lcom/android/exsettings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/Status$1;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/exsettings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/deviceinfo/Status$2;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 410
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 411
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 412
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 414
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/exsettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/exsettings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getIcCodes(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    new-array v2, v5, [Ljava/lang/Object;

    .line 436
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 435
    const v3, 0x7f0c0361

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "model":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/Object;

    .line 438
    const v3, 0x7f0c03db

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 437
    const v3, 0x7f0c0362

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "icCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSarValues(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 428
    const v2, 0x7f0c03d9

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 427
    const v3, 0x7f0c035f

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "headLevel":Ljava/lang/String;
    const v2, 0x7f0c03da

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 429
    const v3, 0x7f0c0360

    invoke-virtual {p0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "bodyLevel":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-static {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    .line 419
    .local v0, "hardware":Lcyanogenmod/hardware/CMHardwareManager;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 422
    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v1
.end method

.method private hasBluetooth()Z
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWimax()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 402
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 319
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 371
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 372
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    :cond_0
    :goto_1
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x0

    .local v0, "address":Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v0    # "address":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/exsettings/Utils;->getDefaultIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object p2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 357
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    return-void

    .line 357
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, "macAddress":Ljava/lang/String;
    goto :goto_0

    .line 358
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 350
    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 292
    const/16 v0, 0x2c

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super/range {p0 .. p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v11, Lcom/android/exsettings/deviceinfo/Status$MyHandler;

    invoke-direct {v11, p0}, Lcom/android/exsettings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 174
    const-string/jumbo v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mCM:Landroid/net/ConnectivityManager;

    .line 175
    const-string/jumbo v11, "wifi"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 177
    const v11, 0x7f080022

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 178
    const-string/jumbo v11, "battery_level"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 179
    const-string/jumbo v11, "battery_status"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 180
    const-string/jumbo v11, "bt_address"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 181
    const-string/jumbo v11, "wifi_mac_address"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mWifiMacAddress:Landroid/preference/Preference;

    .line 182
    const-string/jumbo v11, "wimax_mac_address"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 183
    const-string/jumbo v11, "wifi_ip_address"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mIpAddress:Landroid/preference/Preference;

    .line 185
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 186
    iget-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0c050a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 187
    iget-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0c0861

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mUnavailable:Ljava/lang/String;

    .line 190
    const-string/jumbo v11, "up_time"

    invoke-virtual {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 192
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->hasBluetooth()Z

    move-result v11

    if-nez v11, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mBtAddress:Landroid/preference/Preference;

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->hasWimax()Z

    move-result v11

    if-nez v11, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mWimaxMacAddress:Landroid/preference/Preference;

    .line 202
    :cond_1
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    iput-object v11, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 203
    sget-object v12, Lcom/android/exsettings/deviceinfo/Status;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v11, 0x0

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_2

    aget-object v3, v12, v11

    .line 204
    .local v3, "intent":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "intent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->updateConnectivity()V

    .line 209
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->getSerialNumber()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "serial":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string/jumbo v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 213
    :cond_3
    const-string/jumbo v11, "serial_number"

    invoke-direct {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 218
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-nez v11, :cond_4

    .line 219
    invoke-static {p0}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    .line 218
    if-eqz v11, :cond_8

    .line 220
    :cond_4
    const-string/jumbo v11, "sim_status"

    invoke-direct {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v11, "imei_info"

    invoke-direct {p0, v11}, Lcom/android/exsettings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 256
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 257
    new-instance v12, Lcom/android/exsettings/deviceinfo/Status$3;

    invoke-direct {v12, p0}, Lcom/android/exsettings/deviceinfo/Status$3;-><init>(Lcom/android/exsettings/deviceinfo/Status;)V

    .line 256
    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 276
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_6

    .line 277
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    :cond_6
    return-void

    .line 211
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_7
    const-string/jumbo v11, "serial_number"

    invoke-direct {p0, v11, v7}, Lcom/android/exsettings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 225
    .local v4, "numPhones":I
    const/4 v11, 0x1

    if-le v4, v11, :cond_5

    .line 226
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 227
    .local v6, "prefSet":Landroid/preference/PreferenceScreen;
    const-string/jumbo v11, "sim_status"

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 228
    .local v8, "singleSimPref":Landroid/preference/Preference;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    .line 230
    .local v10, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_a

    .line 232
    invoke-virtual {v10, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 233
    .local v9, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 235
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 236
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const v12, 0x7f0c0355

    invoke-virtual {p0, v12, v11}, Lcom/android/exsettings/deviceinfo/Status;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    if-eqz v9, :cond_9

    .line 238
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    :goto_4
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/android/exsettings/deviceinfo/SimStatus;

    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v11, "slot_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 240
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    const v11, 0x7f0c0357

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 250
    .end local v5    # "pref":Landroid/preference/Preference;
    .end local v9    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_a
    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/exsettings/deviceinfo/Status;->finish()V

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/exsettings/deviceinfo/Status;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    .line 299
    const-string/jumbo v2, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v3, 0x0

    .line 298
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/exsettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lcom/android/exsettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method updateConnectivity()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setWimaxStatus()V

    .line 385
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setWifiStatus()V

    .line 386
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setBtStatus()V

    .line 387
    invoke-direct {p0}, Lcom/android/exsettings/deviceinfo/Status;->setIpAddressStatus()V

    .line 383
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 392
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 394
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 395
    const-wide/16 v2, 0x1

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/exsettings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 390
    return-void
.end method
