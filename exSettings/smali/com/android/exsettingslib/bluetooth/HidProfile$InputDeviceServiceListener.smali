.class final Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/HidProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/HidProfile;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/HidProfile;Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/HidProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/exsettingslib/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 55
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HidProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-set1(Lcom/android/exsettingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 58
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-static {v3}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get4(Lcom/android/exsettingslib/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothInputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-static {v3}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get1(Lcom/android/exsettingslib/bluetooth/HidProfile;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 63
    .local v0, "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 64
    const-string/jumbo v3, "HidProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HidProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-static {v3}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get1(Lcom/android/exsettingslib/bluetooth/HidProfile;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-static {v4}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get2(Lcom/android/exsettingslib/bluetooth/HidProfile;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-static {v5}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get3(Lcom/android/exsettingslib/bluetooth/HidProfile;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 70
    .end local v0    # "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-set0(Lcom/android/exsettingslib/bluetooth/HidProfile;Z)Z

    .line 54
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 74
    invoke-static {}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HidProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/exsettingslib/bluetooth/HidProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/exsettingslib/bluetooth/HidProfile;->-set0(Lcom/android/exsettingslib/bluetooth/HidProfile;Z)Z

    .line 73
    return-void
.end method
