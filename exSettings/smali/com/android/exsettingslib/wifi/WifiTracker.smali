.class public Lcom/android/exsettingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;,
        Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;,
        Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/exsettingslib/wifi/WifiTracker$1;
    }
.end annotation


# static fields
.field public static sVerboseLogging:I


# instance fields
.field private mAccessPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIncludePasspoints:Z

.field private final mIncludeSaved:Z

.field private final mIncludeScans:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

.field private final mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSavedNetworksExist:Z

.field private mScanId:Ljava/lang/Integer;

.field private mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

.field private mSeenBssids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;


# direct methods
.method static synthetic -get0(Lcom/android/exsettingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->handleResume()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateAccessPoints()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettingslib/wifi/WifiTracker;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettingslib/wifi/WifiTracker;->sVerboseLogging:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z

    .prologue
    .line 107
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 106
    invoke-direct/range {v0 .. v8}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZLandroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;
    .param p3, "workerLooper"    # Landroid/os/Looper;
    .param p4, "includeSaved"    # Z
    .param p5, "includeScans"    # Z
    .param p6, "includePasspoints"    # Z
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "currentLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 502
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/wifi/WifiTracker$1;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 118
    if-nez p8, :cond_1

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    .line 122
    :cond_1
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    .line 123
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    .line 124
    if-eqz p3, :cond_3

    .line 123
    .end local p3    # "workerLooper":Landroid/os/Looper;
    :goto_0
    invoke-direct {v0, p0, p3}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    .line 125
    iput-object p7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iput-boolean p4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeSaved:Z

    .line 127
    iput-boolean p5, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeScans:Z

    .line 128
    iput-boolean p6, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    .line 129
    iput-object p2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mListener:Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;

    .line 132
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    sput v0, Lcom/android/exsettingslib/wifi/WifiTracker;->sVerboseLogging:I

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 135
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    .restart local p3    # "workerLooper":Landroid/os/Looper;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must include either saved or scans"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p3, p8

    .line 124
    goto :goto_0
.end method

.method private fetchScanResults()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 261
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 262
    .local v4, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "newResult$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 263
    .local v2, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    .end local v2    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_0
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    .line 269
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 270
    .local v6, "threshold":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 270
    if-eqz v7, :cond_2

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 274
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 276
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 283
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "threshold":Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    return-object v7
.end method

.method private getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/exsettingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 415
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 416
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 417
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 419
    .local v2, "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    .line 420
    return-object v2

    .line 416
    .end local v2    # "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    new-instance v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    return-object v3
.end method

.method private getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/exsettingslib/wifi/AccessPoint;"
        }
    .end annotation

    .prologue
    .line 427
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 428
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 429
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v3, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 431
    .local v2, "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 432
    return-object v2

    .line 428
    .end local v2    # "ret":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    new-instance v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/android/exsettingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    return-object v3
.end method

.method public static getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeSaved"    # Z
    .param p2, "includeScans"    # Z
    .param p3, "includePasspoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 495
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker;

    move-object v1, p0

    move-object v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/exsettingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    .line 497
    .local v0, "tracker":Lcom/android/exsettingslib/wifi/WifiTracker;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->forceUpdate()V

    .line 498
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_2

    .line 289
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 290
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_0

    .line 291
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v3, :cond_0

    .line 292
    :cond_1
    return-object v0

    .line 296
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method private handleResume()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 255
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSeenBssids:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 256
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanId:Ljava/lang/Integer;

    .line 253
    return-void
.end method

