.class Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;
.super Landroid/os/Handler;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_bluetooth_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 58
    .local v0, "isBluetoothOn":Z
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->-get0(Lcom/android/exsettings/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/exsettings/search/Index;

    move-result-object v1

    .line 59
    const-class v2, Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/exsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
