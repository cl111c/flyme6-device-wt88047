.class Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 65
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 67
    return-void
.end method
