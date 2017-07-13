.class public Lcom/android/exsettings/wifi/WifiStatusTest;
.super Landroid/app/Activity;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/WifiStatusTest$1;,
        Lcom/android/exsettings/wifi/WifiStatusTest$2;,
        Lcom/android/exsettings/wifi/WifiStatusTest$3;
    }
.end annotation


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mRSSI:Landroid/widget/TextView;

.field private mSSID:Landroid/widget/TextView;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private pingTestButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;

.field updateButtonHandler:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/exsettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/exsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/exsettings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->updatePingState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "hasError"    # Z
    .param p3, "error"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/exsettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->httpClientTest()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->pingHostname()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/exsettings/wifi/WifiStatusTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->pingIpAddr()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "supplicantState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/exsettings/wifi/WifiStatusTest;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/android/exsettings/wifi/WifiStatusTest$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiStatusTest$1;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    new-instance v0, Lcom/android/exsettings/wifi/WifiStatusTest$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiStatusTest$2;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/exsettings/wifi/WifiStatusTest$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiStatusTest$3;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 301
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 303
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    .line 301
    invoke-static {p0, v3, v4, v2, v5}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "summary":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    return-void

    .line 303
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleScanResultsAvailable()V
    .locals 6

    .prologue
    .line 269
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v2, "scanList":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 276
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 280
    :cond_1
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 287
    .end local v0    # "i":I
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v4, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method private handleSignalChanged(I)V
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "hasError"    # Z
    .param p3, "error"    # I

    .prologue
    .line 291
    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiStatusTest;->setWifiStateText(I)V

    .line 264
    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 396
    const/4 v3, 0x0

    .line 399
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v4, "https://www.google.com"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 401
    .local v3, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 402
    const-string/jumbo v4, "Pass"

    iput-object v4, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_0
    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 395
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_1
    return-void

    .line 404
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 406
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 409
    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 408
    :cond_2
    throw v4
.end method

.method private final pingHostname()V
    .locals 7

    .prologue
    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 380
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 381
    .local v4, "status":I
    if-nez v4, :cond_0

    .line 382
    const-string/jumbo v5, "Pass"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 376
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    return-void

    .line 384
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_0
    const-string/jumbo v5, "Fail: Host unreachable"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 386
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v5, "Fail: Unknown Host"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 390
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "Fail: InterruptedException"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 388
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Fail: IOException"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 8

    .prologue
    .line 361
    :try_start_0
    const-string/jumbo v2, "74.125.47.104"

    .line 362
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ping -c 1 -w 100 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 363
    .local v3, "p":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 364
    .local v4, "status":I
    if-nez v4, :cond_0

    .line 365
    const-string/jumbo v5, "Pass"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    .line 358
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :goto_0
    return-void

    .line 367
    .restart local v2    # "ipAddress":Ljava/lang/String;
    .restart local v3    # "p":Ljava/lang/Process;
    .restart local v4    # "status":I
    :cond_0
    const-string/jumbo v5, "Fail: IP addr not reachable"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 369
    .end local v2    # "ipAddress":Ljava/lang/String;
    .end local v3    # "p":Ljava/lang/Process;
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Fail: IOException"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "Fail: InterruptedException"

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .locals 2
    .param p1, "supplicantState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 205
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_0
    return-void

    .line 207
    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 223
    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 225
    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string/jumbo v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const-string/jumbo v0, "WifiStatusTest"

    const-string/jumbo v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setWifiStateText(I)V
    .locals 3
    .param p1, "wifiState"    # I

    .prologue
    .line 235
    packed-switch p1, :pswitch_data_0

    .line 252
    const-string/jumbo v0, "BAD"

    .line 253
    .local v0, "wifiStateString":Ljava/lang/String;
    const-string/jumbo v1, "WifiStatusTest"

    const-string/jumbo v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 237
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f0c07bc

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0c07bd

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0c07be

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f0c07bf

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 249
    .end local v0    # "wifiStateString":Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f0c07c0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "wifiStateString":Ljava/lang/String;
    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f0c052e

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 311
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/android/exsettings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v5, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v4, Lcom/android/exsettings/wifi/WifiStatusTest$4;

    invoke-direct {v4, p0}, Lcom/android/exsettings/wifi/WifiStatusTest$4;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;)V

    .line 326
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/android/exsettings/wifi/WifiStatusTest$5;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/exsettings/wifi/WifiStatusTest$5;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 333
    .local v3, "ipAddrThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 335
    new-instance v1, Lcom/android/exsettings/wifi/WifiStatusTest$6;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/exsettings/wifi/WifiStatusTest$6;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 342
    .local v1, "hostnameThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 344
    new-instance v2, Lcom/android/exsettings/wifi/WifiStatusTest$7;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/exsettings/wifi/WifiStatusTest$7;-><init>(Lcom/android/exsettings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 351
    .local v2, "httpClientThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 308
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    const v0, 0x7f04015b

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->setContentView(I)V

    .line 135
    const v0, 0x7f1302d9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f1302da

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f1302db

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f1302dc

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f1302dd

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f1302de

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f130298

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f1302df

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f1302e0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f1302e1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f1302e2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f1302e3

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f1302e4

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f1301d0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f1301d1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f1301d2

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f1301cf

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method
