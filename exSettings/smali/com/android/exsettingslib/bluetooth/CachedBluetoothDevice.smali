.class public final Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessageRejectionCount:I

.field private mName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "profileManager"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 168
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    .line 170
    iput-object p3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    .line 171
    iput-object p4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 173
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 167
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 247
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    return-void

    .line 251
    :cond_0
    iput-boolean v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 253
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 254
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 246
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    return-void
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const-string/jumbo v3, "CachedBluetoothDevice"

    const-string/jumbo v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 228
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "preferredProfiles":I
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 232
    .local v1, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_2

    invoke-interface {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-interface {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    goto :goto_1

    .line 241
    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-nez v0, :cond_4

    .line 242
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    .line 213
    :cond_4
    return-void
.end method

.method private describe(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string/jumbo v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 641
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 642
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 643
    .local v0, "callback":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 641
    .end local v0    # "callback":Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 640
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 483
    return-void
.end method

.method private fetchMessageRejectionCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 813
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 814
    const-string/jumbo v2, "bluetooth_message_reject"

    .line 813
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 815
    .local v0, "preference":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 812
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 412
    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 365
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 366
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 367
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 368
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 369
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fetchMessageRejectionCount()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 372
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 363
    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 781
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 782
    const-string/jumbo v4, "bluetooth_message_permission"

    .line 781
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 783
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 784
    return-void

    .line 787
    :cond_0
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 788
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 789
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 790
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 796
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 797
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 780
    return-void

    .line 791
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 792
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 718
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 719
    const-string/jumbo v4, "bluetooth_phonebook_permission"

    .line 718
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 720
    .local v2, "preferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    .line 725
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 726
    .local v1, "oldPermission":I
    if-ne v1, v6, :cond_2

    .line 727
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 733
    .end local v1    # "oldPermission":I
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 734
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    return-void

    .line 728
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "oldPermission":I
    :cond_2
    if-ne v1, v7, :cond_1

    .line 729
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method

.method private processPhonebookAccess()V
    .locals 3

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 833
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    sget-object v1, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-nez v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 838
    const/16 v2, 0x408

    .line 837
    if-ne v1, v2, :cond_2

    .line 839
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 841
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private saveMessageRejectionCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 819
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 820
    const-string/jumbo v2, "bluetooth_message_reject"

    .line 819
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 821
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-nez v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 826
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 818
    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 489
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_0

    return v3

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 492
    .local v2, "localUuids":[Landroid/os/ParcelUuid;
    if-nez v2, :cond_1

    return v3

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    .line 499
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 500
    iget-boolean v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 499
    invoke-virtual/range {v0 .. v6}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 512
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkAndIncreaseMessageRejectionCount()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 805
    iget v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-ge v0, v1, :cond_0

    .line 806
    iget v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 807
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 809
    :cond_0
    iget v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 355
    const-string/jumbo v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 358
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .param p1, "another"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 671
    invoke-virtual {p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 672
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    return v0

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 671
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 675
    .restart local v0    # "comparison":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    .line 676
    :goto_2
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    .line 675
    :goto_3
    sub-int v0, v1, v4

    .line 677
    if-eqz v0, :cond_5

    return v0

    :cond_3
    move v1, v3

    .line 675
    goto :goto_2

    :cond_4
    move v4, v3

    .line 676
    goto :goto_3

    .line 680
    :cond_5
    iget-boolean v1, p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    iget-boolean v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_5
    sub-int v0, v1, v2

    .line 681
    if-eqz v0, :cond_8

    return v0

    :cond_6
    move v1, v3

    .line 680
    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    .line 684
    :cond_8
    iget-short v1, p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 685
    if-eqz v0, :cond_9

    return v0

    .line 688
    :cond_9
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 669
    check-cast p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect(Z)V
    .locals 2
    .param p1, "connectAllProfiles"    # Z

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 204
    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 198
    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 277
    return-void

    .line 279
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 283
    return-void

    .line 285
    :cond_1
    :try_start_2
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 275
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectProfile(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 266
    return-void
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 177
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 178
    .local v1, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 183
    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/exsettingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 184
    .local v0, "PbapProfile":Lcom/android/exsettingslib/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/exsettingslib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 176
    :cond_1
    return-void
.end method

.method public disconnect(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 655
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 656
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v0, "connectableProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 617
    .local v1, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    .end local v1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method public getConnectionSummary()I
    .locals 8

    .prologue
    .line 862
    const/4 v5, 0x0

    .line 863
    .local v5, "profileConnected":Z
    const/4 v0, 0x0

    .line 864
    .local v0, "a2dpNotConnected":Z
    const/4 v2, 0x0

    .line 866
    .local v2, "headsetNotConnected":Z
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 867
    .local v3, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v3}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    .line 869
    .local v1, "connectionStatus":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 879
    :pswitch_0
    invoke-interface {v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 880
    instance-of v6, v3, Lcom/android/exsettingslib/bluetooth/A2dpProfile;

    if-nez v6, :cond_1

    .line 881
    instance-of v6, v3, Lcom/android/exsettingslib/bluetooth/A2dpSinkProfile;

    .line 880
    if-eqz v6, :cond_2

    .line 882
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 872
    :pswitch_1
    invoke-static {v1}, Lcom/android/exsettingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v6

    return v6

    .line 875
    :pswitch_2
    const/4 v5, 0x1

    .line 876
    goto :goto_0

    .line 883
    :cond_2
    instance-of v6, v3, Lcom/android/exsettingslib/bluetooth/HeadsetProfile;

    if-eqz v6, :cond_0

    .line 884
    const/4 v2, 0x1

    goto :goto_0

    .line 891
    .end local v1    # "connectionStatus":I
    .end local v3    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_3
    if-eqz v5, :cond_7

    .line 892
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 893
    sget v6, Lcom/android/exsettingslib/R$string;->bluetooth_connected_no_headset_no_a2dp:I

    return v6

    .line 894
    :cond_4
    if-eqz v0, :cond_5

    .line 895
    sget v6, Lcom/android/exsettingslib/R$string;->bluetooth_connected_no_a2dp:I

    return v6

    .line 896
    :cond_5
    if-eqz v2, :cond_6

    .line 897
    sget v6, Lcom/android/exsettingslib/R$string;->bluetooth_connected_no_headset:I

    return v6

    .line 899
    :cond_6
    sget v6, Lcom/android/exsettingslib/R$string;->bluetooth_connected:I

    return v6

    .line 903
    :cond_7
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    sget v6, Lcom/android/exsettingslib/R$string;->bluetooth_pairing:I

    :goto_1
    return v6

    :cond_8
    const/4 v6, 0x0

    goto :goto_1

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMessagePermissionChoice()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 739
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    .line 740
    .local v0, "permission":I
    if-ne v0, v2, :cond_0

    .line 741
    return v2

    .line 742
    :cond_0
    if-ne v0, v3, :cond_1

    .line 743
    return v3

    .line 745
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 696
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 697
    .local v0, "permission":I
    if-ne v0, v2, :cond_0

    .line 698
    return v2

    .line 699
    :cond_0
    if-ne v0, v3, :cond_1

    .line 700
    return v3

    .line 702
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getProfileConnectionState(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 347
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v0    # "state":I
    :cond_1
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getSimPermissionChoice()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 759
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    .line 760
    .local v0, "permission":I
    if-ne v0, v2, :cond_0

    .line 761
    return v2

    .line 762
    :cond_0
    if-ne v0, v3, :cond_1

    .line 763
    return v3

    .line 765
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 470
    iget-object v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 471
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 472
    .local v2, "status":I
    if-eq v2, v3, :cond_1

    .line 473
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 474
    :cond_1
    return v3

    .line 477
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 453
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "profile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    .line 454
    .local v0, "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 455
    .local v2, "status":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 456
    const/4 v3, 0x1

    return v3

    .line 460
    .end local v0    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .end local v2    # "status":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 207
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .param p1, "bondState"    # I

    .prologue
    const/4 v1, 0x0

    .line 576
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 578
    iput-boolean v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 579
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 581
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 582
    iput v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 583
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 588
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 594
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 575
    :cond_2
    return-void

    .line 591
    :cond_3
    iget-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0, v1}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 5
    .param p1, "profile"    # Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    .param p2, "newProfileState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string/jumbo v2, " newProfileState "

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 131
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 136
    instance-of v0, p1, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 138
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local p1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local p1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_2
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    instance-of v0, p1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_1

    .line 144
    check-cast p1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    .end local p1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/exsettingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 143
    if-eqz v0, :cond_1

    .line 146
    iput-boolean v4, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 149
    .restart local p1    # "profile":Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;
    :cond_3
    instance-of v0, p1, Lcom/android/exsettingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_4

    .line 150
    if-nez p2, :cond_4

    .line 151
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 152
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_4
    iget-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/exsettingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 155
    check-cast v0, Lcom/android/exsettingslib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/exsettingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 154
    if-eqz v0, :cond_1

    .line 156
    if-nez p2, :cond_1

    .line 157
    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iput-boolean v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 10

    .prologue
    .line 528
    const-string/jumbo v5, "CachedBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onUuidChanged, mProfile Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v1, "mPrevProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 532
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 537
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 543
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 544
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 545
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v5, "CachedBluetoothDevice"

    const-string/jumbo v6, "UUID not udpated, returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 540
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    return-void

    .line 548
    .restart local v0    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 549
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 551
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 553
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    const-wide/16 v2, 0x1388

    .line 554
    .local v2, "timeout":J
    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 555
    const-wide/16 v2, 0x7530

    .line 567
    :cond_4
    iget-object v5, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 568
    iget-wide v6, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 569
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 572
    :cond_5
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 527
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 421
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 521
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 519
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 409
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 407
    return-void
.end method

.method public registerCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 628
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 599
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 600
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 601
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 598
    :cond_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 751
    const/4 v0, 0x1

    .line 755
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 748
    return-void

    .line 752
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 753
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 403
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 399
    :cond_0
    return-void
.end method

.method setNewName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 388
    iput-object p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 392
    :cond_1
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 386
    :cond_2
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 708
    const/4 v0, 0x1

    .line 712
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 705
    return-void

    .line 709
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 710
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1
    .param p1, "rssi"    # S

    .prologue
    .line 441
    iget-short v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 442
    iput-short p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 443
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 440
    :cond_0
    return-void
.end method

.method setSimPermissionChoice(I)V
    .locals 2
    .param p1, "permissionChoice"    # I

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, "permission":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 771
    const/4 v0, 0x1

    .line 775
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 768
    return-void

    .line 772
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 773
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 431
    iput-boolean p1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 432
    invoke-direct {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 429
    :cond_0
    return-void
.end method

.method public startPairing()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 299
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/exsettingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_1
    iput-boolean v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 308
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 322
    .local v1, "state":I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 326
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 328
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 330
    .local v2, "successful":Z
    if-eqz v2, :cond_1

    .line 332
    const-string/jumbo v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/exsettingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "successful":Z
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice$Callback;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/exsettingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 634
    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
