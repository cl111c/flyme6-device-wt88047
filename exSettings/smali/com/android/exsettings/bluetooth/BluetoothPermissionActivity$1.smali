.class Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string/jumbo v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    .line 64
    const/4 v4, 0x2

    .line 63
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "requestType":I
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;->-get1(Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;)I

    move-result v3

    if-eq v2, v3, :cond_0

    return-void

    .line 66
    :cond_0
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 67
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;->-get0(Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;

    invoke-static {v3}, Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;->-wrap0(Lcom/android/exsettings/bluetooth/BluetoothPermissionActivity;)V

    .line 60
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "requestType":I
    :cond_1
    return-void
.end method
