.class Lcom/android/exsettingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/exsettingslib/wifi/WifiTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/wifi/WifiTracker;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    const-string/jumbo v3, "wifi_state"

    .line 508
    const/4 v4, 0x4

    .line 507
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/exsettingslib/wifi/WifiTracker;->-wrap3(Lcom/android/exsettingslib/wifi/WifiTracker;I)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    const-string/jumbo v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 509
    if-nez v2, :cond_2

    .line 511
    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 509
    if-eqz v2, :cond_3

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 515
    :cond_3
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 517
    const-string/jumbo v2, "networkInfo"

    .line 516
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 518
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get0(Lcom/android/exsettingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 520
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get3(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    .line 522
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 523
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    .line 525
    :cond_4
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 527
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/exsettingslib/wifi/WifiTracker$1;->this$0:Lcom/android/exsettingslib/wifi/WifiTracker;

    invoke-static {v2}, Lcom/android/exsettingslib/wifi/WifiTracker;->-get5(Lcom/android/exsettingslib/wifi/WifiTracker;)Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/exsettingslib/wifi/WifiTracker$WorkHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
