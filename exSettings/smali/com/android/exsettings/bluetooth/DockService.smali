.class public final Lcom/android/exsettings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;,
        Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;,
        Lcom/android/exsettings/bluetooth/DockService$1;,
        Lcom/android/exsettings/bluetooth/DockService$2;,
        Lcom/android/exsettings/bluetooth/DockService$3;,
        Lcom/android/exsettings/bluetooth/DockService$4;
    }
.end annotation


# instance fields
.field private mAudioMediaCheckbox:Landroid/widget/CheckBox;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method static synthetic -get0(Lcom/android/exsettings/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettings/bluetooth/DockService;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/exsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/exsettings/bluetooth/DockService;)I
    .locals 1

    iget v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 128
    iput v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 129
    iput v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 570
    new-instance v0, Lcom/android/exsettings/bluetooth/DockService$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/DockService$1;-><init>(Lcom/android/exsettings/bluetooth/DockService;)V

    .line 569
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 582
    new-instance v0, Lcom/android/exsettings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/DockService$2;-><init>(Lcom/android/exsettings/bluetooth/DockService;)V

    .line 581
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 600
    new-instance v0, Lcom/android/exsettings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/DockService$3;-><init>(Lcom/android/exsettings/bluetooth/DockService;)V

    .line 599
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 614
    new-instance v0, Lcom/android/exsettings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/DockService$4;-><init>(Lcom/android/exsettings/bluetooth/DockService;)V

    .line 613
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    .line 816
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    :cond_0
    monitor-exit p0

    .line 818
    return-void

    .line 816
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v8, :cond_0

    .line 817
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v8, :cond_0

    .line 822
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_5

    aget-boolean v3, v8, v7

    .line 823
    .local v3, "enable":Z
    if-eqz v3, :cond_4

    .line 824
    iget-object v10, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 830
    .local v0, "btState":I
    iget-object v10, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 833
    const/16 v10, 0xc

    if-eq v0, v10, :cond_4

    .line 834
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit p0

    .line 835
    return-void

    .line 838
    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 839
    iput p2, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingStartId:I

    .line 840
    const/16 v7, 0xb

    if-eq v0, v7, :cond_3

    .line 841
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 842
    const-string/jumbo v8, "disable_bt_when_undock"

    const/4 v9, 0x1

    .line 841
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 844
    return-void

    .line 822
    .end local v0    # "btState":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 849
    .end local v3    # "enable":Z
    :cond_5
    const/4 v7, 0x0

    :try_start_3
    iput-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, "callConnect":Z
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 854
    .local v1, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    array-length v7, v7

    if-ge v4, v7, :cond_8

    .line 855
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    aget-object v5, v7, v4

    .line 858
    .local v5, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_7

    .line 860
    const/4 v2, 0x1

    .line 869
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v7, v7, v4

    invoke-interface {v5, p1, v7}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 854
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 861
    :cond_7
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v7, v7, v4

    if-nez v7, :cond_6

    .line 863
    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 864
    .local v6, "status":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 866
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    aget-object v7, v7, v4

    invoke-virtual {v1, v7}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "callConnect":Z
    .end local v4    # "i":I
    .end local v5    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v6    # "status":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 877
    .restart local v1    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .restart local v2    # "callConnect":Z
    .restart local v4    # "i":I
    :cond_8
    if-eqz v2, :cond_9

    .line 879
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v1, v7}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    .line 815
    return-void
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    monitor-enter p0

    .line 804
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 806
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 807
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 808
    .local v1, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 809
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 810
    return-void

    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    .line 803
    return-void

    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "profile$iterator":Ljava/util/Iterator;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 490
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 493
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 495
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 496
    packed-switch p2, :pswitch_data_0

    .line 503
    return-void

    .line 506
    :pswitch_0
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/android/exsettings/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    .line 508
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    .local v1, "ab":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 512
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 514
    if-eqz p1, :cond_3

    .line 517
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v8, 0x0

    .line 519
    .local v8, "firstTime":Z
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v8}, Lcom/android/exsettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 521
    .local v10, "items":[Ljava/lang/CharSequence;
    const v4, 0x7f0c06db

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 524
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v10, v4, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    const v4, 0x7f0400f0

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 528
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f1301fb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 531
    .local v12, "rememberCheckbox":Landroid/widget/CheckBox;
    if-nez v8, :cond_2

    .line 532
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 533
    :goto_1
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 554
    .local v11, "pixelScaleFactor":F
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 555
    .local v3, "viewSpacingLeft":I
    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v11

    float-to-int v5, v4

    .line 556
    .local v5, "viewSpacingRight":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 559
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    move/from16 v0, p3

    iput v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 562
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 563
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 564
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 565
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 489
    return-void

    .line 517
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewSpacingLeft":I
    .end local v5    # "viewSpacingRight":I
    .end local v11    # "pixelScaleFactor":F
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "firstTime":Z
    goto :goto_0

    .line 531
    .restart local v2    # "view":Landroid/view/View;
    .restart local v10    # "items":[Ljava/lang/CharSequence;
    .restart local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_2
    const/4 v7, 0x1

    .local v7, "checked":Z
    goto :goto_1

    .line 540
    .end local v2    # "view":Landroid/view/View;
    .end local v7    # "checked":Z
    .end local v8    # "firstTime":Z
    .end local v10    # "items":[Ljava/lang/CharSequence;
    .end local v12    # "rememberCheckbox":Landroid/widget/CheckBox;
    :cond_3
    const v4, 0x7f0c06db

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 542
    const v4, 0x7f040063

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 544
    .restart local v2    # "view":Landroid/view/View;
    const v4, 0x7f1300fc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 543
    iput-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 546
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 547
    const-string/jumbo v6, "dock_audio_media_enabled"

    const/4 v13, 0x0

    .line 546
    invoke-static {v4, v6, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 547
    const/4 v6, 0x1

    .line 546
    if-ne v4, v6, :cond_4

    const/4 v7, 0x1

    .line 549
    .restart local v7    # "checked":Z
    :goto_3
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 550
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 546
    .end local v7    # "checked":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "checked":Z
    goto :goto_3

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 911
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 912
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 915
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 187
    const-string/jumbo v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/exsettings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9
    .param p1, "startId"    # I

    .prologue
    const/16 v8, -0x64

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 728
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/exsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 739
    :cond_0
    iput-object v6, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 740
    iget v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 767
    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v8, :cond_2

    .line 768
    iget v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 769
    iput v8, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 772
    :cond_2
    invoke-static {p0, p1}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 727
    return-void

    .line 742
    :cond_3
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 748
    .local v2, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v4}, Lcom/android/exsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 749
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 750
    const-string/jumbo v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 752
    .local v3, "state":I
    if-eqz v3, :cond_4

    .line 754
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    .line 753
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 755
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 758
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const-string/jumbo v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    .line 758
    if-eqz v4, :cond_1

    .line 760
    iput p1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 761
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 762
    return-void
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v3, -0x64

    .line 694
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, "btState":I
    monitor-enter p0

    .line 697
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 698
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/exsettings/bluetooth/DockService;->handleBluetoothStateOn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 693
    return-void

    .line 699
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 704
    :try_start_1
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 705
    invoke-static {p0, p2}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 706
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 711
    :try_start_2
    iget v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    .line 712
    iget v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 713
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 717
    :cond_3
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    .line 718
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 719
    iput p2, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 721
    :cond_4
    invoke-static {p0, p2}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    monitor-enter p0

    .line 885
    if-eqz p1, :cond_0

    .line 886
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 885
    if-eqz v0, :cond_0

    .line 888
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 889
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/exsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 884
    return-void

    .line 891
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    monitor-enter p0

    .line 896
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 897
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 898
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 900
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 902
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 904
    if-eqz p1, :cond_1

    .line 905
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 906
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    .line 895
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 6
    .param p1, "disconnectedDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p3, "startId"    # I

    .prologue
    monitor-enter p0

    .line 782
    if-eqz p1, :cond_0

    .line 784
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/exsettings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 785
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 786
    const-string/jumbo v4, "android.intent.extra.DOCK_STATE"

    .line 787
    const/4 v5, 0x0

    .line 786
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 788
    .local v3, "state":I
    if-eqz v3, :cond_0

    .line 790
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    .line 789
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 791
    .local v1, "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 792
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 794
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 800
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "dockedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "state":I
    :cond_0
    invoke-static {p0, p3}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 776
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "firstTime"    # Z

    .prologue
    const v3, 0x7f0c06dd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 642
    packed-switch p2, :pswitch_data_0

    .line 652
    const/4 v2, 0x0

    return-object v2

    .line 646
    :pswitch_0
    const/4 v1, 0x1

    .line 655
    .local v1, "numOfProfiles":I
    :goto_0
    new-array v2, v1, [Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 656
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    .line 657
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 660
    .local v0, "items":[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    .line 689
    :goto_1
    return-object v0

    .line 649
    .end local v0    # "items":[Ljava/lang/CharSequence;
    .end local v1    # "numOfProfiles":I
    :pswitch_1
    const/4 v1, 0x2

    .line 650
    .restart local v1    # "numOfProfiles":I
    goto :goto_0

    .line 662
    .restart local v0    # "items":[Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x7f0c06dc

    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 663
    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 664
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 665
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 666
    if-eqz p3, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 669
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_1

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 672
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_1

    .line 679
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 680
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 681
    if-eqz p3, :cond_1

    .line 683
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_1

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfiles:[Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_1

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    const/4 v1, 0x0

    return v1

    .line 321
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "disable_bt"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    iput p1, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 326
    return v3
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 381
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    const/16 v3, 0x1bc

    invoke-virtual {v2, v3}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 382
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    const/16 v3, 0x22b

    invoke-virtual {v2, v3}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 383
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "disable_bt"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    if-eqz p1, :cond_3

    .line 386
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/exsettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 397
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 398
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 401
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 423
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 403
    :cond_2
    move-object v0, p1

    .line 404
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Lcom/android/exsettings/bluetooth/DockService$5;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/exsettings/bluetooth/DockService$5;-><init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 409
    return v6

    .line 415
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 416
    const-string/jumbo v3, "dock_audio_media_enabled"

    .line 415
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 417
    .local v1, "dockAudioMediaEnabled":I
    if-ne v1, v5, :cond_1

    .line 418
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 419
    invoke-direct {p0, v4, p2, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 420
    return v6
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 341
    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 349
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "disable_bt_when_undock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "disable_bt_when_undock"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return v4

    .line 359
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    .line 360
    const/16 v3, 0x22b

    .line 359
    invoke-virtual {v2, v3, v4, p2, v5}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    .line 362
    const-wide/16 v4, 0x7d0

    .line 361
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    const/4 v2, 0x1

    return v2
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "startId"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 449
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 450
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    const/16 v4, -0x4d2

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 458
    .local v2, "state":I
    packed-switch v2, :pswitch_data_0

    .line 482
    return-object v5

    .line 460
    :pswitch_0
    const/16 v1, 0x14d

    .line 485
    .local v1, "msgType":I
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    return-object v3

    .line 465
    .end local v1    # "msgType":I
    :pswitch_1
    if-nez v0, :cond_0

    .line 466
    const-string/jumbo v3, "DockService"

    const-string/jumbo v4, "device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v5

    .line 471
    :cond_0
    :pswitch_2
    const-string/jumbo v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 472
    if-nez v0, :cond_1

    .line 473
    const-string/jumbo v3, "DockService"

    const-string/jumbo v4, "device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-object v5

    .line 476
    :cond_1
    const/16 v1, 0x6f

    .restart local v1    # "msgType":I
    goto :goto_0

    .line 478
    .end local v1    # "msgType":I
    :cond_2
    const/16 v1, 0xde

    .restart local v1    # "msgType":I
    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 267
    .local v2, "msgType":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 268
    .local v4, "state":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 269
    .local v3, "startId":I
    const/4 v1, 0x0

    .line 270
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 271
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 279
    .local v0, "deferFinishCall":Z
    sparse-switch v2, :sswitch_data_0

    .line 303
    .end local v0    # "deferFinishCall":Z
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_2

    .line 304
    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    monitor-exit p0

    .line 265
    return-void

    .line 281
    .restart local v0    # "deferFinishCall":Z
    :sswitch_0
    if-eqz v1, :cond_1

    .line 282
    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/exsettings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "deferFinishCall":Z
    .end local v2    # "msgType":I
    .end local v3    # "startId":I
    .end local v4    # "state":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 287
    .restart local v0    # "deferFinishCall":Z
    .restart local v2    # "msgType":I
    .restart local v3    # "startId":I
    .restart local v4    # "state":I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/exsettings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .local v0, "deferFinishCall":Z
    goto :goto_0

    .line 291
    .local v0, "deferFinishCall":Z
    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/exsettings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    .local v0, "deferFinishCall":Z
    goto :goto_0

    .line 295
    .local v0, "deferFinishCall":Z
    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/exsettings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 299
    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/exsettings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z

    move-result v0

    .local v0, "deferFinishCall":Z
    goto :goto_0

    .line 307
    .end local v0    # "deferFinishCall":Z
    :cond_3
    invoke-static {p0, v3}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .param p1, "dock"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 428
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;>;"
    iget-object v5, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 429
    .local v1, "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p0

    .line 430
    return v6

    .line 429
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "deviceUI$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 438
    .local v3, "deviceUI":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 439
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceUI":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :cond_3
    monitor-exit p0

    .line 445
    return v6

    .end local v1    # "btDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;>;"
    .end local v4    # "deviceUI$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-static {p0}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 138
    .local v0, "manager":Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 139
    const-string/jumbo v2, "DockService"

    const-string/jumbo v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 144
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 145
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 146
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 147
    const-string/jumbo v2, "DockService"

    const-string/jumbo v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 151
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 154
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 155
    new-instance v2, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/exsettings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;)V

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 164
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 173
    :cond_2
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 174
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 175
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 176
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 177
    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DockService;->mServiceHandler:Lcom/android/exsettings/bluetooth/DockService$ServiceHandler;

    .line 159
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 922
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 918
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 926
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 194
    if-nez p1, :cond_0

    .line 200
    invoke-static {p0, p3}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 201
    return v7

    .line 204
    :cond_0
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-direct {p0, p1, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    .line 206
    return v7

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 214
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    .line 215
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 217
    .local v0, "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "retryCount":I
    if-ge v3, v8, :cond_2

    .line 219
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 222
    :cond_2
    return v7

    .line 223
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_3
    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    .line 224
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 227
    .restart local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 228
    .restart local v3    # "retryCount":I
    if-ge v3, v8, :cond_4

    .line 229
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/DockService;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/exsettings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 232
    :cond_4
    return v7

    .line 235
    .end local v0    # "disconnectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "retryCount":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 236
    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_6

    .line 239
    invoke-static {p0, p3}, Lcom/android/exsettings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 240
    return v7

    .line 243
    :cond_6
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_7

    .line 244
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    :cond_7
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 248
    invoke-direct {p0, v1}, Lcom/android/exsettings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    .line 250
    return v7
.end method
