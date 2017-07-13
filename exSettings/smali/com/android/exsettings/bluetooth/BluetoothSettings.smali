.class public final Lcom/android/exsettings/bluetooth/BluetoothSettings;
.super Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/exsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/bluetooth/BluetoothSettings$1;,
        Lcom/android/exsettings/bluetooth/BluetoothSettings$2;,
        Lcom/android/exsettings/bluetooth/BluetoothSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

.field private static mSettingsDialogView:Landroid/view/View;


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInitialScanStarted:Z

.field private mInitiateDiscoverable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;


# direct methods
.method static synthetic -set0(Lcom/android/exsettings/bluetooth/BluetoothSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;

    .line 568
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$3;-><init>()V

    .line 567
    sput-object v0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 529
    new-instance v0, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 130
    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .param p4, "addCachedDevices"    # Z

    .prologue
    .line 365
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 367
    invoke-virtual {p0, p3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 369
    if-eqz p4, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 372
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 364
    return-void
.end method

.method private resetBarSize(FII)V
    .locals 12
    .param p1, "titleTextSize"    # F
    .param p2, "actionBarHeight"    # I
    .param p3, "switchBarHeight"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 185
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "action_bar"

    const-string/jumbo v10, "id"

    const-string/jumbo v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 186
    .local v6, "titleId":I
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 187
    .local v7, "toolbar":Landroid/widget/Toolbar;
    const/4 v5, 0x0

    .line 188
    .local v5, "title":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 191
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p2

    .line 190
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 192
    const/4 v3, 0x0

    .end local v5    # "title":Landroid/widget/TextView;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 193
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 194
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 196
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 198
    .local v1, "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    const/16 v8, 0x10

    iput v8, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "childLayoutParams":Landroid/widget/Toolbar$LayoutParams;
    .end local v3    # "i":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    if-eqz v5, :cond_2

    .line 202
    const/4 v8, 0x1

    invoke-virtual {v5, v8, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    :cond_2
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    if-eqz v8, :cond_3

    .line 204
    iget-object v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/exsettings/widget/SwitchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 206
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v8, p3

    .line 205
    const/4 v9, 0x1

    invoke-static {v9, v8, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method private setOffMessage()V
    .locals 6

    .prologue
    .line 473
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    const v4, 0x7f0c06cc

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 478
    .local v1, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 480
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "ble_scan_always_enabled"

    const/4 v5, 0x0

    .line 479
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 480
    const/4 v5, 0x1

    .line 479
    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 482
    .local v0, "bleScanningMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 484
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 500
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 472
    return-void

    .line 479
    .end local v0    # "bleScanningMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bleScanningMode":Z
    goto :goto_0

    .line 486
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v2, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 488
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const v4, 0x7f0c06cd

    invoke-virtual {p0, v4}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v5, Lcom/android/exsettings/bluetooth/BluetoothSettings$4;

    invoke-direct {v5, p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings$4;-><init>(Lcom/android/exsettings/bluetooth/BluetoothSettings;)V

    invoke-static {v4, v2, v5}, Lcom/android/exsettings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/exsettings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1
.end method

.method private startScanning()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 339
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 348
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 353
    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 354
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 332
    return-void

    .line 351
    :cond_3
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "mAvailableDevicesCategory is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateContent(I)V
    .locals 10
    .param p1, "bluetoothState"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 377
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 379
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 462
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 464
    if-eqz v0, :cond_1

    .line 465
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 375
    :cond_2
    return-void

    .line 381
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 382
    invoke-virtual {v3, v9}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 385
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 386
    const v0, 0x7f0c0557

    .line 387
    goto :goto_0

    .line 391
    :cond_3
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_9

    .line 392
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 396
    :goto_1
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 398
    sget-object v5, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 397
    const v6, 0x7f0c06c1

    .line 396
    invoke-direct {p0, v4, v6, v5, v9}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 399
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 401
    .local v2, "numberOfPairedDevices":I
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    if-gtz v2, :cond_5

    .line 402
    :cond_4
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_5
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_a

    .line 407
    new-instance v4, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 408
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->setSelectable(Z)V

    .line 412
    :goto_2
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 414
    sget-object v5, Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iget-boolean v6, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 413
    const v7, 0x7f0c06c2

    .line 412
    invoke-direct {p0, v4, v7, v5, v6}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/exsettingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 415
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 417
    .local v1, "numberOfAvailableDevices":I
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    if-nez v4, :cond_6

    .line 418
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 421
    :cond_6
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_7

    .line 422
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 425
    :cond_7
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 426
    iget-object v7, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v7}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0c0558

    .line 425
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 428
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 434
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v4, :cond_8

    .line 436
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 437
    iput-boolean v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 439
    :cond_8
    return-void

    .line 394
    .end local v1    # "numberOfAvailableDevices":I
    .end local v2    # "numberOfPairedDevices":I
    :cond_9
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_1

    .line 410
    .restart local v2    # "numberOfPairedDevices":I
    :cond_a
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 442
    .end local v2    # "numberOfPairedDevices":I
    :pswitch_1
    const v0, 0x7f0c0570

    .line 443
    goto/16 :goto_0

    .line 446
    :pswitch_2
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 448
    iget-boolean v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v4, :cond_b

    .line 449
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v4, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v8}, Lcom/android/exsettings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 451
    :cond_b
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    const v0, 0x7f0c0557

    goto/16 :goto_0

    .line 457
    :pswitch_3
    const v0, 0x7f0c056f

    .line 458
    iput-boolean v8, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    goto/16 :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 219
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 218
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 564
    const v0, 0x7f0c0ddc

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x18

    return v0
.end method

.method initDevicePreference(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 556
    .local v0, "cachedDevice":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 142
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitialScanStarted:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SettingsActivity;

    .line 151
    .local v0, "activity":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/exsettings/SettingsActivity;->getSwitchBar()Lcom/android/exsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    .line 153
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/exsettings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    .line 154
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 141
    return-void

    .line 144
    .end local v0    # "activity":Lcom/android/exsettings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 505
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 508
    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 504
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f0b00a2

    .line 159
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 164
    .local v1, "activity":Landroid/app/Activity;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 165
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 166
    const v5, 0x7f0b009d

    .line 165
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 167
    .local v3, "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 168
    const v5, 0x7f0b00a1

    .line 167
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 169
    .local v2, "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 170
    const v5, 0x7f0b009f

    .line 169
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 179
    .local v0, "actionBarHeight":I
    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->resetBarSize(FII)V

    .line 158
    return-void

    .line 172
    .end local v0    # "actionBarHeight":I
    .end local v2    # "switchBarHeight":I
    .end local v3    # "titleTextSize":F
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 173
    const v5, 0x7f0b009e

    .line 172
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 174
    .restart local v3    # "titleTextSize":F
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 176
    .restart local v2    # "switchBarHeight":I
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "actionBarHeight":I
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v4, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v7, 0xc

    if-ne v4, v7, :cond_3

    const/4 v0, 0x1

    .line 278
    .local v0, "bluetoothIsEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 279
    .local v2, "isDiscovering":Z
    if-eqz v2, :cond_4

    const v3, 0x7f0c06b6

    .line 282
    .local v3, "textId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 283
    const-string/jumbo v7, "bluetooth_accept_all_files"

    .line 282
    invoke-static {v4, v7, v5}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_5

    const/4 v1, 0x1

    .line 285
    .local v1, "isAcceptAllFilesEnabled":Z
    :goto_2
    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 286
    if-eqz v0, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    move v4, v5

    .line 285
    :goto_3
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    const/4 v4, 0x2

    const v7, 0x7f0c0553

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 291
    const/4 v4, 0x3

    const v7, 0x7f0c0564

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 293
    const/4 v4, 0x4

    const v7, 0x7f0c0268

    invoke-interface {p1, v5, v4, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 297
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 272
    return-void

    .line 277
    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isAcceptAllFilesEnabled":Z
    .end local v2    # "isDiscovering":Z
    .end local v3    # "textId":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "bluetoothIsEnabled":Z
    goto :goto_0

    .line 280
    .restart local v2    # "isDiscovering":Z
    :cond_4
    const v3, 0x7f0c06b5

    .restart local v3    # "textId":I
    goto :goto_1

    .line 282
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isAcceptAllFilesEnabled":Z
    goto :goto_2

    :cond_6
    move v4, v6

    .line 286
    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDestroyView()V

    .line 214
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 211
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 526
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 523
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 360
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/exsettings/bluetooth/BluetoothDevicePreference;)V

    .line 358
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 304
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 306
    invoke-direct {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 308
    :cond_0
    return v3

    .line 311
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 312
    new-instance v1, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v4, "rename device"

    .line 312
    invoke-virtual {v1, v2, v4}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 314
    return v3

    .line 317
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    return v3

    .line 323
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 324
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 325
    const-string/jumbo v4, "bluetooth_accept_all_files"

    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 324
    :cond_1
    invoke-static {v1, v4, v2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    return v3

    :cond_2
    move v1, v3

    .line 323
    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 255
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->pause()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    return-void

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/exsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 235
    :cond_1
    invoke-super {p0}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0557

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 225
    :cond_3
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 515
    invoke-super {p0, p1}, Lcom/android/exsettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/exsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 514
    :cond_0
    return-void
.end method
