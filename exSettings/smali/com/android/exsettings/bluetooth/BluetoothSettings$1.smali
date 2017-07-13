.class Lcom/android/exsettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/exsettings/bluetooth/BluetoothSettings;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    iget-object v3, v3, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0558

    .line 124
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "state":I
    const-string/jumbo v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->updateDeviceName(Landroid/content/Context;)V

    .line 117
    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/exsettings/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->-set0(Lcom/android/exsettings/bluetooth/BluetoothSettings;Z)Z

    .line 108
    :cond_1
    return-void
.end method
