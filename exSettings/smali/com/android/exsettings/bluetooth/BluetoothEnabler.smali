.class public final Lcom/android/exsettings/bluetooth/BluetoothEnabler;
.super Lcom/android/exsettings/dashboard/GenericSwitchToggle;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;,
        Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;
    }
.end annotation


# static fields
.field private static final EVENT_DATA_IS_BT_ON:Ljava/lang/String; = "is_bluetooth_on"

.field private static final EVENT_UPDATE_INDEX:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 52
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/exsettings/widget/SwitchBar;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    .line 52
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->init()V

    .line 75
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 89
    .local v0, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 91
    iput-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 96
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 87
    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private updateSearchIndex(Z)V
    .locals 3
    .param p1, "isBluetoothOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

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

    const-string/jumbo v2, "is_bluetooth_on"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 152
    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    .line 131
    :goto_0
    return-void

    .line 134
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 139
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 147
    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->updateSearchIndex(Z)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 187
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    if-eqz p2, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/exsettingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0x9f

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 183
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 166
    return-void

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c070f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->pause()V

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/exsettings/dashboard/GenericSwitchToggle;->resume(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 112
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 118
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->show()V

    .line 99
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/exsettings/widget/SwitchBar;->hide()V

    .line 103
    return-void
.end method