.method private updateAccessPoints()V
    .locals 22

    .prologue
    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v6

    .line 302
    .local v6, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v4, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 306
    .local v2, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->clearConfig()V

    goto :goto_0

    .line 311
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    new-instance v5, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;)V

    .line 312
    .local v5, "apMap":Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;, "Lcom/android/exsettingslib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    const/4 v10, 0x0

    .line 313
    .local v10, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 317
    .end local v10    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 318
    .local v9, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v9, :cond_9

    .line 319
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettingslib/wifi/WifiTracker;->mSavedNetworksExist:Z

    .line 320
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "config$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 321
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v0, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 324
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v2

    .line 325
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 327
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v20

    if-nez v20, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v10, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeSaved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 332
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludePasspoints:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 333
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_6
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v20

    if-nez v20, :cond_2

    .line 336
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 319
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "config$iterator":Ljava/util/Iterator;
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 341
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v8    # "config$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 346
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "config$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->fetchScanResults()Ljava/util/Collection;

    move-result-object v19

    .line 347
    .local v19, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    if-eqz v19, :cond_10

    .line 348
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "result$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 350
    .local v17, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_a

    .line 351
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "[IBSS]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 350
    if-nez v20, :cond_a

    .line 355
    const/4 v11, 0x0

    .line 356
    .local v11, "found":Z
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 357
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 358
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v2, Lcom/android/exsettingslib/wifi/AccessPoint;->foundInScanResult:Z

    .line 359
    const/4 v11, 0x1

    .line 363
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_c
    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mIncludeScans:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 364
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/ScanResult;Ljava/util/List;)Lcom/android/exsettingslib/wifi/AccessPoint;

    move-result-object v2

    .line 365
    .restart local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v10, v0, v1}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 369
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 371
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_e

    .line 372
    invoke-virtual {v2, v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 376
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 376
    if-eqz v20, :cond_f

    .line 378
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v20

    .line 376
    if-eqz v20, :cond_f

    .line 381
    invoke-virtual {v2, v10}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 384
    :cond_f
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v2}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 391
    .end local v2    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v11    # "found":Z
    .end local v17    # "result":Landroid/net/wifi/ScanResult;
    .end local v18    # "result$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "prevAccessPoint$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 396
    .local v14, "prevAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v14}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 397
    invoke-virtual {v14}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v16

    .line 398
    .local v16, "prevSsid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 399
    .restart local v11    # "found":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "newAccessPoint$iterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 400
    .local v12, "newAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    invoke-virtual {v12}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v20

    if-eqz v20, :cond_12

    invoke-virtual {v12}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 401
    const/4 v11, 0x1

    .line 405
    .end local v12    # "newAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_13
    if-eqz v11, :cond_11

    goto :goto_4

    .line 410
    .end local v11    # "found":Z
    .end local v13    # "newAccessPoint$iterator":Ljava/util/Iterator;
    .end local v14    # "prevAccessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    .end local v16    # "prevSsid":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v5, 0x4

    .line 440
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 442
    return-void

    .line 445
    :cond_0
    if-eqz p1, :cond_4

    .line 446
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_4

    .line 447
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    invoke-virtual {v3, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 452
    :goto_0
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 453
    if-eqz p1, :cond_1

    .line 454
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 457
    :cond_1
    const/4 v0, 0x0

    .line 458
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/exsettingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 462
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v2, 0x0

    .line 463
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 464
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    const/4 v2, 0x1

    .line 463
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 449
    .end local v1    # "i":I
    .end local v2    # "reorder":Z
    :cond_4
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 468
    .restart local v1    # "i":I
    .restart local v2    # "reorder":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 469
    iget-object v4, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v4

    .line 470
    :try_start_0
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 472
    iget-object v3, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 438
    :cond_6
    return-void

    .line 469
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 477
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 476
    return-void

    .line 484
    :cond_1
    iput-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 485
    iput-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 486
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_0
.end method


# virtual methods
.method public doSavedNetworksExist()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mSavedNetworksExist:Z

    return v0
.end method

.method public forceScan()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->forceScan()V

    .line 155
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->updateAccessPoints()V

    .line 148
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mAccessPoints:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pauseScanning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 167
    iput-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    .line 164
    :cond_0
    return-void
.end method

.method public resumeScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 180
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mScanner:Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 174
    :cond_2
    return-void
.end method

.method public startTracking()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->resumeScanning()V

    .line 195
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    .line 193
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-boolean v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mWorkHandler:Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    .line 211
    iget-object v0, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    iput-boolean v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker;->mRegistered:Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/wifi/WifiTracker;->pauseScanning()V

    .line 207
    return-void
.end method
