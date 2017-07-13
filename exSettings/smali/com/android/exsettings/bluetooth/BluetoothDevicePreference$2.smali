.class Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$2;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 219
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get1(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get2(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get0(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    return-void
.end method
