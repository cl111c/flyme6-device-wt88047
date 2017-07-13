.class public Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockBluetoothCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    .line 933
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 969
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 970
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 971
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 972
    .local v2, "state":I
    if-eqz v2, :cond_0

    .line 973
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 974
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 979
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    :cond_0
    return-object v5
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .prologue
    .line 937
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 940
    return-void
.end method

.method public onDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 938
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 951
    invoke-virtual {p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 952
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    .line 953
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 955
    invoke-static {v1, v2}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 959
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 950
    :cond_0
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 939
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DockService$DockBluetoothCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 943
    return-void
.end method
