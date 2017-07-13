.class Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;
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
    .line 290
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    const-string/jumbo v1, "BluetoothDevicePreference"

    const-string/jumbo v2, "Receiver DISABLED_ACTION "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get3(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get3(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get3(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get2(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    invoke-static {v2}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->-get0(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
