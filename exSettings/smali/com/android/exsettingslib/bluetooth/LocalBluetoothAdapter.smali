.class public final Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static sInstance:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 55
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 54
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .locals 3

    .prologue
    const-class v2, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 76
    :cond_0
    sget-object v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 81
    return-void
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 186
    iget v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 94
    return-void
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 216
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 217
    if-eqz p1, :cond_1

    .line 218
    const/16 v1, 0xb

    .line 217
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 211
    :goto_2
    return-void

    .line 214
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .restart local v0    # "success":Z
    goto :goto_0

    .line 219
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    monitor-enter p0

    .line 190
    :try_start_0
    iput p1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 192
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 189
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method setProfileManager(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 58
    return-void
.end method

.method public setScanMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 142
    return-void
.end method

.method public setScanMode(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public startScanning(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    if-nez p1, :cond_2

    .line 156
    iget-wide v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 157
    return-void

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 162
    .local v0, "a2dp":Lcom/android/exsettingslib/bluetooth/A2dpProfile;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpSinkProfile()Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    move-result-object v1

    .line 166
    .local v1, "a2dpSink":Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;->isA2dpPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    return-void

    .line 171
    .end local v0    # "a2dp":Lcom/android/exsettingslib/bluetooth/A2dpProfile;
    .end local v1    # "a2dpSink":Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;
    :cond_2
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    .line 150
    :cond_3
    return-void
.end method

.method public stopScanning()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 177
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 204
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 206
    const/4 v1, 0x1

    return v1

    .line 208
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
