.class public Lcom/android/exsettings/wifi/WifiEnabler;
.super Lcom/android/exsettings/dashboard/GenericSwitchToggle;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wifi/WifiEnabler$1;,
        Lcom/android/exsettings/wifi/WifiEnabler$2;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_IS_WIFI_ON:Ljava/lang/String; = "is_wifi_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/wifi/WifiEnabler;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$1;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$2;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiEnabler;->init()V

    .line 97
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiEnabler;->setupSwitches()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$1;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/android/exsettings/wifi/WifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wifi/WifiEnabler$2;-><init>(Lcom/android/exsettings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiEnabler;->init()V

    .line 90
    invoke-direct {p0}, Lcom/android/exsettings/wifi/WifiEnabler;->setupSwitches()V

    .line 86
    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 166
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 152
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    .line 131
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 139
    invoke-direct {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 147
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private setupSwitches()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 111
    .local v0, "state":I
    invoke-direct {p0, v0}, Lcom/android/exsettings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 112
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 109
    :cond_0
    return-void
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isWiFiOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 160
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 161
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_wifi_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 212
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 185
    iget-boolean v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/exsettingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 197
    .local v0, "wifiApState":I
    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 198
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 202
    if-eqz p2, :cond_6

    const/16 v1, 0x8b

    .line 201
    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 203
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 205
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/wifi/WifiEnabler;->setEnabled(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c070d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_4
    return-void

    .line 190
    .end local v0    # "wifiApState":I
    :cond_5
    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c070f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 191
    invoke-virtual {p0, v3}, Lcom/android/exsettings/wifi/WifiEnabler;->setChecked(Z)V

    .line 192
    return-void

    .line 202
    .restart local v0    # "wifiApState":I
    :cond_6
    const/16 v1, 0x8a

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->pause()V

    .line 128
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method
