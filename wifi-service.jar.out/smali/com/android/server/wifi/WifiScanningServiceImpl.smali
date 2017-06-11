.class public Lcom/android/server/wifi/WifiScanningServiceImpl;
.super Landroid/net/wifi/IWifiScanner$Stub;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;,
        Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x27100

.field private static final CMD_DRIVER_LOADED:I = 0x27106

.field private static final CMD_DRIVER_UNLOADED:I = 0x27107

.field private static final CMD_FULL_SCAN_RESULTS:I = 0x27101

.field private static final CMD_HOTLIST_AP_FOUND:I = 0x27102

.field private static final CMD_HOTLIST_AP_LOST:I = 0x27103

.field private static final CMD_SCAN_PAUSED:I = 0x27108

.field private static final CMD_SCAN_RESTARTED:I = 0x27109

.field private static final CMD_SCAN_RESULTS_AVAILABLE:I = 0x27100

.field private static final CMD_STOP_SCAN_INTERNAL:I = 0x2710a

.field private static final CMD_WIFI_CHANGES_STABILIZED:I = 0x27105

.field private static final CMD_WIFI_CHANGE_DETECTED:I = 0x27104

.field private static final DBG:Z = false

.field private static final INVALID_KEY:I = 0x0

.field private static final MIN_PERIOD_PER_CHANNEL_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WifiScanningService"

.field private static final UNKNOWN_PID:I = -0x1

.field private static final VDBG:Z

.field private static mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field private static final mLocalLog:Landroid/util/LocalLog;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

.field mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

.field private mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

.field mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiScanningServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/LocalLog;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiNative$ScanCapabilities;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p0, "band"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 1
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 1
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiScanningServiceImpl;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->enforceLocationHardwarePermission(I)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 65
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 220
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 222
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/net/wifi/IWifiScanner$Stub;-><init>()V

    .line 220
    new-instance v0, Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ScanCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mScanCapabilities:Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    .line 225
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    .prologue
    .line 1809
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1810
    add-int v1, p1, v0

    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v3, p2, v0

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v2, p0, v1

    .line 1809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1808
    :cond_0
    return-void
.end method

.method static describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;
    .locals 4
    .param p0, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1939
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "  band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1940
    const-string/jumbo v2, "  period:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1941
    const-string/jumbo v2, "  reportEvents:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1942
    const-string/jumbo v2, "  numBssidsPerScan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1943
    const-string/jumbo v2, "  maxScansToCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    const-string/jumbo v2, "  channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v2, :cond_0

    .line 1948
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1949
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1950
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1953
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private enforceLocationHardwarePermission(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 115
    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    .line 117
    const-string/jumbo v2, "LocationHardware"

    .line 116
    const/4 v3, -0x1

    .line 114
    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 113
    return-void
.end method

.method private static getBandFromChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;)I
    .locals 6
    .param p0, "channels"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1895
    .local v0, "band":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, p0, v2

    .line 1896
    .local v1, "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x960

    if-gt v5, v4, :cond_1

    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_1

    .line 1897
    or-int/lit8 v0, v0, 0x1

    .line 1895
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    :cond_1
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1899
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1900
    :cond_2
    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x13ec

    if-gt v5, v4, :cond_0

    iget v4, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 1901
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1904
    .end local v1    # "channel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_3
    return v0
.end method

