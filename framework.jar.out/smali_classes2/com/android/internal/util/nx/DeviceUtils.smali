.class public Lcom/android/internal/util/nx/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;
    }
.end annotation


# static fields
.field private static final DEVICE_HYBRID:I = 0x1

.field private static final DEVICE_PHONE:I = 0x0

.field private static final DEVICE_TABLET:I = 0x2

.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adbEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    const-string/jumbo v2, "adb_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 69
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

.method public static deviceSupportsGps(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static deviceSupportsImeSwitcher(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x11200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsLte(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 78
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 79
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 65
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method public static deviceSupportsNfc(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deviceSupportsRemoteDisplay(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string/jumbo v2, "display"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 52
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static deviceSupportsTorch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public static deviceSupportsUsbTether(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static deviceSupportsVibrator(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 98
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    return v1
.end method

.method public static filterUnsupportedDeviceFeatures(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "valuesArray"    # [Ljava/lang/String;
    .param p2, "entriesArray"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 108
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 109
    :cond_0
    return-object v4

    .line 108
    :cond_1
    if-eqz p0, :cond_0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "finalEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "finalValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;

    invoke-direct {v0}, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;-><init>()V

    .line 116
    .local v0, "filteredDeviceFeaturesArray":Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 117
    aget-object v4, p1, v3

    invoke-static {p0, v4}, Lcom/android/internal/util/nx/DeviceUtils;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    aget-object v4, p2, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    aget-object v4, p1, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 122
    iput-object v4, v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;->entries:[Ljava/lang/String;

    .line 125
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 124
    iput-object v4, v0, Lcom/android/internal/util/nx/DeviceUtils$FilteredDeviceFeaturesArray;->values:[Ljava/lang/String;

    .line 126
    return-object v0
.end method

.method private static getScreenType(Landroid/content/Context;)I
    .locals 6
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 148
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 149
    .local v0, "outDisplayInfo":Landroid/view/DisplayInfo;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 150
    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    .local v1, "shortSize":I
    mul-int/lit16 v4, v1, 0xa0

    iget v5, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    div-int v2, v4, v5

    .line 153
    .local v2, "shortSizeDp":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 154
    const/4 v4, 0x0

    return v4

    .line 155
    :cond_0
    const/16 v4, 0x2d0

    if-ge v2, v4, :cond_1

    .line 156
    const/4 v4, 0x1

    return v4

    .line 158
    :cond_1
    const/4 v4, 0x2

    return v4
.end method

.method public static isHybrid(Landroid/content/Context;)Z
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->getScreenType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string/jumbo v0, "**torch**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->deviceSupportsTorch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    :cond_0
    const-string/jumbo v0, "**ring_vib**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->deviceSupportsVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :cond_1
    const-string/jumbo v0, "**ring_vib_silent**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->deviceSupportsVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/android/internal/util/nx/DeviceUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
