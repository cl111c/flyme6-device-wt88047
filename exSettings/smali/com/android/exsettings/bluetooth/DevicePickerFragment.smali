.class public final Lcom/android/exsettings/bluetooth/DevicePickerFragment;
.super Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mDeviceSelected:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 59
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 61
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x19

    return v0
.end method

.method initDevicePreference(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 67
    const v0, 0x7f0400b7

    invoke-virtual {p1, v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 66
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 159
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0565

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 99
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v3, "no_config_bluetooth"

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    if-nez p1, :cond_0

    move v1, v2

    .line 99
    :cond_0
    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    const v0, 0x7f0c06b5

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    const v1, 0x10803ea

    .line 72
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 121
    iget-boolean v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    if-nez v1, :cond_1

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.bluetooth.devicepicker.action.DEVICE_NOT_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 146
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 148
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->finish()V

    .line 145
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 134
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/android/exsettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 136
    const/16 v1, 0xc

    .line 135
    if-eq v0, v1, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V

    .line 131
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 84
    return v1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 108
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mDeviceSelected:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 111
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 105
    :cond_0
    return-void
.end method
