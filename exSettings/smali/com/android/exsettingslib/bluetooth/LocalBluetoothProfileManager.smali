.class public final Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;,
        Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mDunProfile:Lcom/android/exsettingslib/bluetooth/DunServerProfile;

.field private final mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

.field private final mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "eventManager"    # Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 99
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 102
    iput-object p3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 103
    iput-object p4, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .line 105
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 106
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 108
    invoke-virtual {p2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 111
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 116
    :cond_0
    new-instance v1, Lcom/android/exsettingslib/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/exsettingslib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

    .line 117
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

    const-string/jumbo v2, "HID"

    .line 118
    const-string/jumbo v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 117
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/exsettingslib/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

    .line 121
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

    const-string/jumbo v2, "PAN"

    .line 122
    const-string/jumbo v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 121
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Lcom/android/exsettingslib/bluetooth/MapProfile;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 126
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 125
    invoke-direct {v1, v2, v3, v4, p0}, Lcom/android/exsettingslib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    .line 127
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    const-string/jumbo v2, "MAP"

    .line 128
    const-string/jumbo v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    .line 127
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "ro.bluetooth.dun"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    new-instance v1, Lcom/android/exsettingslib/bluetooth/DunServerProfile;

    invoke-direct {v1, p1}, Lcom/android/exsettingslib/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/exsettingslib/bluetooth/DunServerProfile;

    .line 133
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/exsettingslib/bluetooth/DunServerProfile;

    const-string/jumbo v2, "DUN Server"

    .line 134
    const-string/jumbo v3, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    .line 133
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    new-instance v1, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    invoke-direct {v1, p1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    .line 139
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    const-string/jumbo v2, "PBAP Server"

    .line 140
    const-string/jumbo v3, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    .line 139
    invoke-direct {p0, v1, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "LocalBluetoothProfileManager"

    const-string/jumbo v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method private addPanProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    .line 218
    new-instance v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 217
    invoke-virtual {v0, p3, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 219
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method private addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "stateChangedAction"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/exsettingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 212
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 293
    .local v0, "l":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 291
    .end local v0    # "l":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 300
    .local v0, "listener":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 298
    .end local v0    # "listener":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method public getA2dpProfile()Lcom/android/exsettingslib/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getA2dpSinkProfile()Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    return-object v0

    .line 331
    :cond_0
    return-object v1
.end method

.method public getHeadsetProfile()Lcom/android/exsettingslib/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method public getMapProfile()Lcom/android/exsettingslib/bluetooth/MapProfile;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    return-object v0
.end method

.method public getPbapProfile()Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    .line 309
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .line 313
    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 316
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    .line 317
    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 320
    :cond_2
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeServiceListener(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 229
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 227
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 154
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 156
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/exsettingslib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    .line 158
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    const-string/jumbo v1, "A2DP"

    .line 159
    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 158
    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_1

    .line 167
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    .line 169
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    const-string/jumbo v1, "A2DPSink"

    .line 170
    const-string/jumbo v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 169
    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_7

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    if-nez v0, :cond_3

    .line 180
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 182
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 181
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/exsettingslib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    .line 183
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    const-string/jumbo v1, "HEADSET"

    .line 184
    const-string/jumbo v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    :goto_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    if-nez v0, :cond_4

    .line 193
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/android/exsettingslib/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/exsettingslib/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    .line 196
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string/jumbo v1, "OPP"

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 152
    return-void

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_1

    .line 173
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 187
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :cond_8
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    if-eqz v0, :cond_4

    .line 199
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "localUuids"    # [Landroid/os/ParcelUuid;
    .param p5, "isPanNapConnected"    # Z
    .param p6, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    .local p4, "removedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v2, 0x2

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 361
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    if-nez p1, :cond_0

    monitor-exit p0

    .line 365
    return-void

    .line 368
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 369
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 369
    if-nez v0, :cond_2

    .line 371
    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 369
    if-eqz v0, :cond_3

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 378
    :cond_3
    sget-object v0, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_4
    sget-object v0, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 390
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/exsettingslib/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 396
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 397
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 396
    if-eqz v0, :cond_8

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

    if-eqz v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/exsettingslib/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 403
    :cond_8
    if-eqz p5, :cond_9

    .line 404
    const-string/jumbo v0, "LocalBluetoothProfileManager"

    const-string/jumbo v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_9
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 406
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_d

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/exsettingslib/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_b

    .line 412
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    invoke-virtual {v0, p6}, Lcom/android/exsettingslib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 413
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/exsettingslib/bluetooth/MapProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/exsettingslib/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 418
    :cond_b
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    invoke-virtual {v0, p6}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 420
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, p6, v1}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    monitor-exit p0

    .line 358
    return-void

    .line 405
    :cond_d
    if-eqz p5, :cond_a

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
