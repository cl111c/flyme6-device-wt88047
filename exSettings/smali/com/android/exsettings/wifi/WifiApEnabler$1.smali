.class Lcom/android/exsettings/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/WifiApEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/wifi/WifiApEnabler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-string/jumbo v6, "wifi_state"

    .line 52
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 54
    .local v5, "state":I
    if-ne v5, v8, :cond_1

    .line 55
    const-string/jumbo v6, "wifi_ap_error_code"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 57
    .local v4, "reason":I
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-static {v6, v5, v4}, Lcom/android/exsettings/wifi/WifiApEnabler;->-wrap1(Lcom/android/exsettings/wifi/WifiApEnabler;II)V

    .line 49
    .end local v4    # "reason":I
    .end local v5    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v5    # "state":I
    :cond_1
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-static {v6, v5, v7}, Lcom/android/exsettings/wifi/WifiApEnabler;->-wrap1(Lcom/android/exsettings/wifi/WifiApEnabler;II)V

    goto :goto_0

    .line 61
    .end local v5    # "state":I
    :cond_2
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 62
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-static {v6}, Lcom/android/exsettings/wifi/WifiApEnabler;->-get0(Lcom/android/exsettings/wifi/WifiApEnabler;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    .line 64
    const-string/jumbo v7, "wifi_state"

    const/4 v8, 0x4

    .line 63
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/exsettings/wifi/WifiApEnabler;->-wrap2(Lcom/android/exsettings/wifi/WifiApEnabler;I)V

    goto :goto_0

    .line 66
    :cond_3
    const-string/jumbo v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 68
    const-string/jumbo v6, "availableArray"

    .line 67
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "activeArray"

    .line 69
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 72
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v6, "erroredArray"

    .line 71
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 73
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/exsettings/wifi/WifiApEnabler;->-wrap3(Lcom/android/exsettings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    iget-object v6, p0, Lcom/android/exsettings/wifi/WifiApEnabler$1;->this$0:Lcom/android/exsettings/wifi/WifiApEnabler;

    invoke-static {v6}, Lcom/android/exsettings/wifi/WifiApEnabler;->-wrap0(Lcom/android/exsettings/wifi/WifiApEnabler;)V

    goto :goto_0
.end method
