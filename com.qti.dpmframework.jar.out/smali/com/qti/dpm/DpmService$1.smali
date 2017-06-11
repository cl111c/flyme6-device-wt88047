.class Lcom/qti/dpm/DpmService$1;
.super Landroid/content/BroadcastReceiver;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmService;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmService;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "action":Ljava/lang/String;
    const-string v26, "SERVICE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DPM received action "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v26, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v27, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendScreenState(Z)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$400(Lcom/qti/dpm/DpmService;Z)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->mScreenOn:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$502(Lcom/qti/dpm/DpmService;Z)Z

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v26, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v27, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendScreenState(Z)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$400(Lcom/qti/dpm/DpmService;Z)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->mScreenOn:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$502(Lcom/qti/dpm/DpmService;Z)Z

    goto :goto_0

    .line 473
    :cond_2
    const-string v26, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string v26, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 475
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    # getter for: Lcom/qti/dpm/DpmService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->access$600(Lcom/qti/dpm/DpmService;)Landroid/net/wifi/WifiManager;

    move-result-object v26

    if-eqz v26, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    # invokes: Lcom/qti/dpm/DpmService;->setWlanInfo(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$700(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->getWlanInfo()Lcom/qti/dpm/DpmService$DpmWifiInfo;

    move-result-object v7

    .line 478
    .local v7, "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    if-eqz v7, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/qti/dpm/DpmService;->sendWifiStatus(Lcom/qti/dpm/DpmService$DpmWifiInfo;)V
    invoke-static {v0, v7}, Lcom/qti/dpm/DpmService;->access$800(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWifiInfo;)V

    goto :goto_0

    .line 482
    .end local v7    # "dpmWifiInfo":Lcom/qti/dpm/DpmService$DpmWifiInfo;
    :cond_4
    const-string v26, "SERVICE"

    const-string v27, "DPM received action Network State Changed, null WifiManager"

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_5
    const-string v26, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 485
    const-string v26, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, "apnType":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 487
    const-string v26, "SERVICE"

    const-string v27, "DPM error getting apnType"

    # invokes: Lcom/qti/dpm/DpmService;->loge(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1000(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_6
    const-string v26, "default"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    # invokes: Lcom/qti/dpm/DpmService;->setWwanInfo(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/qti/dpm/DpmService;->access$1100(Lcom/qti/dpm/DpmService;Landroid/content/Intent;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->getWwanInfo()Lcom/qti/dpm/DpmService$DpmWwanInfo;

    move-result-object v8

    .line 494
    .local v8, "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    if-eqz v8, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/qti/dpm/DpmService;->sendWwanStatus(Lcom/qti/dpm/DpmService$DpmWwanInfo;)V
    invoke-static {v0, v8}, Lcom/qti/dpm/DpmService;->access$1200(Lcom/qti/dpm/DpmService;Lcom/qti/dpm/DpmService$DpmWwanInfo;)V

    goto/16 :goto_0

    .line 498
    .end local v8    # "dpmWwanInfo":Lcom/qti/dpm/DpmService$DpmWwanInfo;
    :cond_7
    const-string v26, "SERVICE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DPM currently does not support this apnType="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    # invokes: Lcom/qti/dpm/DpmService;->dlogd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1300(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 500
    .end local v4    # "apnType":Ljava/lang/String;
    :cond_8
    const-string v26, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 501
    const-string v26, "availableArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 503
    .local v6, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v26, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 505
    .local v3, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v26, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 508
    .local v9, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v26, "SERVICE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "available = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " errored = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    # getter for: Lcom/qti/dpm/DpmService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->access$1400(Lcom/qti/dpm/DpmService;)Landroid/content/Context;

    move-result-object v26

    const-string v27, "connectivity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    .line 513
    .local v14, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v16

    .line 514
    .local v16, "mWifiRegexs":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v15

    .line 515
    .local v15, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, "mBluetoothRegexs":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "o":Ljava/lang/Object;
    move-object/from16 v23, v17

    .line 518
    check-cast v23, Ljava/lang/String;

    .line 519
    .local v23, "s":Ljava/lang/String;
    move-object/from16 v5, v16

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_9

    aget-object v20, v5, v11

    .line 520
    .local v20, "regex":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 521
    const-string v26, "SERVICE"

    const-string v27, "wifi tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .line 519
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 527
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v17    # "o":Ljava/lang/Object;
    .end local v20    # "regex":Ljava/lang/String;
    .end local v23    # "s":Ljava/lang/String;
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .local v19, "ousb":Ljava/lang/Object;
    move-object/from16 v25, v19

    .line 528
    check-cast v25, Ljava/lang/String;

    .line 529
    .local v25, "susb":Ljava/lang/String;
    move-object v5, v15

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_2
    if-ge v11, v12, :cond_c

    aget-object v22, v5, v11

    .line 530
    .local v22, "regexusb":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 531
    const-string v26, "SERVICE"

    const-string v27, "usb tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .line 529
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 537
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v19    # "ousb":Ljava/lang/Object;
    .end local v22    # "regexusb":Ljava/lang/String;
    .end local v25    # "susb":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "obt":Ljava/lang/Object;
    move-object/from16 v24, v18

    .line 538
    check-cast v24, Ljava/lang/String;

    .line 539
    .local v24, "sbt":Ljava/lang/String;
    move-object v5, v13

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v12, :cond_f

    aget-object v21, v5, v11

    .line 540
    .local v21, "regexbt":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 541
    const-string v26, "SERVICE"

    const-string v27, "bluetooth tethered"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # setter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .line 539
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 547
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "obt":Ljava/lang/Object;
    .end local v21    # "regexbt":Ljava/lang/String;
    .end local v24    # "sbt":Ljava/lang/String;
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_12

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1502(Lcom/qti/dpm/DpmService;Z)Z

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1602(Lcom/qti/dpm/DpmService;Z)Z

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1702(Lcom/qti/dpm/DpmService;Z)Z

    .line 551
    const-string v26, "SERVICE"

    const-string v27, "Tethering disabled"

    # invokes: Lcom/qti/dpm/DpmService;->logd(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    # getter for: Lcom/qti/dpm/DpmService;->wifiTethered:Z
    invoke-static/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->access$1500(Lcom/qti/dpm/DpmService;)Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    # getter for: Lcom/qti/dpm/DpmService;->usbTethered:Z
    invoke-static/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->access$1600(Lcom/qti/dpm/DpmService;)Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    # getter for: Lcom/qti/dpm/DpmService;->bluetoothTethered:Z
    invoke-static/range {v26 .. v26}, Lcom/qti/dpm/DpmService;->access$1700(Lcom/qti/dpm/DpmService;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 555
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_ON:Z

    move/from16 v27, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 557
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qti/dpm/DpmService$1;->this$0:Lcom/qti/dpm/DpmService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/qti/dpm/DpmService;->DPM_EVENT_STATE_OFF:Z

    move/from16 v27, v0

    # invokes: Lcom/qti/dpm/DpmService;->sendTetheringState(Z)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$1800(Lcom/qti/dpm/DpmService;Z)V

    goto/16 :goto_0

    .line 560
    .end local v3    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "mBluetoothRegexs":[Ljava/lang/String;
    .end local v14    # "mCm":Landroid/net/ConnectivityManager;
    .end local v15    # "mUsbRegexs":[Ljava/lang/String;
    .end local v16    # "mWifiRegexs":[Ljava/lang/String;
    :cond_15
    const-string v26, "SERVICE"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DPM received unexpected action: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    # invokes: Lcom/qti/dpm/DpmService;->logw(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Lcom/qti/dpm/DpmService;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
