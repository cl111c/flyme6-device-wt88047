.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xd

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 131
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$002(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Ljava/util/Timer;)Ljava/util/Timer;

    .line 132
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->NsrmPollTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$000(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;

    invoke-direct {v1, p0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1$1;-><init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    const-string v2, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v2, 0xb

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v2, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 146
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 151
    const-string v2, "state"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 152
    .local v10, "headphonesConnected":I
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v3, 0x4

    if-nez v10, :cond_4

    :goto_1
    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v2, v3, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 155
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v10    # "headphonesConnected":I
    :cond_5
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string v2, "state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z
    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$302(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 159
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->hdmiConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$300(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto :goto_0

    .line 161
    :cond_6
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 164
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 169
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const-string v1, "connected"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$402(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 170
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$500(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 172
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$400(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->usbConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$502(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 175
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_7
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 178
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 184
    const-string v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 185
    .local v6, "BluetoothConnected":I
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-ne v6, v4, :cond_8

    move v2, v1

    :goto_2
    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v3, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 188
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v2

    iget-object v3, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v3}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$700(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 190
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-ne v6, v4, :cond_9

    :goto_3
    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v2, v5, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 192
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$702(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    :cond_8
    move v2, v0

    .line 185
    goto :goto_2

    :cond_9
    move v1, v0

    .line 190
    goto :goto_3

    .line 195
    .end local v6    # "BluetoothConnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_a
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 198
    .restart local v9    # "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 203
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 204
    .local v7, "BluetoothDisconnected":I
    const/16 v1, 0xa

    if-ne v7, v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v1, v5, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    .line 207
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$602(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 208
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$600(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->bluetoothConnected_shadow:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$702(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto/16 :goto_0

    .line 211
    .end local v7    # "BluetoothDisconnected":I
    .end local v9    # "extras":Landroid/os/Bundle;
    :cond_b
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 213
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 216
    .local v11, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_1

    .line 222
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 225
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 228
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v0, v3, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 234
    :cond_c
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # getter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$800(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # setter for: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->wifip2pOn:Z
    invoke-static {v1, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$802(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    .line 237
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->sendNsrmState(IZ)V
    invoke-static {v1, v3, v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$200(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;IZ)V

    goto/16 :goto_0

    .line 241
    .end local v11    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_d
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$1;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    # invokes: Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->updateDozeTriggerStatus()V
    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->access$900(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    goto/16 :goto_0
.end method
