.class public abstract Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/exsettings/RestrictedSettingsFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/exsettingslib/bluetooth/BluetoothCallback;


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "restrictedKey"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 67
    sget-object v0, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 65
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 133
    .local v2, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cachedDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .line 134
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 130
    .end local v0    # "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    .line 176
    const-string/jumbo v1, "DeviceListPreferenceFragment"

    const-string/jumbo v2, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .line 182
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 181
    invoke-direct {v0, v1, p1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    .line 184
    .local v0, "preference":Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V

    .line 185
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method initDevicePreference(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 193
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 215
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/exsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exsettings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    .line 83
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "DeviceListPreferenceFragment"

    const-string/jumbo v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 91
    const-string/jumbo v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 79
    return-void
.end method

.method public onDeviceAdded(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V

    .line 161
    :cond_2
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .line 199
    .local v0, "preference":Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .param p1, "btPreference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 120
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/exsettingslib/bluetooth/BluetoothCallback;)V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 141
    const-string/jumbo v2, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2, v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 143
    return v4

    .line 146
    :cond_0
    instance-of v2, p2, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 147
    check-cast v0, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .line 148
    .local v0, "btPreference":Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 149
    .local v1, "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V

    .line 151
    return v4

    .line 154
    .end local v0    # "btPreference":Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;
    .end local v1    # "device":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/exsettings/RestrictedSettingsFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 107
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/exsettingslib/bluetooth/BluetoothCallback;)V

    .line 109
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 102
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 204
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 126
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 127
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 124
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 94
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 74
    return-void
.end method

.method final setFilter(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 70
    return-void
.end method