.method private static getBandFromChannels([Lcom/android/server/wifi/WifiNative$ChannelSettings;)I
    .locals 6
    .param p0, "channels"    # [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    .prologue
    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "band":I
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, p0, v2

    .line 1910
    .local v1, "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    if-eqz v1, :cond_0

    .line 1911
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x960

    if-gt v5, v4, :cond_1

    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_1

    .line 1912
    or-int/lit8 v0, v0, 0x1

    .line 1909
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1913
    :cond_1
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->isDfs(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1914
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1915
    :cond_2
    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x13ec

    if-gt v5, v4, :cond_0

    iget v4, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 1916
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1920
    .end local v1    # "channel":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    :cond_3
    return v0
.end method

.method private static getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 2
    .param p0, "band"    # I

    .prologue
    .line 1873
    invoke-static {}, Lcom/android/server/wifi/WifiScanningServiceImpl;->initChannels()Z

    .line 1875
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x7

    if-le p0, v0, :cond_1

    .line 1877
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 1879
    :cond_1
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static initChannels()Z
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1815
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v3, :cond_0

    .line 1817
    return v7

    .line 1820
    :cond_0
    invoke-static {v7}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v0

    .line 1821
    .local v0, "channels24":[I
    if-nez v0, :cond_1

    .line 1822
    const-string/jumbo v3, "Could not get channels for 2.4 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1823
    return v6

    .line 1826
    :cond_1
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v1

    .line 1827
    .local v1, "channels5":[I
    if-nez v1, :cond_2

    .line 1828
    const-string/jumbo v3, "Could not get channels for 5 GHz"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1829
    return v6

    .line 1832
    :cond_2
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    move-result-object v2

    .line 1833
    .local v2, "channelsDfs":[I
    if-nez v2, :cond_3

    .line 1834
    const-string/jumbo v3, "Could not get channels for DFS"

    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1835
    return v6

    .line 1838
    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    sput-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1840
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-array v4, v6, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v6

    .line 1842
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v7

    .line 1843
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v7

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1845
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v1

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v5

    .line 1846
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v5

    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1848
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 1849
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1850
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    array-length v4, v0

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1852
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v2

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 1853
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3, v6, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1855
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v0

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 1856
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1857
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    array-length v4, v0

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1859
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 1860
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v6, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1861
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    array-length v4, v1

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1863
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 1864
    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    array-length v5, v2

    add-int/2addr v4, v5

    .line 1863
    new-array v4, v4, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v4, v3, v8

    .line 1865
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    invoke-static {v3, v6, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1866
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    array-length v4, v0

    invoke-static {v3, v4, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1867
    sget-object v3, Lcom/android/server/wifi/WifiScanningServiceImpl;->mChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object v3, v3, v8

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    invoke-static {v3, v4, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    .line 1869
    return v7
.end method

.method private static isDfs(I)Z
    .locals 3
    .param p0, "channel"    # I

    .prologue
    .line 1883
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v0

    .line 1885
    .local v0, "dfsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1886
    aget-object v2, v0, v1

    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    if-ne p0, v2, :cond_0

    .line 1887
    const/4 v2, 0x1

    return v2

    .line 1885
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static localLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string/jumbo v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string/jumbo v0, "WifiScanningService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method addScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v4, 0x0

    .line 1226
    if-nez p1, :cond_0

    .line 1227
    const-string/jumbo v1, "WifiScanningService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failing scan request ClientInfo not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return v4

    .line 1230
    :cond_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request because periodInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1232
    return v4

    .line 1235
    :cond_1
    const/4 v0, 0x0

    .line 1236
    .local v0, "minSupportedPeriodMs":I
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-eqz v1, :cond_3

    .line 1237
    iget-object v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v1

    mul-int/lit16 v0, v1, 0xc8

    .line 1253
    :cond_2
    :goto_0
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-ge v1, v0, :cond_6

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing scan request because minSupportedPeriodMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    const-string/jumbo v2, " but the request wants "

    .line 1254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    iget v2, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1256
    return v4

    .line 1239
    :cond_3
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    .line 1241
    const/16 v0, 0x3e8

    .line 1243
    :cond_4
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 1245
    add-int/lit16 v0, v0, 0x3e8

    .line 1247
    :cond_5
    iget v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 1249
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    .line 1259
    :cond_6
    const-string/jumbo v1, "addScanRequest"

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeAllScanRequests()V

    .line 1261
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1262
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1263
    const/4 v1, 0x1

    return v1

    .line 1265
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1266
    const-string/jumbo v1, "Failing scan request because failed to reset scan"

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1267
    return v4
.end method

.method addSingleScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1272
    if-nez p1, :cond_0

    .line 1273
    const-string/jumbo v0, "WifiScanningService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failing single scan request ClientInfo not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return v3

    .line 1276
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    if-nez v0, :cond_1

    .line 1277
    iput v1, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 1279
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v0, :cond_2

    .line 1280
    const/16 v0, 0x2710

    iput v0, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1283
    :cond_2
    const-string/jumbo v0, "addSingleScanRequest"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->removeAllScanRequests()V

    .line 1285
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    iput v3, p3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 1289
    return v1

    .line 1291
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1292
    const-string/jumbo v0, "Failing scan request because failed to reset scan"

    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1293
    return v3
.end method

.method configureWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->configure(Landroid/net/wifi/WifiScanner$WifiChangeSettings;)V

    .line 1391
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump WifiScanner from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1928
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1929
    const-string/jumbo v1, ", uid="

    .line 1927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1930
    const-string/jumbo v1, " without permission "

    .line 1927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1931
    const-string/jumbo v1, "android.permission.DUMP"

    .line 1927
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    return-void

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1924
    return-void
.end method

.method public getAvailableChannels(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "band"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->getChannelsForBand(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v2

    .line 104
    .local v2, "channelSpecs":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 106
    .local v1, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "Channels"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 110
    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 96
    :cond_0
    const-string/jumbo v0, "WifiScanningServiceImpl trying to get messenger w/o initialization"

    invoke-static {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 97
    return-object v1
.end method

.method logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p3, "id"    # I
    .param p4, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    .prologue
    .line 1209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1210
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    const-string/jumbo v1, "\nClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    invoke-virtual {p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1213
    const-string/jumbo v1, "\nId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1215
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    if-eqz p4, :cond_0

    .line 1217
    invoke-static {p4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1218
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    :cond_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1221
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method removeAllScanRequests()V
    .locals 4

    .prologue
    .line 1306
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1307
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1308
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeAllScanRequests()V

    goto :goto_0

    .line 1305
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method removeScanRequest(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 2
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    const/4 v1, 0x0

    .line 1298
    if-eqz p1, :cond_0

    .line 1299
    const-string/jumbo v0, "removeScanRequest"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->logScanRequest(Ljava/lang/String;Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$ScanSettings;)V

    .line 1300
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeScanRequest(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 1297
    :cond_0
    return-void
.end method

.method replyFailed(Landroid/os/Message;ILjava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 907
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 908
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 909
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27012

    iput v2, v1, Landroid/os/Message;->what:I

    .line 910
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 911
    new-instance v2, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v2, p2, p3}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 913
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 914
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method replySucceeded(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 892
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 893
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 894
    .local v1, "reply":Landroid/os/Message;
    const v2, 0x27011

    iput v2, v1, Landroid/os/Message;->what:I

    .line 895
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 897
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v1    # "reply":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 898
    .restart local v1    # "reply":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method reportScanResults()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1313
    invoke-static {v5}, Lcom/android/server/wifi/WifiNative;->getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    .line 1314
    .local v3, "results":[Landroid/net/wifi/WifiScanner$ScanData;
    if-nez v3, :cond_0

    .line 1315
    const-string/jumbo v4, "No SCAN results received"

    invoke-static {v4}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1316
    const/4 v4, 0x0

    return v4

    .line 1318
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1319
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1320
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    goto :goto_0

    .line 1323
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    return v5
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1396
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1397
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1398
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiChanged([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1395
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 1403
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1404
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1405
    .local v0, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportWifiStabilized([Landroid/net/wifi/ScanResult;)V

    goto :goto_0

    .line 1402
    .end local v0    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_0
    return-void
.end method

.method resetBuckets()Z
    .locals 20

    .prologue
    .line 1161
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;)V

    .line 1162
    .local v2, "c":Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 1163
    .local v5, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1164
    .local v3, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v13

    .line 1165
    .local v13, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1166
    .local v10, "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->prepChannelMap(Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_0

    .line 1170
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    .end local v12    # "s$iterator":Ljava/util/Iterator;
    .end local v13    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1171
    .restart local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScans()Ljava/util/Iterator;

    move-result-object v8

    .line 1172
    .local v8, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1174
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1175
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1176
    .local v7, "id":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 1177
    .restart local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-virtual {v2, v10}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->addScanRequestToBucket(Landroid/net/wifi/WifiScanner$ScanSettings;)I

    move-result v9

    .line 1178
    .local v9, "newPeriodInMs":I
    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    .line 1180
    const/4 v14, 0x0

    return v14

    .line 1182
    :cond_4
    iget v14, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-eq v9, v14, :cond_3

    .line 1183
    invoke-virtual {v3, v7, v10, v9}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V

    goto :goto_1

    .line 1188
    .end local v3    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v7    # "id":I
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "newPeriodInMs":I
    .end local v10    # "s":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->compressBuckets()V

    .line 1190
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;->getComputedSettings()Lcom/android/server/wifi/WifiNative$ScanSettings;

    move-result-object v11

    .line 1191
    .local v11, "s":Lcom/android/server/wifi/WifiNative$ScanSettings;
    iget v14, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    if-nez v14, :cond_6

    .line 1193
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1194
    const/4 v14, 0x1

    return v14

    .line 1196
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v11, v14}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Successfully started scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " buckets at"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1198
    const-string/jumbo v15, "time = "

    .line 1197
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    .line 1197
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1198
    const-string/jumbo v15, " period "

    .line 1197
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1199
    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->base_period_ms:I

    .line 1197
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->localLog(Ljava/lang/String;)V

    .line 1200
    const/4 v14, 0x1

    return v14

    .line 1202
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to start scan of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/wifi/WifiNative$ScanSettings;->num_buckets:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " buckets"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/wifi/WifiScanningServiceImpl;->loge(Ljava/lang/String;)V

    .line 1203
    const/4 v14, 0x0

    return v14
.end method

.method resetHotlist()V
    .locals 13

    .prologue
    .line 1327
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1328
    .local v4, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    const/4 v7, 0x0

    .line 1330
    .local v7, "num_hotlist_ap":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ci$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1331
    .local v2, "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v1

    .line 1332
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1333
    .local v8, "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    add-int/2addr v7, v12

    goto :goto_0

    .line 1337
    .end local v1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v7, :cond_2

    .line 1338
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->resetHotlist()V

    .line 1326
    :goto_1
    return-void

    .line 1340
    :cond_2
    new-array v0, v7, [Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1341
    .local v0, "bssidInfos":[Landroid/net/wifi/WifiScanner$BssidInfo;
    const/4 v6, 0x0

    .line 1342
    .local v6, "index":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1343
    .restart local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getHotlistSettings()Ljava/util/Collection;

    move-result-object v11

    .line 1344
    .local v11, "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 1345
    .restart local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    array-length v12, v12

    if-ge v5, v12, :cond_4

    .line 1346
    iget-object v12, v8, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aget-object v12, v12, v5

    aput-object v12, v0, v6

    .line 1345
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1351
    .end local v2    # "ci":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .end local v5    # "i":I
    .end local v8    # "s":Landroid/net/wifi/WifiScanner$HotlistSettings;
    .end local v9    # "s$iterator":Ljava/util/Iterator;
    .end local v11    # "settings":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    :cond_5
    new-instance v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    invoke-direct {v10}, Landroid/net/wifi/WifiScanner$HotlistSettings;-><init>()V

    .line 1352
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    iput-object v0, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 1353
    const/4 v12, 0x3

    iput v12, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->apLostThreshold:I

    .line 1354
    iget-object v12, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-static {v10, v12}, Lcom/android/server/wifi/WifiNative;->setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z

    goto :goto_1
.end method

.method resetHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1364
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeHostlistSettings(I)V

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1363
    return-void
.end method

.method setHotlist(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;ILandroid/net/wifi/WifiScanner$HotlistSettings;)V
    .locals 0
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I
    .param p3, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;

    .prologue
    .line 1359
    invoke-virtual {p1, p3, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 1358
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 231
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiScanningService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiScanningServiceImpl$ClientHandler;

    .line 235
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    .line 236
    new-instance v1, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    .line 237
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 239
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mContext:Landroid/content/Context;

    .line 240
    new-instance v2, Lcom/android/server/wifi/WifiScanningServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiScanningServiceImpl;)V

    .line 252
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "wifi_scan_available"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->start()V

    .line 255
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->start()V

    .line 228
    return-void
.end method

.method trackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 1
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->enable()V

    .line 1372
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->addSignificantWifiChange(I)V

    .line 1370
    return-void
.end method

.method untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V
    .locals 4
    .param p1, "ci"    # Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    .param p2, "handler"    # I

    .prologue
    .line 1376
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->removeSignificantWifiChange(I)V

    .line 1377
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 1378
    .local v2, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ci2$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;

    .line 1379
    .local v0, "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getWifiChangeHandlers()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1382
    return-void

    .line 1388
    .end local v0    # "ci2":Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl;->mWifiChangeStateMachine:Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiChangeStateMachine;->disable()V

    .line 1375
    return-void
.end method
