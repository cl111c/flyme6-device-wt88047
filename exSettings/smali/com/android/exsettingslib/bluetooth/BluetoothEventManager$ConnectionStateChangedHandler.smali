.class Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 213
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    const-string/jumbo v2, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 214
    const/high16 v3, -0x80000000

    .line 213
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;->this$0:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-static {v2, v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->-wrap0(Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 211
    return-void
.end method
