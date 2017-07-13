.class Lcom/android/exsettings/ResetNetworkConfirm$1;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/exsettings/ResetNetworkConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/ResetNetworkConfirm;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/exsettings/ResetNetworkConfirm$1;->this$0:Lcom/android/exsettings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    iget-object v7, p0, Lcom/android/exsettings/ResetNetworkConfirm$1;->this$0:Lcom/android/exsettings/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/exsettings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 74
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v7, "connectivity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 75
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 80
    :cond_1
    const-string/jumbo v7, "wifi"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 79
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 81
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_2

    .line 82
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 86
    :cond_2
    const-string/jumbo v7, "phone"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 85
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 87
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_3

    .line 88
    iget-object v7, p0, Lcom/android/exsettings/ResetNetworkConfirm$1;->this$0:Lcom/android/exsettings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/exsettings/ResetNetworkConfirm;->-get0(Lcom/android/exsettings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 92
    :cond_3
    const-string/jumbo v7, "netpolicy"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    check-cast v3, Landroid/net/NetworkPolicyManager;

    .line 93
    .local v3, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v3, :cond_4

    .line 94
    iget-object v7, p0, Lcom/android/exsettings/ResetNetworkConfirm$1;->this$0:Lcom/android/exsettings/ResetNetworkConfirm;

    invoke-static {v7}, Lcom/android/exsettings/ResetNetworkConfirm;->-get0(Lcom/android/exsettings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 99
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "bluetooth"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 100
    .local v0, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 104
    :cond_5
    invoke-static {v2}, Lcom/android/ims/ImsManager;->factoryReset(Landroid/content/Context;)V

    .line 106
    const v7, 0x7f0c0905

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 66
    return-void
.end method
